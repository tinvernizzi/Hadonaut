extends Sprite


onready var current_chapter = get_node("../../..")
onready var menu = get_node("..")


func _ready():
	go_to_tab("settings")
	$WindowTab.mouse_in_windowtab = false


func _on_WindowTabButton_button_down():
	menu.get_node("MenuClick").play()
	var state = $WindowTabButton.pressed
	$WindowTab.visible = not state


func _on_OutOfWindowTab_pressed():
	menu.get_node("MenuClick").play()
	$WindowTabButton.pressed = false
	$WindowTab.visible = false


func _on_NoButton_pressed():
	$WindowTab.visible = false
	$WindowTabButton.pressed = false


func _on_SaveSystemTabButton_button_down():
	menu.get_node("MenuClick").play()
	go_to_tab("savesystem")


func _on_SettingsTabButton_button_down():
	menu.get_node("MenuClick").play()
	go_to_tab("settings")


func _on_CreditsTabButton_button_down():
	menu.get_node("MenuClick").play()
	go_to_tab("credits")
	$CreditsTab/RichTextLabel.scroll_to_line(0)


func go_to_tab(button_name):
	$WindowTabButton.pressed = false
	$SaveSystemTabButton.disabled = false
	$SettingsTabButton.disabled = false
	$CreditsTabButton.disabled = false
	$WindowTab.visible = false
	$SaveSystemTab.visible = false
	$SettingsTab.visible = false
	$CreditsTab.visible = false
	if button_name == "savesystem":
		$SaveSystemTabButton.disabled = true
		$SaveSystemTab.visible = true
	elif button_name == "settings":
		$SettingsTabButton.disabled = true
		$SettingsTab.visible = true
	elif button_name == "credits":
		$CreditsTabButton.disabled = true
		$CreditsTab.visible = true


func _on_WindowTabButton_mouse_entered():
	menu.get_node("MenuScroll").play()


func _on_SaveSystemTabButton_mouse_entered():
	menu.get_node("MenuScroll").play()


func _on_SettingsTabButton_mouse_entered():
	menu.get_node("MenuScroll").play()


func _on_CreditsTabButton_mouse_entered():
	menu.get_node("MenuScroll").play()



