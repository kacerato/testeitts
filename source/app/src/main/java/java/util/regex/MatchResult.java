package java.util.regex;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/regex/MatchResult.class
 */
public interface MatchResult {
    int start();

    int start(int i10);

    int end();

    int end(int i10);

    String group();

    String group(int i10);

    int groupCount();
}
