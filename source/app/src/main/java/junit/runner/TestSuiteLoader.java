package junit.runner;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:junit/runner/TestSuiteLoader.class
 */
public interface TestSuiteLoader {
    Class load(String str) throws ClassNotFoundException;

    Class reload(Class cls) throws ClassNotFoundException;
}
