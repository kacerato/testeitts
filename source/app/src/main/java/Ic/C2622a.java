package Ic;

import android.app.job.JobInfo;
import android.icu.text.DateFormat;
import java.util.concurrent.Phaser;
import java.util.concurrent.TimeUnit;

public class C2622a extends Phaser {

    public long f9097a;

    public String f9098b;

    public C2622a() {
        this(1);
    }

    public boolean a() {
        return b(this.f9097a);
    }

    public boolean b(long ms) {
        try {
            awaitAdvanceInterruptibly(arrive(), ms, TimeUnit.MILLISECONDS);
            return true;
        } catch (Exception unused) {
            Vc.g.b("Timeout waiting phaser {" + this.f9098b + "} : " + ms + DateFormat.MINUTE_SECOND);
            return false;
        }
    }

    public long c() {
        return this.f9097a;
    }

    public C2622a d(long ms) {
        this.f9097a = ms;
        return this;
    }

    public void e() {
        try {
            arriveAndDeregister();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public C2622a(int parties) {
        super(parties);
        this.f9097a = JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS;
        this.f9098b = "";
    }

    public C2622a(int parties, String extraLogInfo) {
        super(parties);
        this.f9097a = JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS;
        this.f9098b = extraLogInfo;
    }
}
