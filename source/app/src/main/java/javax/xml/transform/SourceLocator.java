package javax.xml.transform;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/transform/SourceLocator.class
 */
public interface SourceLocator {
    String getPublicId();

    String getSystemId();

    int getLineNumber();

    int getColumnNumber();
}
