package L8;

import com.itsmagic.engine.Engines.Engine.Animation.AnimationMask;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class b {

    public final List<c> f11637a = new SteppedArrayList(100);

    public AnimationMask f11638b;

    public List<c> a() {
        return this.f11637a;
    }

    public AnimationMask b() {
        return this.f11638b;
    }

    public void c() {
        d(null);
    }

    public void d(MiniJP mjp) {
        for (int i10 = 0; i10 < this.f11637a.size(); i10++) {
            this.f11637a.get(i10).y(mjp);
        }
        this.f11637a.clear();
        this.f11638b = null;
        if (mjp != null) {
            mjp.release(this);
        } else {
            JP.release(this);
        }
    }

    public void e() {
        this.f11637a.clear();
        this.f11638b = null;
    }

    public void f(AnimationMask mask) {
        this.f11638b = mask;
    }
}
