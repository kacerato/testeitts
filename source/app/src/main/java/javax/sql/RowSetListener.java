package javax.sql;

import java.util.EventListener;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/RowSetListener.class
 */
public interface RowSetListener extends EventListener {
    void rowSetChanged(RowSetEvent rowSetEvent);

    void rowChanged(RowSetEvent rowSetEvent);

    void cursorMoved(RowSetEvent rowSetEvent);
}
