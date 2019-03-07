#Classe para declaração de elementos da tela
class DynamicControls < SitePrism::Page
    set_url 'https://the-internet.herokuapp.com/dynamic_controls'

    element :checkbox, :xpath, "//input[@type = 'checkbox']"
    element :btnRemover, :xpath, "//button[text() = 'Remove']"
    element :btnAdd, :xpath, "//button[text() = 'Add']"
    element :btnEnable, :xpath, "//button[text() = 'Enable']"
    element :validarCampo, :xpath, "//input[@type = 'text']"
    element :btnDisable, :xpath, "//button[text() = 'Disable']"
    element :btnAdd, :xpath, "//button[text() = 'Add']"

#Definição de funções aplicando as regras de validação
    def validarTextoHomePage()
        assert_text('Dynamic Controls')
    end

    def selecionarCheckbox()
        checkbox.click
    end

    def clicarBotaoRemover()
        btnRemover.click
    end

    def validarTextoBtnRemover()
        assert_text('gone!')
    end

    def clicarBotaoAdd()
        btnAdd.click
    end

    def validarTextoAdd()
        assert_text('back!')
    end

    def clicarBotaoEnable()
        btnEnable.click
    end

    def validarCampoHabilitado()
        wait_until_validarCampo_visible
        assert_text('enabled!')
    end

    def clicarBotaoDisable()
        btnDisable.click
    end

    def validarCampoInibido()
        wait_until_validarCampo_visible
        assert_text('disabled!')
    end

end