const multer = require('multer')
console.log('entrou multer')

module.exports = (multer({
    storage: multer.diskStorage({
        destination: (req, file, callback) => {
            callback(null,'./public/upload/movies')
        },
        filename: (req, file, callback2) => {
            callback2(null, Date.now().toString + "_" + file.originalname)
        }
    }),
    fileFilter: (req, file, callbackfile) => {
        const extensaoIMG = ['image/png', 'image/jpg', 'image/jpeg'].find(formatoAceito => formatoAceito == file.mimetype)

        if (extensaoIMG) { return callbackfile(null, true) }
        return callbackfile(null,false)
        
    }
}))