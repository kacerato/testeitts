package f8;

import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

@Deprecated
public class c extends C13196a {
    @Override
    public void a(JavaMetaInfo javaMetaInfo, Class classAddress) {
        if (javaMetaInfo.f72515e.equals("R") || javaMetaInfo.f72515e.startsWith("_I")) {
            return;
        }
        Field[] declaredFields = classAddress.getDeclaredFields();
        for (Field field : declaredFields) {
            try {
                if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()) && !field.getType().isPrimitive()) {
                    field.getType();
                }
                field.isEnumConstant();
                field.getType().isEnum();
                field.getName().contains("$SWITCH_TABLE$");
                field.getName().contains("ENUM$VALUES");
                field.getName().contains("invocationHandler$");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
