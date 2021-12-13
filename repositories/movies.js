const conexao = require('../infrastructure/conexao.js')
const uploadArquivos = require('../arquivos/uploadArquivos')
const query = require('../infrastructure/queries')

class Movies {
    addFilme(body, res) {
        console.log('chegou aq')
        const query = `INSERT INTO movies_table SET ?;`
        const novoFilme = { name: body.name, path: body.path, category: body.category }
        conexao.query(query, novoFilme, erro => {
            if (erro) {
                console.log(erro)
                res.status(400).json(erro)
            } else {
                res.status(200).json(novoFilme)
            }
        })
       
        // uploadArquivos(body.path, body.name, (erro, novoCaminho) => {
        //     console.log('chegou aq')
        //     if (erro) {
        //         res.status(400).json({ erro })
        //     } else {
        //         const novoFilme = { name: body.name, path: novoCaminho, category: body.category }
        //         console.log(novoCaminho)
        //         console.log(novoFilme)
        //         conexao.query(query, novoFilme, erro => {
        //             if (erro) {
        //                 console.log(erro)
        //                 res.status(400).json(erro)
        //             } else {
        //                 res.status(200).json(novoFilme)
        //             }
        //         })
        //     }
        // })
    }
    getFilmes() {
        const sql = 'SELECT * FROM movies_table;'
        return query(sql)
    }
    deleteMovie(id) {
        const sql = `DELETE FROM movies_table WHERE id = '${id}';`
        return query(sql)
    }
    updateMovies(coluna, info,id) {
        const sql = `UPDATE movies_table SET ${coluna} = "${info}" WHERE id = '${id}';`
        return query(sql)
    }
}

module.exports = new Movies