package com.github.anrwatchdog;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

public class ANRWatchDog extends Thread {
    private static final int DEFAULT_ANR_TIMEOUT = 5000;
    private ANRInterceptor _anrInterceptor;
    private ANRListener _anrListener;
    private boolean _ignoreDebugger;
    private InterruptionListener _interruptionListener;
    private boolean _logThreadsWithoutStackTrace;
    private String _namePrefix;
    private volatile boolean _reported;
    private volatile long _tick;
    private final Runnable _ticker;
    private final int _timeoutInterval;
    private final Handler _uiHandler;
    private static final ANRListener DEFAULT_ANR_LISTENER = new ANRListener() {
        @Override
        public void onAppNotResponding(ANRError aNRError) {
            throw aNRError;
        }
    };
    private static final ANRInterceptor DEFAULT_ANR_INTERCEPTOR = new ANRInterceptor() {
        @Override
        public long intercept(long j10) {
            return 0L;
        }
    };
    private static final InterruptionListener DEFAULT_INTERRUPTION_LISTENER = new InterruptionListener() {
        @Override
        public void onInterrupted(InterruptedException interruptedException) {
            Log.w("ANRWatchdog", "Interrupted: " + interruptedException.getMessage());
        }
    };

    public interface ANRInterceptor {
        long intercept(long j10);
    }

    public interface ANRListener {
        void onAppNotResponding(ANRError aNRError);
    }

    public interface InterruptionListener {
        void onInterrupted(InterruptedException interruptedException);
    }

    public ANRWatchDog() {
        this(5000);
    }

    public int getTimeoutInterval() {
        return this._timeoutInterval;
    }

    @Override
    public void run() {
        setName("|ANR-WatchDog|");
        long j10 = this._timeoutInterval;
        while (!isInterrupted()) {
            boolean z10 = this._tick == 0;
            this._tick += j10;
            if (z10) {
                this._uiHandler.post(this._ticker);
            }
            try {
                Thread.sleep(j10);
                if (this._tick != 0 && !this._reported) {
                    if (this._ignoreDebugger || !(Debug.isDebuggerConnected() || Debug.waitingForDebugger())) {
                        j10 = this._anrInterceptor.intercept(this._tick);
                        if (j10 <= 0) {
                            this._anrListener.onAppNotResponding(this._namePrefix != null ? ANRError.New(this._tick, this._namePrefix, this._logThreadsWithoutStackTrace) : ANRError.NewMainOnly(this._tick));
                            j10 = this._timeoutInterval;
                            this._reported = true;
                        }
                    } else {
                        Log.w("ANRWatchdog", "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))");
                        this._reported = true;
                    }
                }
            } catch (InterruptedException e10) {
                this._interruptionListener.onInterrupted(e10);
                return;
            }
        }
    }

    public ANRWatchDog setANRInterceptor(ANRInterceptor aNRInterceptor) {
        if (aNRInterceptor == null) {
            this._anrInterceptor = DEFAULT_ANR_INTERCEPTOR;
        } else {
            this._anrInterceptor = aNRInterceptor;
        }
        return this;
    }

    public ANRWatchDog setANRListener(ANRListener aNRListener) {
        if (aNRListener == null) {
            this._anrListener = DEFAULT_ANR_LISTENER;
        } else {
            this._anrListener = aNRListener;
        }
        return this;
    }

    public ANRWatchDog setIgnoreDebugger(boolean z10) {
        this._ignoreDebugger = z10;
        return this;
    }

    public ANRWatchDog setInterruptionListener(InterruptionListener interruptionListener) {
        if (interruptionListener == null) {
            this._interruptionListener = DEFAULT_INTERRUPTION_LISTENER;
        } else {
            this._interruptionListener = interruptionListener;
        }
        return this;
    }

    public ANRWatchDog setLogThreadsWithoutStackTrace(boolean z10) {
        this._logThreadsWithoutStackTrace = z10;
        return this;
    }

    public ANRWatchDog setReportAllThreads() {
        this._namePrefix = "";
        return this;
    }

    public ANRWatchDog setReportMainThreadOnly() {
        this._namePrefix = null;
        return this;
    }

    public ANRWatchDog setReportThreadNamePrefix(String str) {
        if (str == null) {
            str = "";
        }
        this._namePrefix = str;
        return this;
    }

    public ANRWatchDog(int i10) {
        this._anrListener = DEFAULT_ANR_LISTENER;
        this._anrInterceptor = DEFAULT_ANR_INTERCEPTOR;
        this._interruptionListener = DEFAULT_INTERRUPTION_LISTENER;
        this._uiHandler = new Handler(Looper.getMainLooper());
        this._namePrefix = "";
        this._logThreadsWithoutStackTrace = false;
        this._ignoreDebugger = false;
        this._tick = 0L;
        this._reported = false;
        this._ticker = new Runnable() {
            @Override
            public void run() {
                ANRWatchDog.this._tick = 0L;
                ANRWatchDog.this._reported = false;
            }
        };
        this._timeoutInterval = i10;
    }
}
