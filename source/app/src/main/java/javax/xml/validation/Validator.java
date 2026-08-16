package javax.xml.validation;

import java.io.IOException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/validation/Validator.class
 */
public abstract class Validator {
    public abstract void reset();

    public abstract void validate(Source source, Result result) throws SAXException, IOException;

    public abstract void setErrorHandler(ErrorHandler errorHandler);

    public abstract ErrorHandler getErrorHandler();

    public abstract void setResourceResolver(LSResourceResolver lSResourceResolver);

    public abstract LSResourceResolver getResourceResolver();

    protected Validator() {
        throw new RuntimeException("Stub!");
    }

    public void validate(Source source) throws SAXException, IOException {
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
}
