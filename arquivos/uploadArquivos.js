const fs = require('fs')
const path = require('path')

module.exports = (caminho, nomeDoArquivo, callbackImagemCriada) => {
     console.log('chegou aq2')
    const tiposValidos = ['jpg', 'png', 'jpeg']
    const tipo = path.extname(caminho)
    const tipoEhValido = tiposValidos.indexOf(tipo.substring(1)) !== -1

    console.log(tipo,tipoEhValido)

    if (tipoEhValido) {
        const novoCaminho = `./assets/${nomeDoArquivo}${tipo}`
        console.log('novocaminho', novoCaminho)
        fs.createReadStream(caminho)
            .pipe(fs.createWriteStream(novoCaminho))
            .on('finish', () => callbackImagemCriada(false, novoCaminho))
    } else {
        const erro = 'Tipo é inválido'
        console.log('Erro! Tipo inválido')
        callbackImagemCriada(erro)
    }
}
