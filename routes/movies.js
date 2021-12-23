const Movies = require('../repositories/movies.js')
const upload = require('../middleware/uploadImage.js')
module.exports = app => {
    app.get('/tv/id/:id',(req,res)=>{
        console.log('entro')
        const id = req.params.id
        console.log(req.params)
        Movies.getById(id)
        .then(response => {
            res.json({response: response})
        })
        .catch(error => {
            res.json({message: error})
        })
    })
    app.get('/tv/genero/:gender', (req, res, next) => {
        const gender = req.params.gender
        Movies.getByGender(gender)
        .then(response => {
            res.json({response: response})
        })
        .catch(error => {
            res.json({message: error})
        })
    })
    app.get('/tv/all', (req,res,next) => {
        Movies.getAll()
            .then(response => {
                res.json({response: response})
            })
            .catch(error => {
                res.json({message: error})
            })
    })
    app.get('/tv/series', (req, res, next) => {
        Movies.getSeries()
            .then(response => {
                res.json({response: response})
            })
            .catch(error => {
                res.json({message: error})
            })
    })
    app.get('/tv/filmes', (req, res, next) => {
        Movies.getFilmes()
            .then(response => {
                res.json({response: response})
            })
            .catch(error => {
                res.json({message: error})
            })
    })
    app.get('/tv/animes', (req, res, next) => {
        Movies.getAnimes()
        .then(response => {
            res.json({response: response})
        })
        .catch(error => {
            res.json({message: error})
        })
    })
    app.post('/tv', (req, res, next) => {
        const body = req.body
        console.log(body)
        Movies.addFilme(body, res)
        
    })

    app.delete('/tv/:id', (req, res, next) => {
        const id = req.params.id
        Movies.deleteMovie(id)
            .then(response => res.json({message: 'deletado com sucesso'}))
    })
    app.patch('/tv/:coluna/:info/:id', (req, res, next) => {
        const coluna = req.params.coluna
        const info = req.params.info
        Movies.updateMovies(coluna,info)
            .then(response => res.json({message: 'Atualizado com sucesso', params: coluna,info}))
    })
    // app.post('/', (req, res, next) => {
    //     const formidable = require('formidable');
    //     const fs = require('fs');
    //     const form = new formidable.IncomingForm();

    //     form.parse(req, (err, fields, files) => {

    //         const path = require('path');
    //         const oldpath = files.filetoupload.path;
    //         const newpath = path.join(__dirname, '..', files.filetoupload.name);
            
    //         fs.renameSync(oldpath, newpath);
    //         res.send('File uploaded and moved!');
    //     });
    // });
}