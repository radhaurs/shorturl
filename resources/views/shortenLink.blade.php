<!DOCTYPE html>
<html>
<head>
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Url Shortening</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>

</head>
<body>
   
<div class="container">
    <h1>This is demo to show Shortening the url, this is an interview assignment.<br>
    Ex input :/abc/abc/abc <br>
     actual_link http://localhost/urlshortening/public/abc/abc/abc 
     short_link: http://localhost/urlshortening/public/anTa9VDtT</h1>
     <div id='errordisplay'>
     </div>
    <div class="card">
      <div class="card-header">
        <form method="POST" id='urlshortenform' >
            @csrf
            <div class="input-group mb-3">
              <input type="text" name="link" id="link" class="form-control" placeholder="Enter URL" aria-label="Recipient's username" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-success" type="submit">Generate Shorten Link</button>
              </div>
            </div>
        </form>
      </div>
      <div class="card-body">
   
            @if (Session::has('success'))
                <div class="alert alert-success">
                    <p>{{ Session::get('success') }}</p>
                </div>
            @endif
            
        <div id='ajaxRows'> 
            <table class="table table-bordered table-sm">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Short Link</th>
                        <th>Link</th>
                    </tr>
                </thead>
                <tbody >
                    @foreach($shortLinks as $row)
                        <tr>
                            <td>{{ $row->id }}</td>
                            <td>{{ $row->code }}</a></td>
                            <td>{{ $row->link }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
      </div>
    </div>
   
</div>
   <script>
 $( document ).ready(function() {

    
    $('#urlshortenform').on('submit',function(e) {
        e.preventDefault();
        var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
        var link = $('#link').val();
        $.ajax({
            url: "{{ url('/post-shorten-link') }}",
            type: 'POST',
            data: {_token: CSRF_TOKEN,'link':link},
            dataType: 'JSON',
            success: function (data) {
                console.log(data.status);
                console.log(data.message);
                if(data.status=='fail'){
                    $('#errordisplay').html("<div class='alert alert-danger'><p>"+data.message+"</p></div>");
                   
                }
                else{
                
                    $('#ajaxRows').html(data.data);
                }
            }
        });
    });


});
   </script> 
</body>
</html>