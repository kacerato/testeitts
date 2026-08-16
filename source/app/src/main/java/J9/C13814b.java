package j9;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import gb.C13317e;
import h9.InterfaceC13435a;
import j9.C13813a;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class C13814b {

    public final Mc.b<C13813a> f92664a = new Mc.b<>();

    public final Map<GameObject, C13813a> f92665b = new HashMap();

    public final Mc.b<C13813a> f92666c = new Mc.b<>();

    public final List<C13813a> f92667d = new SteppedArrayList();

    public final List<C13813a> f92668e = new SteppedArrayList();

    public InterfaceC13435a f92669f;

    public C13814b(InterfaceC13435a controller) {
        this.f92669f = controller;
    }

    public static void e(C13813a collision) {
        List<C13813a.C1794a> list;
        int size;
        int i10;
        if (collision != null && (size = (list = collision.f92648d).size()) >= 2) {
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                C13813a.C1794a c1794a = list.get(i12);
                if (c1794a != null) {
                    int emulateHash = c1794a.f92656b.emulateHash();
                    while (true) {
                        if (i10 < i11) {
                            C13813a.C1794a c1794a2 = list.get(i10);
                            i10 = (c1794a2 == null || c1794a2.f92656b.emulateHash() != emulateHash) ? i10 + 1 : 0;
                        } else {
                            if (i11 != i12) {
                                list.set(i11, c1794a);
                            }
                            i11++;
                        }
                    }
                }
            }
            while (list.size() > i11) {
                list.remove(list.size() - 1);
            }
        }
    }

    public void a(C13813a collision) {
        if (this.f92669f.keepContactList()) {
            if (collision == null) {
                throw new NullPointerException("Collision can't be null");
            }
            GameObject gameObject = collision.f92646b;
            if (gameObject == null) {
                throw new NullPointerException("Collision other object can't be null");
            }
            this.f92665b.put(gameObject, collision);
            this.f92664a.add(collision);
            this.f92667d.add(collision);
            if (this.f92666c.contains(collision)) {
                return;
            }
            this.f92666c.add(collision);
        }
    }

    public boolean b(String name) {
        if (this.f92669f.keepContactList() && !this.f92664a.isEmpty()) {
            for (int i10 = 0; i10 < this.f92664a.size(); i10++) {
                C13813a c13813a = this.f92664a.get(i10);
                if (c13813a != null && C13317e.J(c13813a.f92646b) && c13813a.f92646b.I(name)) {
                    return true;
                }
            }
        }
        return false;
    }

    public C13813a c(int i10) {
        return this.f92664a.get(i10);
    }

    public int d() {
        if (this.f92669f.keepContactList()) {
            return this.f92664a.size();
        }
        return 0;
    }

    public C13813a f(GameObject other) {
        if (!this.f92669f.keepContactList()) {
            return null;
        }
        C13813a c13813a = this.f92665b.get(other);
        if (c13813a != null && !this.f92666c.contains(c13813a)) {
            this.f92666c.add(c13813a);
        }
        return c13813a;
    }

    public boolean g() {
        if (this.f92669f.keepContactList()) {
            return !this.f92664a.isEmpty();
        }
        return false;
    }

    public void h(GameObject gameObject) {
        if (this.f92669f.keepContactList()) {
            for (int i10 = 0; i10 < this.f92664a.size(); i10++) {
                e(this.f92664a.get(i10));
            }
        }
    }

    public void i(GameObject gameObject) {
        if (this.f92669f.enableCollisionEvents()) {
            for (int i10 = 0; i10 < this.f92664a.size(); i10++) {
                gameObject.onCollision(this.f92664a.get(i10));
            }
            for (int i11 = 0; i11 < this.f92667d.size(); i11++) {
                gameObject.onCollisionEnter(this.f92667d.get(i11));
            }
            for (int i12 = 0; i12 < this.f92668e.size(); i12++) {
                gameObject.onCollisionStop(this.f92668e.get(i12));
            }
        }
    }

    public void j(GameObject gameObject) {
        if (this.f92669f.keepContactList()) {
            this.f92668e.clear();
            this.f92667d.clear();
            for (int i10 = 0; i10 < this.f92664a.size(); i10++) {
                C13813a c13813a = this.f92664a.get(i10);
                if (!this.f92666c.contains(c13813a)) {
                    this.f92665b.remove(c13813a.f92646b);
                    this.f92668e.add(c13813a);
                }
            }
            this.f92664a.removeAll(this.f92668e);
            for (int i11 = 0; i11 < this.f92666c.size(); i11++) {
                C13813a c13813a2 = this.f92666c.get(i11);
                if (!this.f92664a.contains(c13813a2)) {
                    this.f92665b.put(c13813a2.f92646b, c13813a2);
                    this.f92667d.add(c13813a2);
                }
                c13813a2.f();
            }
            this.f92666c.clear();
        }
    }
}
