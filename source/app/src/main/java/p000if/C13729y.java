package p000if;

import com.jme3.app.Application;
import com.jme3.app.SimpleApplication;
import com.jme3.app.state.AppStateManager;
import com.jme3.asset.AssetManager;
import com.jme3.input.FlyByCamera;
import com.jme3.input.InputManager;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Node;
import java.util.logging.Logger;

public class C13729y extends C13726v {

    public static final Logger f92173p = Logger.getLogger(C13729y.class.getName());

    public static final boolean f92174q = false;

    public AppStateManager f92175e;

    public AssetManager f92176f;

    public Camera f92177g;

    public FlyByCamera f92178h;

    public InputManager f92179i;

    public Node f92180j;

    public Node f92181k;

    public RenderManager f92182l;

    public SimpleApplication f92183m;

    public ViewPort f92184n;

    public ViewPort f92185o;

    public C13729y(boolean z10) {
        super(z10);
    }

    public void e() {
        this.f92175e = this.f92183m.getStateManager();
        this.f92176f = this.f92183m.getAssetManager();
        this.f92177g = this.f92183m.getCamera();
        this.f92178h = this.f92183m.getFlyByCamera();
        this.f92179i = this.f92183m.getInputManager();
        this.f92180j = this.f92183m.getGuiNode();
        this.f92181k = this.f92183m.getRootNode();
        this.f92182l = this.f92183m.getRenderManager();
        this.f92184n = this.f92183m.getGuiViewPort();
        this.f92185o = this.f92183m.getViewPort();
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        if (!(application instanceof SimpleApplication)) {
            throw new IllegalArgumentException("application should be a SimpleApplication");
        }
        super.initialize(appStateManager, application);
        this.f92183m = (SimpleApplication) application;
        e();
    }

    @Override
    public void render(RenderManager renderManager) {
        if (renderManager != this.f92182l) {
            throw new IllegalArgumentException("wrong render manager");
        }
        super.render(renderManager);
    }

    @Override
    public void stateDetached(AppStateManager appStateManager) {
        if (appStateManager != this.f92175e) {
            throw new IllegalArgumentException("wrong state manager");
        }
        super.stateDetached(appStateManager);
    }

    public C13729y(EnumC13712h enumC13712h) {
        super(enumC13712h);
    }
}
