package org.xmlpull.v1;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xmlpull/v1/XmlPullParser.class
 */
public interface XmlPullParser {
    public static final int CDSECT = 5;
    public static final int COMMENT = 9;
    public static final int DOCDECL = 10;
    public static final int END_DOCUMENT = 1;
    public static final int END_TAG = 3;
    public static final int ENTITY_REF = 6;
    public static final String FEATURE_PROCESS_DOCDECL = "http://xmlpull.org/v1/doc/features.html#process-docdecl";
    public static final String FEATURE_PROCESS_NAMESPACES = "http://xmlpull.org/v1/doc/features.html#process-namespaces";
    public static final String FEATURE_REPORT_NAMESPACE_ATTRIBUTES = "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes";
    public static final String FEATURE_VALIDATION = "http://xmlpull.org/v1/doc/features.html#validation";
    public static final int IGNORABLE_WHITESPACE = 7;
    public static final String NO_NAMESPACE = "";
    public static final int PROCESSING_INSTRUCTION = 8;
    public static final int START_DOCUMENT = 0;
    public static final int START_TAG = 2;
    public static final int TEXT = 4;
    public static final String[] TYPES = null;

    void setFeature(String str, boolean z10) throws XmlPullParserException;

    boolean getFeature(String str);

    void setProperty(String str, Object obj) throws XmlPullParserException;

    Object getProperty(String str);

    void setInput(Reader reader) throws XmlPullParserException;

    void setInput(InputStream inputStream, String str) throws XmlPullParserException;

    String getInputEncoding();

    void defineEntityReplacementText(String str, String str2) throws XmlPullParserException;

    int getNamespaceCount(int i10) throws XmlPullParserException;

    String getNamespacePrefix(int i10) throws XmlPullParserException;

    String getNamespaceUri(int i10) throws XmlPullParserException;

    String getNamespace(String str);

    int getDepth();

    String getPositionDescription();

    int getLineNumber();

    int getColumnNumber();

    boolean isWhitespace() throws XmlPullParserException;

    String getText();

    char[] getTextCharacters(int[] iArr);

    String getNamespace();

    String getName();

    String getPrefix();

    boolean isEmptyElementTag() throws XmlPullParserException;

    int getAttributeCount();

    String getAttributeNamespace(int i10);

    String getAttributeName(int i10);

    String getAttributePrefix(int i10);

    String getAttributeType(int i10);

    boolean isAttributeDefault(int i10);

    String getAttributeValue(int i10);

    String getAttributeValue(String str, String str2);

    int getEventType() throws XmlPullParserException;

    int next() throws XmlPullParserException, IOException;

    int nextToken() throws XmlPullParserException, IOException;

    void require(int i10, String str, String str2) throws XmlPullParserException, IOException;

    String nextText() throws XmlPullParserException, IOException;

    int nextTag() throws XmlPullParserException, IOException;
}
