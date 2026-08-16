package java.lang.reflect;

import java.lang.reflect.GenericDeclaration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/TypeVariable.class
 */
public interface TypeVariable<D extends GenericDeclaration> extends Type, AnnotatedElement {
    Type[] getBounds();

    D getGenericDeclaration();

    String getName();

    AnnotatedType[] getAnnotatedBounds();
}
