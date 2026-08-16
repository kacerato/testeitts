package android.content.res;

import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/res/XmlResourceParser.class
 */
public interface XmlResourceParser extends XmlPullParser, AttributeSet, AutoCloseable {
    @Override
    void close();
}
