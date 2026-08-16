package fa;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class C13200a {

    public final List<Vector3> f86152a = new SteppedArrayList();

    public final List<Vector3> f86153b = new SteppedArrayList();

    public C13200a a(Vector3 vector3) {
        this.f86152a.add(vector3);
        return this;
    }

    public void b(float mergeDistance) {
        int i10;
        Vector3 vector3;
        float f10 = mergeDistance * mergeDistance;
        int i11 = 0;
        while (true) {
            for (boolean z10 = true; z10; z10 = false) {
                i10 = i11;
                while (i10 < this.f86152a.size()) {
                    Vector3 vector32 = this.f86152a.get(i10);
                    for (int i12 = 0; i12 < this.f86152a.size(); i12++) {
                        if (i12 != i10 && (vector3 = this.f86152a.get(i12)) != vector32 && vector32.sqrtDistance(vector3) < f10) {
                            this.f86153b.add(vector3);
                            vector32.addLocal(vector3);
                            vector32.divLocal(2.0f);
                        }
                    }
                    if (!this.f86153b.isEmpty()) {
                        break;
                    } else {
                        i10++;
                    }
                }
            }
            return;
            this.f86152a.removeAll(this.f86153b);
            this.f86153b.clear();
            i11 = i10;
        }
    }

    public Vector3 c(int x10) {
        return this.f86152a.get(x10);
    }

    public int d() {
        return this.f86152a.size();
    }

    public void e(int idx) {
        this.f86152a.remove(idx);
    }
}
