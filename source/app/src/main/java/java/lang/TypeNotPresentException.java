package java.lang;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/TypeNotPresentException.class
 */
public class TypeNotPresentException extends RuntimeException {
    private static final long serialVersionUID = -5101214195716534496L;
    private String typeName;

    public TypeNotPresentException(String typeName, Throwable cause) {
        super("Type " + typeName + " not present", cause);
        this.typeName = typeName;
    }

    public String typeName() {
        return this.typeName;
    }
}
