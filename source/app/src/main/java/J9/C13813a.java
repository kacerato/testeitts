package j9;

import Ic.C2634m;
import JAVARuntime.Collision;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.BasePool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import h9.InterfaceC13435a;
import java.io.Serializable;
import java.util.List;

public class C13813a extends C2634m implements Serializable {

    public GameObject f92646b;

    public InterfaceC13435a f92647c;

    public final List<C1794a> f92648d = new SteppedArrayList();

    public final List<C1794a> f92649e = new SteppedArrayList();

    public Collider f92650g;

    public GameObject f92651i;

    public BasePool f92652j;

    public PooledObject f92653k;

    public Collision f92654l;

    public static class C1794a {

        public Vector3 f92655a = new Vector3();

        public Vector3 f92656b = new Vector3();

        public float f92657c = 0.0f;

        public float f92658d;

        public Collider f92659e;

        public GameObject f92660f;

        public BasePool f92661g;

        public PooledObject f92662h;

        public Collision.Contact f92663i;

        public void a() {
            this.f92655a.set(0.0f);
            this.f92656b.set(0.0f);
            this.f92657c = 0.0f;
            this.f92658d = 0.0f;
            this.f92659e = null;
            this.f92660f = null;
        }

        public Collision.Contact b() {
            Collision.Contact contact = this.f92663i;
            if (contact != null) {
                return contact;
            }
            Collision.Contact contact2 = new Collision.Contact(this);
            this.f92663i = contact2;
            return contact2;
        }
    }

    public C1794a e() {
        int size = this.f92649e.size() - 1;
        C1794a remove = size >= 0 ? this.f92649e.remove(size) : new C1794a();
        remove.a();
        return remove;
    }

    public void f() {
        if (this.f92648d.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.f92648d.size(); i10++) {
            C1794a c1794a = this.f92648d.get(i10);
            if (c1794a != null) {
                this.f92649e.add(c1794a);
            }
        }
        this.f92648d.clear();
    }

    public Collision h() {
        Collision collision = this.f92654l;
        if (collision != null) {
            return collision;
        }
        Collision collision2 = new Collision(this);
        this.f92654l = collision2;
        return collision2;
    }

    @NonNull
    public String toString() {
        GameObject gameObject = this.f92646b;
        return "other:" + (gameObject != null ? gameObject.getName() : "Null") + " contact count:" + this.f92648d.size();
    }
}
