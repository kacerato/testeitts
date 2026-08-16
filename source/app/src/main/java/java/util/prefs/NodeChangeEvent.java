package java.util.prefs;

import java.util.EventObject;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/prefs/NodeChangeEvent.class
 */
public class NodeChangeEvent extends EventObject {
    public NodeChangeEvent(Preferences parent, Preferences child) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public Preferences getParent() {
        throw new RuntimeException("Stub!");
    }

    public Preferences getChild() {
        throw new RuntimeException("Stub!");
    }
}
