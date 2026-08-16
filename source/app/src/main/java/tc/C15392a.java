package tc;

import com.itsmagic.engine.Engines.Input.Axis;
import java.lang.ref.WeakReference;

public class C15392a {

    public WeakReference<Axis> f117269a;

    public final String f117270b;

    public C15392a(Axis axis) {
        this.f117269a = null;
        this.f117269a = new WeakReference<>(axis);
        this.f117270b = axis.getName();
    }

    public Axis a() {
        return this.f117269a.get();
    }

    public String b() {
        return this.f117270b;
    }

    public boolean c() {
        return this.f117269a.get() != null;
    }
}
