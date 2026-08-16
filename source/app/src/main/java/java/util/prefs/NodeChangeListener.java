package java.util.prefs;

import java.util.EventListener;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/prefs/NodeChangeListener.class
 */
public interface NodeChangeListener extends EventListener {
    void childAdded(NodeChangeEvent nodeChangeEvent);

    void childRemoved(NodeChangeEvent nodeChangeEvent);
}
