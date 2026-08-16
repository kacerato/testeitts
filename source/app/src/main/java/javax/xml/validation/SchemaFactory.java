package javax.xml.validation;

import java.io.File;
import java.net.URL;
import javax.xml.transform.Source;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/validation/SchemaFactory.class
 */
public abstract class SchemaFactory {
    public abstract boolean isSchemaLanguageSupported(String str);

    public abstract void setErrorHandler(ErrorHandler errorHandler);

    public abstract ErrorHandler getErrorHandler();

    public abstract void setResourceResolver(LSResourceResolver lSResourceResolver);

    public abstract LSResourceResolver getResourceResolver();

    public abstract Schema newSchema(Source[] sourceArr) throws SAXException;

    public abstract Schema newSchema() throws SAXException;

    protected SchemaFactory() {
        throw new RuntimeException("Stub!");
    }

    public static SchemaFactory newInstance(String schemaLanguage) {
        throw new RuntimeException("Stub!");
    }

    public static SchemaFactory newInstance(String schemaLanguage, String factoryClassName, ClassLoader classLoader) {
        throw new RuntimeException("Stub!");
    }

    public boolean getFeature(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    public void setFeature(String name, boolean value) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    public void setProperty(String name, Object object) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    public Object getProperty(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        throw new RuntimeException("Stub!");
    }

    public Schema newSchema(Source schema) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    public Schema newSchema(File schema) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    public Schema newSchema(URL schema) throws SAXException {
        throw new RuntimeException("Stub!");
    }
}
