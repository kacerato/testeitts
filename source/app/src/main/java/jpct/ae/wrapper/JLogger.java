package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Logger;

@BA.ShortName("JpctLogger")
public class JLogger extends AbsObjectWrapper<Logger> {
    public static final int DEBUG() {
        return 3;
    }

    public static final int LL_DEBUG() {
        return 3;
    }

    public static final int LL_ERRORS_AND_WARNINGS() {
        return 1;
    }

    public static final int LL_ONLY_ERRORS() {
        return 0;
    }

    public static final int LL_VERBOSE() {
        return 2;
    }

    public static final int MESSAGE() {
        return 2;
    }

    public static final int ON_ERROR_EXIT() {
        return 1;
    }

    public static final int ON_ERROR_RESUME_NEXT() {
        return 0;
    }

    public static final int ON_ERROR_THROW_EXCEPTION() {
        return 2;
    }

    public void Initialize() {
        setObject(new Logger());
    }

    public int getLogLevel() {
        return Logger.getLogLevel();
    }

    public boolean isDebugEnabled() {
        return Logger.isDebugEnabled();
    }

    public void log(String str) {
        Logger.log(str);
    }

    public void log2(String str, int i10) {
        Logger.log(str, i10);
    }

    public void setLogLevel(int i10) {
        Logger.setLogLevel(i10);
    }

    public void setOnError(int i10) {
        Logger.setOnError(i10);
    }

    public void log(Throwable th2) {
        Logger.log(th2);
    }

    public void log(Throwable th2, int i10) {
        Logger.log(th2, i10);
    }
}
