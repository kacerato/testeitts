package com.github.anrwatchdog;

import java.io.Serializable;

public class ANRError$$ implements Serializable {
    private final String _name;
    private final StackTraceElement[] _stackTrace;

    public class _Thread extends Throwable {
        @Override
        public Throwable fillInStackTrace() {
            setStackTrace(ANRError$$.this._stackTrace);
            return this;
        }

        private _Thread(_Thread _thread) {
            super(ANRError$$.this._name, _thread);
        }
    }

    private ANRError$$(String str, StackTraceElement[] stackTraceElementArr) {
        this._name = str;
        this._stackTrace = stackTraceElementArr;
    }
}
