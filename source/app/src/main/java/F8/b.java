package f8;

import bd.C3867a;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import d8.e;
import d8.j;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@Deprecated
public class b extends C13196a {
    @Override
    public void a(JavaMetaInfo javaMetaInfo, Class classAddress) {
        if (UserController.P()) {
            return;
        }
        for (Field field : classAddress.getDeclaredFields()) {
            try {
                boolean z10 = true;
                if (!Modifier.isStatic(field.getModifiers()) && Modifier.isPublic(field.getModifiers())) {
                    Class<?> type = field.getType();
                    for (int i10 = 0; i10 < j.K0(); i10++) {
                        if (j.J0(i10).f84453b.equals(type.getSimpleName())) {
                            z10 = false;
                        }
                    }
                }
                if (!z10) {
                    e eVar = new e(false);
                    eVar.f84382b = new C3867a("PUBLIC CUSTOM CLASSES", "CLASSES PROPRIAS EST\u00c3O PUBLICAS").toString();
                    eVar.f84383c = 0;
                    eVar.f84381a = new C3867a("Classes that were created in the project are not displayed publicly in the properties panel.\n\nIf you want to display subclasses in the properties panel, then create inner classes in that same script and display them publicly.\nThis prevents the data configured in the component from being lost when the project scripts are recompiled.\n\nError at attribute name [" + field.getName() + "] and type of [" + field.getType().getSimpleName() + "]", "Classes que foram criadas no projeto n\u00e3o s\u00e3o exibidas publicamente no painel de propriedades. \n\nSe quiser exibir sub classes no painel de propriedades, ent\u00e3o crie inner classes nesse mesmo script e exiba publicamente.\nIsso evita que os dados configurados no componente sejam perdidos quando os scripts do projeto s\u00e3o recompilados.\n\nErro no atributo de nome [" + field.getName() + "] e tipo [" + field.getType().getSimpleName() + "]").toString();
                    javaMetaInfo.f72514d.add(eVar);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
