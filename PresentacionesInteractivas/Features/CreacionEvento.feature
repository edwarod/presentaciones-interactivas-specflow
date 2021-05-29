Feature: CreacionEvento
	Como usuario quiero crear un evento que pueda contener una o varias presentaciones interactivas para invitar a un conunto de personas

@mytag
Scenario: Crear un evento presenta el formulario de acceso
	Given un navegador web en la landing page de presentaciones interactivas
	When Se selecciona la opcion de crear presentacion interactiva
	Then Se muestra el formulario de creacion con datos basicos

Scenario: Guardar un formulario con los datos minimos
	Given un navegador web en la landing page de presentaciones interactivas
	And Se selecciona la opcion de crear presentacion interactiva
	And Se muestra el formulario de creacion con datos basicos
	And Se dligencian los datos minimos del
	When Se confirma el fomulario 
	Then Se muestra mensaje "El evento ha sido creado"
	And Se muuestra la pantalla de evento

Scenario: Guardar un formulario incompleto
	Given un navegador web en la landing page de presentaciones interactivas
	And Se selecciona la opcion de crear presentacion interactiva
	And Se muestra el formulario de creacion con datos basicos
	When Se confirma el fomulario sin diligenciar
	Then Se muestra mensaje "Diligencie los datos minimos del formulario"