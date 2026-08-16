package p9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;

public class b {

    public X8.a f103699a;

    public X8.a f103700b;

    public X8.a f103701c;

    public SteppedArrayList<X8.a> f103702d = new SteppedArrayList<>();

    public void a() {
        X8.a aVar = this.f103699a;
        if (aVar != null) {
            aVar.b();
        }
        this.f103699a = null;
        X8.a aVar2 = this.f103700b;
        if (aVar2 != null) {
            aVar2.b();
        }
        this.f103700b = null;
        X8.a aVar3 = this.f103701c;
        if (aVar3 != null) {
            aVar3.b();
        }
        this.f103701c = null;
        Iterator<X8.a> it = this.f103702d.iterator();
        while (it.hasNext()) {
            X8.a next = it.next();
            if (next != null) {
                next.b();
            }
        }
        this.f103702d.clear();
    }

    public void b(Camera camera) {
    }
}
