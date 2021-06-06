Feature: CreacionSlideBienvenida
	Como usuario quiero crear un slide de Bienvenida que contenga espacios para diligenciar el título de la presentación para dar la bienvenida a los usuarios que 

@mytag
Scenario: Crear slide de bienvenida
	Given un navegador web en la pagina presentación interactiva
	When Se selecciona la opcion de crear una nuevo slide de bienvenida
	Then Se muestra el nuevo slide en blanco
	And Se muestra un area de texto en el centro para diligenciar el título de la presentacion

Scenario: Sugerir Layout para Slide de bienvenida
	Given un navegador web en la  pagina presentación interactiva
	And Se selecciona la opcion de crear una nuevo slide de bienvenida
	When Se muestra el nuevo slide en blanco
	Then Se presenta una barra lateral con sugerencias de layout para el slide de bienvenida

Scenario: Aplicar Layout escogido para Slide de bienvenida
	Given un navegador web en la pagina presentación interactiva
	And Se selecciona la opcion de crear una nuevo slide de bienvenida
	And Se muestra el nuevo slide en blanco
	And Se presenta una barra lateral con sugerencias de layout para el slide de bienvenida
	Then Se aplica el Layout seleccionado
	And Se mantiene la informacion existente en el slide