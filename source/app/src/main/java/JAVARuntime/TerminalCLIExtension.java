package JAVARuntime;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TerminalCLIExtension.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TerminalCLIExtension.class
  classes.dex
 */
public abstract class TerminalCLIExtension {
    public abstract String getCommand();

    public abstract void start(String[] strArr);

    public abstract void run(String str);

    public String getInfo() {
        return "Custom command";
    }

    public void exit() {
    }

    public void log(Object obj) {
    }

    public void log(String str) {
    }

    public void log(Vector3 vector3) {
    }

    public void log(Quaternion quaternion) {
    }

    public void log(Vector2 vector2) {
    }

    public void log(float f10) {
    }

    public void log(int i10) {
    }

    public void log(long j10) {
    }

    public void log(double d10) {
    }

    public void log(char c10) {
    }

    public void log(byte b10) {
    }

    public void log(Error error) {
    }

    public void log(Exception exc) {
    }

    public void log(Throwable th2) {
    }

    public void log(Log log) {
    }

    public void log(String[] strArr) {
    }

    public void log(List<String> list) {
    }
}
