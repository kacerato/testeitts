package android.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/util/Xml.class
 */
public class Xml {
    public static String FEATURE_RELAXED;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/util/Xml$Encoding.class
 */
    public enum Encoding {
        ISO_8859_1,
        US_ASCII,
        UTF_16,
        UTF_8
    }

    Xml() {
        throw new RuntimeException("Stub!");
    }

    public static void parse(String xml, ContentHandler contentHandler) throws SAXException {
        throw new RuntimeException("Stub!");
    }

    public static void parse(Reader in2, ContentHandler contentHandler) throws IOException, SAXException {
        throw new RuntimeException("Stub!");
    }

    public static void parse(InputStream in2, Encoding encoding, ContentHandler contentHandler) throws IOException, SAXException {
        throw new RuntimeException("Stub!");
    }

    public static XmlPullParser newPullParser() {
        throw new RuntimeException("Stub!");
    }

    public static XmlSerializer newSerializer() {
        throw new RuntimeException("Stub!");
    }

    public static Encoding findEncodingByName(String encodingName) throws UnsupportedEncodingException {
        throw new RuntimeException("Stub!");
    }

    public static AttributeSet asAttributeSet(XmlPullParser parser) {
        throw new RuntimeException("Stub!");
    }
}
