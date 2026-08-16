package org.slf4j.helpers;

import org.slf4j.Logger;
import org.slf4j.Marker;

public abstract class MarkerIgnoringBase extends NamedLoggerBase implements Logger {
    private static final long serialVersionUID = 9044267456635152283L;

    @Override
    public void debug(Marker marker, String str) {
        debug(str);
    }

    @Override
    public void error(Marker marker, String str) {
        error(str);
    }

    @Override
    public String getName() {
        return super.getName();
    }

    @Override
    public void info(Marker marker, String str) {
        info(str);
    }

    @Override
    public boolean isDebugEnabled(Marker marker) {
        return isDebugEnabled();
    }

    @Override
    public boolean isErrorEnabled(Marker marker) {
        return isErrorEnabled();
    }

    @Override
    public boolean isInfoEnabled(Marker marker) {
        return isInfoEnabled();
    }

    @Override
    public boolean isTraceEnabled(Marker marker) {
        return isTraceEnabled();
    }

    @Override
    public boolean isWarnEnabled(Marker marker) {
        return isWarnEnabled();
    }

    public String toString() {
        return getClass().getName() + "(" + getName() + ")";
    }

    @Override
    public void trace(Marker marker, String str) {
        trace(str);
    }

    @Override
    public void warn(Marker marker, String str) {
        warn(str);
    }

    @Override
    public void debug(Marker marker, String str, Object obj) {
        debug(str, obj);
    }

    @Override
    public void error(Marker marker, String str, Object obj) {
        error(str, obj);
    }

    @Override
    public void info(Marker marker, String str, Object obj) {
        info(str, obj);
    }

    @Override
    public void trace(Marker marker, String str, Object obj) {
        trace(str, obj);
    }

    @Override
    public void warn(Marker marker, String str, Object obj) {
        warn(str, obj);
    }

    @Override
    public void debug(Marker marker, String str, Object obj, Object obj2) {
        debug(str, obj, obj2);
    }

    @Override
    public void error(Marker marker, String str, Object obj, Object obj2) {
        error(str, obj, obj2);
    }

    @Override
    public void info(Marker marker, String str, Object obj, Object obj2) {
        info(str, obj, obj2);
    }

    @Override
    public void trace(Marker marker, String str, Object obj, Object obj2) {
        trace(str, obj, obj2);
    }

    @Override
    public void warn(Marker marker, String str, Object obj, Object obj2) {
        warn(str, obj, obj2);
    }

    @Override
    public void debug(Marker marker, String str, Object... objArr) {
        debug(str, objArr);
    }

    @Override
    public void error(Marker marker, String str, Object... objArr) {
        error(str, objArr);
    }

    @Override
    public void info(Marker marker, String str, Object... objArr) {
        info(str, objArr);
    }

    @Override
    public void trace(Marker marker, String str, Object... objArr) {
        trace(str, objArr);
    }

    @Override
    public void warn(Marker marker, String str, Object... objArr) {
        warn(str, objArr);
    }

    @Override
    public void debug(Marker marker, String str, Throwable th2) {
        debug(str, th2);
    }

    @Override
    public void error(Marker marker, String str, Throwable th2) {
        error(str, th2);
    }

    @Override
    public void info(Marker marker, String str, Throwable th2) {
        info(str, th2);
    }

    @Override
    public void trace(Marker marker, String str, Throwable th2) {
        trace(str, th2);
    }

    @Override
    public void warn(Marker marker, String str, Throwable th2) {
        warn(str, th2);
    }
}
