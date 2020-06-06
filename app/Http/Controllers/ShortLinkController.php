<?php
  
namespace App\Http\Controllers;
   
use Illuminate\Http\Request;
use App\ShortLink;
use Illuminate\Support\Facades\URL;
use Validator;
use Illuminate\Support\Str;


  
class ShortLinkController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $shortLinks = ShortLink::latest()->get();
   
        return view('shortenLink', compact('shortLinks'));
    }
     
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    
        $request->validate([
           
        ]);
        $customMessages = [
            'link.required' => 'Link is required field',
            // 'link.url'=>'Enter valid Url'
        ];
        $rules = [
            // 'link' => 'required|url'
            'link' => 'required'
        ];  
        $validator = Validator::make( $request->all(), $rules, $customMessages );
        if ( $validator->fails() ){
            return array('status'=>'fail','message'=>$validator->errors()->first());
        }
        else{
            $validation=$this->validate($request, $rules, $customMessages);
            $link=url('').'/'.$request->link;
            if(ShortLink::where('link',$link)->count()>0){
                return array('status'=>'fail','message'=>'Short URL Exist for this link');
            }
            else{
                $uuid = Str::random(9);
                $input['link'] = $link;
                $input['code'] = url('').'/'.$uuid;
                ShortLink::create($input);
               if(ShortLink::latest()->count()>0){
                    $shortLinks = ShortLink::latest()->get();
                    $pkt='<table class="table table-bordered table-sm">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Short Link</th>
                            <th>Link</th>
                        </tr>
                    </thead>
                    <tbody >';
                    foreach($shortLinks as $row){
                     $pkt.="<tr>
                                <td> ".$row->id." </td>
                                <td> ".$row->code." </td>
                                <td> $row->link </td>
                            </tr>";
                    }
                    $pkt.="</tbody></table>";
                    return array('status'=>'success','message'=>'Shorten Link Generated Successfully','data'=>$pkt);
               }
                //  return array('status'=>'success','message'=>'Shorten Link Generated Successfully');
            }
        }
    }
    public function stores(Request $request){

        echo "xyz";exit;
    }
   
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function shortenLink($code)
    {
        echo "abcde2";
        exit;
        $find = ShortLink::where('code', $code)->first();
   
        return redirect($find->link);
    }
}