<div class="modal" tabindex="-1" role="dialog" id="dlgCadastro" data-backdrop="static">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <form class="form-horizontal" id="formCadastroUsuario">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <input type="hidden" id="id" class="form-control">

                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#regional" role="tab" aria-controls="dados_pessoais">Usuario</a>
                        </li>
                    </ul>

                    <div class="tab-content" id="myTabContent">

                        <div class="tab-pane fade show active p-3" id="regional" role="tabpanel" aria-labelledby="one-tab">

                            
                        <div class="card border">
                          <div class="card-body">
                            <form>

                              <div class="row">
                                  
                                  <div class="col-md-6" style="margin-bottom:2%;">
                                    <input type="text" id="nome" class="form-control"  autocomplete="off" placeholder="Nome:" required>
                                  </div>
                                  
                                  <div class="form-group col-md-6" style="margin-bottom:2%;" >
                                            <select id="congregacao" class="form-control"  autocomplete="off" required>
                                            </select>
                                            <div class="invalid-feedback">
                                                Selecione uma opção.
                                            </div>
                                        </div>

                              
                              </div>

                                  <div class="row">
                                  
                                  <div class="col-md-6" style="margin-bottom:2%;">
                                    <input type="email" id="email" class="form-control"  autocomplete="off" placeholder="Email:" required>
                                  </div>
                                    
                                           
                                  <div class="col-md-6" style="margin-bottom:2%;">
                                    <input type="password" id="senha" class="form-control"  autocomplete="off" placeholder="Senha:" required>
                                  </div>
                        
                              </div>
                            
                            </form>
                          </div>
                        </div>


                    </div>

                    <div class="text-right">
                        <button type="cancel" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-primary">Salvar</button>

                    </div>
                  </div>
                </div>
            </form>
        </div>
    </div>
</div>



