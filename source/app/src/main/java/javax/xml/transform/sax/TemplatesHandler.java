package javax.xml.transform.sax;

import javax.xml.transform.Templates;
import org.xml.sax.ContentHandler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/transform/sax/TemplatesHandler.class
 */
public interface TemplatesHandler extends ContentHandler {
    Templates getTemplates();

    void setSystemId(String str);

    String getSystemId();
}
