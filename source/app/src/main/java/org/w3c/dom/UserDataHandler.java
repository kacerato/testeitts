package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/UserDataHandler.class
 */
public interface UserDataHandler {
    public static final short NODE_ADOPTED = 5;
    public static final short NODE_CLONED = 1;
    public static final short NODE_DELETED = 3;
    public static final short NODE_IMPORTED = 2;
    public static final short NODE_RENAMED = 4;

    void handle(short s10, String str, Object obj, Node node, Node node2);
}
