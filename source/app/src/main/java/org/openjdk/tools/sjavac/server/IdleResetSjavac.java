package org.openjdk.tools.sjavac.server;

import java.util.Timer;
import java.util.TimerTask;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.sjavac.Log;

public class IdleResetSjavac implements Sjavac {
    private final Sjavac delegate;
    private final long idleTimeout;
    private TimerTask idlenessTimerTask;
    private final Terminable toShutdown;
    private final Timer idlenessTimer = new Timer();
    private int outstandingCalls = 0;

    public IdleResetSjavac(Sjavac sjavac, Terminable terminable, long j10) {
        this.delegate = sjavac;
        this.toShutdown = terminable;
        this.idleTimeout = j10;
        scheduleTimeout();
    }

    private synchronized void endCall() {
        int i10 = this.outstandingCalls - 1;
        this.outstandingCalls = i10;
        if (i10 == 0) {
            scheduleTimeout();
        }
    }

    private void scheduleTimeout() {
        if (this.idlenessTimerTask != null) {
            throw new IllegalStateException("Idle timeout already scheduled");
        }
        TimerTask timerTask = new TimerTask() {
            @Override
            public void run() {
                Log.setLogForCurrentThread(ServerMain.getErrorLog());
                IdleResetSjavac.this.toShutdown.shutdown("Server has been idle for " + (IdleResetSjavac.this.idleTimeout / 1000) + " seconds.");
            }
        };
        this.idlenessTimerTask = timerTask;
        this.idlenessTimer.schedule(timerTask, this.idleTimeout);
    }

    private synchronized void startCall() {
        try {
            int i10 = this.outstandingCalls + 1;
            this.outstandingCalls = i10;
            if (i10 == 1) {
                TimerTask timerTask = this.idlenessTimerTask;
                if (timerTask == null) {
                    throw new IllegalStateException("Idle timeout already cancelled");
                }
                timerTask.cancel();
                this.idlenessTimerTask = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public Main.Result compile(String[] strArr) {
        startCall();
        try {
            return this.delegate.compile(strArr);
        } finally {
            endCall();
        }
    }

    @Override
    public void shutdown() {
        this.idlenessTimer.cancel();
        this.delegate.shutdown();
    }
}
