<div class="modal" tabindex="-1" role="dialog" id="dlgViewAdministrador" data-backdrop="static">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <form class="form-horizontal" id="formAdministrador">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">

                    <input type="hidden" id="id" class="form-control">

                    <ul class="nav nav-tabs" id="viewTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#view_regional" role="tab" aria-controls="dados_pessoais">Regional:</a>
                        </li>
                    </ul>

                    <div class="tab-content" id="viewTabContent" id="formMembro">

                        <div class="tab-pane fade show active p-3" id="view_regional" role="tabpanel" aria-labelledby="one-tab">

                        <div class="card border">
                                <div class="card-body">
                                    <div class="form-row">
                                        
                                    <div class="form-group col-md-6">
                                                <label for="regional">Situação</label>
                                                <label type="text" class="form-control border border-success" id="view_situacao" autocomplete="off"></label>
                                            </div>
                                    
                                            <div class="form-group col-md-6">
                                                <label for="Usuario">Usuario</label>
                                                <label type="text" class="form-control border border-success" id="view_nome" autocomplete="off"></label>
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label for="regional">Congregacao</label>
                                                <label type="text" class="form-control border border-success" id="view_congregacao" autocomplete="off"></label>
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label for="regional">Email</label>
                                                <label type="text" class="form-control border border-success" id="view_email" autocomplete="off"></label>
                                            </div>
                                        </div>
                                     </div>
                                </div>
                            </div>
                      

                             
                        </div>

                    </div>

                    <div class="tab-pane fade p-1" id="familia" role="tabpanel" aria-labelledby="two-tab">
                        <div class="card border">
                            <div class="card-body">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
