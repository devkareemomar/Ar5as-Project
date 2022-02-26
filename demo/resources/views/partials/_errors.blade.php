@if ($errors->any())
<div class="bs-component">
    <div class="alert alert-danger alert-dismissible ">
        @foreach ($errors->all() as $error)
            <button class="close" type="button" data-dismiss="alert">×</button><strong>{{ $error }}!</strong>
        @endforeach
    </div>
</div>  
@endif