package org.xmlpull.v1;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xmlpull/v1/XmlPullParserFactory.class
 */
public class XmlPullParserFactory {
    public static final String PROPERTY_NAME = "org.xmlpull.v1.XmlPullParserFactory";
    protected String classNamesLocation;
    protected HashMap<String, Boolean> features;
    protected ArrayList parserClasses;
    protected ArrayList serializerClasses;

    protected XmlPullParserFactory() {
        throw new RuntimeException("Stub!");
    }

    public void setFeature(String name, boolean state) throws XmlPullParserException {
        throw new RuntimeException("Stub!");
    }

    public boolean getFeature(String name) {
        throw new RuntimeException("Stub!");
    }

    public void setNamespaceAware(boolean awareness) {
        throw new RuntimeException("Stub!");
    }

    public boolean isNamespaceAware() {
        throw new RuntimeException("Stub!");
    }

    public void setValidating(boolean validating) {
        throw new RuntimeException("Stub!");
    }

    public boolean isValidating() {
        throw new RuntimeException("Stub!");
    }

    public XmlPullParser newPullParser() throws XmlPullParserException {
        throw new RuntimeException("Stub!");
    }

    public XmlSerializer newSerializer() throws XmlPullParserException {
        throw new RuntimeException("Stub!");
    }

    public static XmlPullParserFactory newInstance() throws XmlPullParserException {
        throw new RuntimeException("Stub!");
    }

    public static XmlPullParserFactory newInstance(String unused, Class unused2) throws XmlPullParserException {
        throw new RuntimeException("Stub!");
    }
}
