# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$ ->

	$('form').submit ->

		documen = $('#user_document_number').val()
		redocument = $('#confirm_document_number').val()

		if documen != redocument
			alert 'Los numeros de documento no coinciden'
			return false

		pass = $('#user_password').val()
		repass = $('#repass').val()

		if pass != repass
			alert 'Los password no coinciden'
			return false
