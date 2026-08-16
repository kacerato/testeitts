package lb;

import android.util.Log;
import b3.s;

public class C14069f {

    public float f96238b = 0.0f;

    public float f96239c = 0.0f;

    public long f96237a = System.nanoTime();

    public void a(String prefix) {
        this.f96238b = ((float) (System.nanoTime() - this.f96237a)) / 1000000.0f;
        Log.d("TimeCounter", prefix + s.f32937c + Nc.b.v0(this.f96238b, 0) + " ms");
    }
}
