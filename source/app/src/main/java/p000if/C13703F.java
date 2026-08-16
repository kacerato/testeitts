package p000if;

import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class C13703F extends C13729y {

    public static final Logger f92074t = Logger.getLogger(C13703F.class.getName());

    public float f92075r;

    public final List<Spatial> f92076s;

    public C13703F() {
        super(EnumC13712h.Enabled);
        this.f92076s = new ArrayList(10);
    }

    public final void f(List<ViewPort> list) {
        for (ViewPort viewPort : list) {
            if (viewPort.isEnabled()) {
                for (Spatial spatial : viewPort.getScenes()) {
                    if (spatial != this.f92181k && spatial != this.f92180j && !"Physics Debug Root Node".equals(spatial.getName()) && !this.f92076s.contains(spatial)) {
                        this.f92076s.add(spatial);
                    }
                }
            }
        }
    }

    @Override
    public void render(RenderManager renderManager) {
        super.render(renderManager);
        this.f92076s.clear();
        f(renderManager.getPreViews());
        f(renderManager.getMainViews());
        f(renderManager.getPostViews());
        for (Spatial spatial : this.f92076s) {
            spatial.updateLogicalState(this.f92075r);
            spatial.updateGeometricState();
        }
    }

    @Override
    public void update(float f10) {
        super.update(f10);
        this.f92075r = f10;
    }
}
