<?php


class lista {
    public function addLista($email,$descricao) {
        try {
            
        $sql = "Insert into lista Values (?,?,?)";
        
        $stmt = Conexao::getConexao()->prepare($sql);
        
        $stmt->bindValue(1,'0');
        $stmt->bindValue(2,$descricao);
        $stmt->bindValue(3,$email);
        
        $stmt->execute();
        
        return true;
            
        } catch (Exception $ex) {
            
            return false;
            
        }
        
    }
        
}
