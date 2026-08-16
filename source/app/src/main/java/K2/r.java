package K2;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;

@AutoValue
public abstract class r {
    @NonNull
    public static r a(long j10, long j11, long j12) {
        return new a(j10, j11, j12);
    }

    @NonNull
    public static r e() {
        return a(System.currentTimeMillis(), SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());
    }

    public abstract long b();

    public abstract long c();

    public abstract long d();
}
