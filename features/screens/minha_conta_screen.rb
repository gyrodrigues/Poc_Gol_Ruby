

class MinhaConta < BasicScreen

    def initialize
        @cadastre_se = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView'
    end

    def cadastrar_novo_usuario
        element_exist @cadastre_se
        click_xpath @cadastre_se
    end

 end
 