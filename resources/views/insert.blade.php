@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Penduduk</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addPendudukModal" class="btn btn-success" data-toggle="modal">Add New Penduduk</span></a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th style="width:20%">Nama</th>
                    <th style="width:7%">Umur</th>
                    <th style="width:38%">Alamat</th>
                    <th style="width:10%">Negara</th>
                    <th style="width:15%">Pekerjaan</th>
                    <th style="width:10%">Actions</th>
                </tr>
                </thead>
                <tbody>
                @foreach($dataPenduduk as $dP)
                    <tr>
                        <td>{{$dP->nama}}</td>
                        <td>{{$dP->umur}} Tahun</td>
                        <td>{{$dP->alamat}}</td>
                        <td>{{$dP->negara}}</td>
                        <td>{{$dP->pekerjaan}}</td>
                        <td>
                            <a href="#editPendudukModal{{$dP->id}}" class="btn btn-warning" data-toggle="modal" style="color:white;">Edit</a>
                            <a href="#deletePendudukModal{{$dP->id}}" class="btn btn-danger" data-toggle="modal" style="color:white;">Delete</a>
                        </td>

                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <!----Add Categories--->
    <div class="modal fade" id="addPendudukModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Penduduk</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="{{route('add.penduduk')}}">
                        @csrf
                        <div class="input-group mb-3 row">
                            <label for="nama" class="col-sm-4 col-form-label text-md-right">{{ __('Nama') }}</label>
                            <div class="col-sm-8">
                                <input id="nama" type="text" class="form-control" name="nama" value="" required autocomplete="nama" autofocus>
                            </div>
                        </div>
                        <div class="input-group mb-3 row">
                            <label for="umur" class="col-sm-4 col-form-label text-md-right">{{ __('Umur') }}</label>
                            <div class="col-sm-8">
                                <input id="umur" type="number" class="form-control" name="umur" value="" required autofocus>
                            </div>
                        </div>
                        <div class="input-group mb-3 row">
                            <label for="alamat" class="col-sm-4 col-form-label text-md-right">{{ __('Alamat') }}</label>
                            <div class="col-sm-8">
                                <textarea id="alamat" name="alamat" placeholder="Alamat" class="form-control" aria-label="With textarea" required autofocus></textarea>
                            </div>
                        </div>
                        <div class="input-group mb-3 row">
                            <label for="negara" class="col-sm-4 col-form-label text-md-right">{{_('Negara')}}</label>
                            <div class="col-sm-8">
                                <select name="negara" id="negara" class="form-control">
                                    <option value="Indonesia">Indonesia</option>
                                    <option value="Singapura">Singapura</option>
                                    <option value="Malaysie">Malaysia</option>
                                    <option value="Vietnam">Vietnam</option>
                                    <option value="Laos">Laos</option>
                                    <option value="Brunei Darussalam">Brunei Darussalam</option>
                                    <option value="Papua New Guinea">Papua New Guinea</option>
                                    <option value="Thailand">Thailand</option>
                                    <option value="Filipina">Filipina</option>
                                    <option value="Kamboja">Kamboja</option>
                                    <option value="Myanmar">Myanmar</option>
                                    <option value="Timor Leste">Timor Leste</option>
                                </select>
                            </div>
                        </div>
                        <div class="input-group mb-3 row">
                            <label for="pekerjaan" class="col-sm-4 col-form-label text-md-right">{{ __('Pekerjaan') }}</label>
                            <div class="col-sm-8">
                                <input id="pekerjaan" type="text" class="form-control" name="pekerjaan" value="" required autocomplete="pekerjaan" autofocus>
                            </div>
                        </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">
                        {{ __('Tambahkan Penduduk') }}
                    </button>
                </div>
                </form>
            </div>
        </div>
    </div>


    @foreach($dataPenduduk as $dPP)
        <!----Edit Penduduk--->
        <div class="modal fade" id="editPendudukModal{{$dPP->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Update Penduduk</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="POST" action="{{route('update.penduduk')}}">
                            @csrf
                            <input type="hidden" name="id" value="{{ $dPP->id }}"><br/>
                            <div class="input-group mb-3 row">
                                <label for="nama" class="col-sm-4 col-form-label text-md-right">{{ __('Nama') }}</label>
                                <div class="col-sm-8">
                                    <input id="nama" type="text" class="form-control" name="nama" value="{{$dPP->nama}}" required autocomplete="nama" autofocus>
                                </div>
                            </div>
                            <div class="input-group mb-3 row">
                                <label for="umur" class="col-sm-4 col-form-label text-md-right">{{ __('Umur') }}</label>
                                <div class="col-sm-8">
                                    <input id="umur" type="number" class="form-control" name="umur" value="{{$dPP->umur}}" required autofocus>
                                </div>
                            </div>
                            <div class="input-group mb-3 row">
                                <label for="alamat" class="col-sm-4 col-form-label text-md-right">{{ __('Alamat') }}</label>
                                <div class="col-sm-8">
                                    <textarea id="alamat" name="alamat" placeholder="Alamat" class="form-control" aria-label="With textarea" required autofocus>{{$dPP->alamat}}</textarea>
                                </div>
                            </div>
                            <div class="input-group mb-3 row">
                                <label for="negara" class="col-sm-4 col-form-label text-md-right">{{_('Negara')}}</label>
                                <div class="col-sm-8">
                                    <select name="negara" id="negara" class="form-control">
                                        <option value="Indonesia">Indonesia</option>
                                        <option value="Singapura">Singapura</option>
                                        <option value="Malaysie">Malaysia</option>
                                        <option value="Vietnam">Vietnam</option>
                                        <option value="Laos">Laos</option>
                                        <option value="Brunei Darussalam">Brunei Darussalam</option>
                                        <option value="Papua New Guinea">Papua New Guinea</option>
                                        <option value="Thailand">Thailand</option>
                                        <option value="Filipina">Filipina</option>
                                        <option value="Kamboja">Kamboja</option>
                                        <option value="Myanmar">Myanmar</option>
                                        <option value="Timor Leste">Timor Leste</option>
                                    </select>
                                </div>
                            </div>
                            <div class="input-group mb-3 row">
                                <label for="pekerjaan" class="col-sm-4 col-form-label text-md-right">{{ __('Pekerjaan') }}</label>
                                <div class="col-sm-8">
                                    <input id="pekerjaan" type="text" class="form-control" name="pekerjaan" value="{{$dPP->pekerjaan}}" required autocomplete="pekerjaan" autofocus>
                                </div>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">
                            {{ __('Update Data') }}
                        </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!----Delete Penduduk--->
        <div class="modal fade" id="deletePendudukModal{{$dPP->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Delete Penduduk</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Are you really want to delete this data? {{$dPP->nama}} ?</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-danger" href="/penduduk/delete/{{$dPP->id}}">Delete</a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
@endsection
