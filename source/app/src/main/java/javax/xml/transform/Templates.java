package javax.xml.transform;

import java.util.Properties;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/transform/Templates.class
 */
public interface Templates {
    Transformer newTransformer() throws TransformerConfigurationException;

    Properties getOutputProperties();
}
