
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        
        include './model/Conexao.php';
        include './model/produto.php';
        include './model/usuario.php';
        include './model/lista.php';
        
        //$u = new usuario();
        //echo $u->validaUsuario('a@a', 'a');
        //print_r($u->recebeUsuario('a@a'));
        //print_r($u->recebeUsuarioPorCampo('nome','a'));
        //print_r($u->recebeUsuarios());
        //print_r($u->addUsuario('r@r','r',1));
        
       
        
        //$p = new produto;
        //print_r($p->recebeProdutos());
        
        
        $l = new lista();
        //print_r($l->addLista('a@a.com','lista de presentes'));
        //echo $l->removeLista('a@a.com');
        //print_r($l->getLista('teste@teste.com'));
        
        //echo $l->addItem('teste@teste.com', 2);
        
        //echo $l->removeItem(1,1);

        //print_r($l->getItens(4));
       print_r($l->getItensUsuario('r@r'));
        
        
        echo 'aqui';
        
        //var_dump(Conexao::getConexao());
        
        
        
        
        
        ?>
    </body>
</html>
