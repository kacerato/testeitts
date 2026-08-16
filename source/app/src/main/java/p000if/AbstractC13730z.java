package p000if;

import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.control.AbstractControl;

public abstract class AbstractC13730z extends AbstractControl {
    public void a() {
        setEnabled(!this.enabled);
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
        C13702E.t(renderManager, "render manager");
        C13702E.t(viewPort, "viewport");
        if (!this.enabled) {
            throw new IllegalStateException("should be enabled");
        }
    }

    @Override
    public void controlUpdate(float f10) {
        C13702E.p(f10, "interval");
        if (!this.enabled) {
            throw new IllegalStateException("should be enabled");
        }
    }

    @Override
    public final boolean isEnabled() {
        return this.enabled;
    }
}
