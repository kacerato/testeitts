package javax.sql;

import java.util.EventListener;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/StatementEventListener.class
 */
public interface StatementEventListener extends EventListener {
    void statementClosed(StatementEvent statementEvent);

    void statementErrorOccurred(StatementEvent statementEvent);
}
