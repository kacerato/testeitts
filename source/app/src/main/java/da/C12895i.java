package da;

import Ic.C2634m;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import java.lang.ref.WeakReference;

public class C12895i extends C2634m {

    public WeakReference<Material> f84470b;

    public final String f84471c;

    public dc.k f84472d;

    public C12895i(Material material) {
        this.f84470b = null;
        this.f84470b = new WeakReference<>(material);
        this.f84471c = material.f78885e;
    }

    public boolean e(String file) {
        return this.f84471c.equals(file);
    }

    public Material f() {
        WeakReference<Material> weakReference = this.f84470b;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public String getFile() {
        return this.f84471c;
    }

    public void h() {
        this.f84470b = null;
    }

    public boolean i() {
        WeakReference<Material> weakReference = this.f84470b;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public boolean validate() {
        WeakReference<Material> weakReference = this.f84470b;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }
}
