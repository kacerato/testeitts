package java.util.logging;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/logging/LoggingMXBean.class
 */
public interface LoggingMXBean {
    List<String> getLoggerNames();

    String getLoggerLevel(String str);

    void setLoggerLevel(String str, String str2);

    String getParentLoggerName(String str);
}
