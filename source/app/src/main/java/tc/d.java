package tc;

import com.itsmagic.engine.Engines.Input.Key;
import java.lang.ref.WeakReference;

public class d {

    public WeakReference<Key> f117285a;

    public final String f117286b;

    public d(Key key) {
        this.f117285a = null;
        this.f117285a = new WeakReference<>(key);
        this.f117286b = key.getName();
    }

    public Key a() {
        return this.f117285a.get();
    }

    public String b() {
        return this.f117286b;
    }

    public boolean c() {
        return this.f117285a.get() != null;
    }
}
