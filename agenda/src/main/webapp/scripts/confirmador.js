/**
 * Confirmacao de exclusao de um contato
 *
 * @author Bruno Guimaraes
 * @param idcon
 */
 
 function confirmar(idcon) {
 	let resposta = confirm("Confirmar a exclusão deste contato?")
 	if (resposta === true) window.location.href="delete?idcon=" + idcon
 }