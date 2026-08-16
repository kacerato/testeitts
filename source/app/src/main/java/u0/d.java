package U0;

import android.os.Process;

public final class d implements Runnable {

    public final Runnable f25662b;

    public d(Runnable runnable, int i10) {
        this.f25662b = runnable;
    }

    @Override
    public final void run() {
        Process.setThreadPriority(0);
        this.f25662b.run();
    }
}
