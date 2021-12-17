const query = require('../infrastructure/queries')

class CreateTable{
    init(conexao){
        console.log('Tabelas foram chamadas!')
        this.conexao = conexao
        this.createTableDB()
    }
    createTableDB(){
        const sql = 'CREATE TABLE IF NOT EXISTS movies_table (id int NOT NULL AUTO_INCREMENT, name varchar(255), category varchar(255) NOT NULL, path varchar(255) NOT NULL, description varchar(350), tipo varchar(15), status varchar(15), PRIMARY KEY(id));'
        return query(sql)
    }
   
}

module.exports = new CreateTable