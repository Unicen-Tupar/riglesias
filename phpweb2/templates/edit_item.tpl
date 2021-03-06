

  <div class="row">
    <div class="page-header">
      <h1>Administrador de Contenido</h1>
    </div>

{foreach from=$producto item=product}
  <input id="edit-cat" type="hidden" value="{$product['categoria']}">
  <input id="edit-id" type="hidden" value="{$product['id']}">
  <input id="edit-nombre" type="hidden" value="{$product['nombre']}">
  <input id="edit-precio" type="hidden" value="{$product['precio']}">
  <input id="edit-stock" type="hidden" value="{$product['stock']}">
  <input id="edit-desc" type="hidden" value="{$product['descripcion']}">
{/foreach}

    <form action="" method="POST" enctype="multipart/form-data" id="FormNewProd">

                      <div class="form-group">
                        <label for="exampleInputEmail1">Categoria</label>
                        <select name="cat" id="newprod-cat" class="form-control">
                          <option value="" disabled selected>- Elija categoria -</option>
                          <option value="carpa">Carpa</option>
                          <option value="cania">Caña de pescar</option>
                          <option value="kayak">Kayaks</option>
                        </select>
                      </div>

                      <div class="form-group">
                        <label for="nombre-prod">Id</label>
                        <span>{$product['id']}</span>
                        <input type="hidden" class="form-control" id="id-prod" name="id"  placeholder="10089">
                      </div>

                      <div class="form-group">
                        <label for="nombre-prod">Nombre</label>
                        <input type="text" class="form-control" id="nombre-prod" name="nombre" placeholder="Lampara 10W para camping">
                      </div>

                      <div class="form-group">
                        <label for="precio-prod">Precio</label>
                        <input type="text" class="form-control" id="precio-prod" name="precio" placeholder="9999.99">
                      </div>

                      <div class="form-group">
                        <label for="precio-prod">Stock</label>
                        <input type="text" class="form-control" id="stock-prod" name="stock" placeholder="144">
                      </div>

                      <div class="form-group">
                        <div class="row">
                          {foreach from=$imagenes item=imagen}
                            <div class="col-sm-3 col-md-3">
                              <img src="../{$imagen['imgsrc']}" alt="" class="img-thumbnail"/>
                            </div>
                          {/foreach}
                        </div>
                      </div>


                      <!-- <div class="form-group">
                        <label for="precio-prod">Imagenes</label>
                        <input type="file" name="image[]" id="image" multiple>
                      </div> -->

                      <div class="form-group">
                        <label for="desc-prod">Descripción</label>
                        <textarea class="form-control" id="desc-prod" name="descr" placeholder="Descripcion del producto" rows="3" maxlength="1000"></textarea>
                      </div>

                    <button type="submit" id="btnAddItem" class="btn btn-primary">Guardar Cambios</button>
  </form>

  </div>
