package javax.xml.validation;

import org.w3c.dom.TypeInfo;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/validation/TypeInfoProvider.class
 */
public abstract class TypeInfoProvider {
    public abstract TypeInfo getElementTypeInfo();

    public abstract TypeInfo getAttributeTypeInfo(int i10);

    public abstract boolean isIdAttribute(int i10);

    public abstract boolean isSpecified(int i10);

    protected TypeInfoProvider() {
        throw new RuntimeException("Stub!");
    }
}
