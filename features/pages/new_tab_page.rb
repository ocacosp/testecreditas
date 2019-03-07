#Classe para declaração de elementos da tela
class NewTab < SitePrism::Page
    set_url 'https://the-internet.herokuapp.com/windows'
    
    element :link, :xpath, "//a[@href = '/windows/new']"
 
#Definição de funções aplicando as regras de validação       
    def validarTextoHomePage()
        assert_text('Opening a new window')
    end

    def clicarNoLink()
        link.click
    end

    def validarNovaAba()
        window = page.driver.browser.window_handles
        page.driver.browser.switch_to.window(window.last)
        assert_text('New Window')
    end

end