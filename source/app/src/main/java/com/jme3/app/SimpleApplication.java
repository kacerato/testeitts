package com.jme3.app;

import com.jme3.app.state.AppState;
import com.jme3.app.state.ConstantVerifierState;
import com.jme3.audio.AudioListenerState;
import com.jme3.font.BitmapFont;
import com.jme3.font.BitmapText;
import com.jme3.input.FlyByCamera;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.KeyTrigger;
import com.jme3.profile.AppProfiler;
import com.jme3.profile.AppStep;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.system.AppSettings;
import com.jme3.system.JmeContext;
import com.jme3.system.JmeSystem;
import java.util.logging.Level;
import java.util.logging.Logger;
import jme3utilities.debug.e;

public abstract class SimpleApplication extends LegacyApplication {
    static final boolean $assertionsDisabled = false;
    public static final String INPUT_MAPPING_CAMERA_POS = "SIMPLEAPP_CameraPos";
    public static final String INPUT_MAPPING_EXIT = "SIMPLEAPP_Exit";
    public static final String INPUT_MAPPING_HIDE_STATS = "SIMPLEAPP_HideStats";
    public static final String INPUT_MAPPING_MEMORY = "SIMPLEAPP_Memory";
    protected static final Logger logger = Logger.getLogger(SimpleApplication.class.getName());
    private final AppActionListener actionListener;
    protected FlyByCamera flyCam;
    protected BitmapText fpsText;
    protected BitmapFont guiFont;
    protected Node guiNode;
    protected Node rootNode;
    protected boolean showSettings;

    public class AppActionListener implements ActionListener {
        private AppActionListener() {
        }

        @Override
        public void onAction(String str, boolean z10, float f10) {
            StatsAppState statsAppState;
            if (z10) {
                if (str.equals(SimpleApplication.INPUT_MAPPING_EXIT)) {
                    SimpleApplication.this.stop();
                } else {
                    if (!str.equals(SimpleApplication.INPUT_MAPPING_HIDE_STATS) || (statsAppState = (StatsAppState) SimpleApplication.this.stateManager.getState(StatsAppState.class)) == null) {
                        return;
                    }
                    statsAppState.toggleStats();
                }
            }
        }
    }

    public SimpleApplication() {
        this(new StatsAppState(), new FlyCamAppState(), new AudioListenerState(), new DebugKeysAppState(), new ConstantVerifierState());
    }

    public FlyByCamera getFlyByCamera() {
        return this.flyCam;
    }

    public Node getGuiNode() {
        return this.guiNode;
    }

    public Node getRootNode() {
        return this.rootNode;
    }

    public float getSpeed() {
        return this.speed;
    }

    @Override
    public void initialize() {
        super.initialize();
        this.guiFont = loadGuiFont();
        this.guiNode.setQueueBucket(RenderQueue.Bucket.Gui);
        this.guiNode.setCullHint(Spatial.CullHint.Never);
        this.viewPort.attachScene(this.rootNode);
        this.guiViewPort.attachScene(this.guiNode);
        if (this.inputManager != null) {
            FlyCamAppState flyCamAppState = (FlyCamAppState) this.stateManager.getState(FlyCamAppState.class);
            if (flyCamAppState != null) {
                FlyByCamera flyByCamera = new FlyByCamera(this.cam);
                this.flyCam = flyByCamera;
                flyByCamera.setMoveSpeed(1.0f);
                flyCamAppState.setCamera(this.flyCam);
            }
            if (this.context.getType() == JmeContext.Type.Display) {
                this.inputManager.addMapping(INPUT_MAPPING_EXIT, new KeyTrigger(1));
            }
            if (((StatsAppState) this.stateManager.getState(StatsAppState.class)) != null) {
                this.inputManager.addMapping(INPUT_MAPPING_HIDE_STATS, new KeyTrigger(63));
                this.inputManager.addListener(this.actionListener, INPUT_MAPPING_HIDE_STATS);
            }
            this.inputManager.addListener(this.actionListener, INPUT_MAPPING_EXIT);
        }
        StatsAppState statsAppState = (StatsAppState) this.stateManager.getState(StatsAppState.class);
        if (statsAppState != null) {
            statsAppState.setFont(this.guiFont);
            this.fpsText = statsAppState.getFpsText();
        }
        simpleInitApp();
    }

    public boolean isShowSettings() {
        return this.showSettings;
    }

    public BitmapFont loadGuiFont() {
        return this.assetManager.loadFont(e.f94071A);
    }

    public void setDisplayFps(boolean z10) {
        StatsAppState statsAppState = (StatsAppState) this.stateManager.getState(StatsAppState.class);
        if (statsAppState != null) {
            statsAppState.setDisplayFps(z10);
        }
    }

    public void setDisplayStatView(boolean z10) {
        StatsAppState statsAppState = (StatsAppState) this.stateManager.getState(StatsAppState.class);
        if (statsAppState != null) {
            statsAppState.setDisplayStatView(z10);
        }
    }

    public void setShowSettings(boolean z10) {
        this.showSettings = z10;
    }

    public void setSpeed(float f10) {
        this.speed = f10;
    }

    public abstract void simpleInitApp();

    public void simpleRender(RenderManager renderManager) {
    }

    public void simpleUpdate(float f10) {
    }

    @Override
    public void start() {
        boolean z10;
        if (this.settings == null) {
            logger.log(Level.INFO, "AppSettings not set, creating default settings.");
            z10 = true;
            setSettings(new AppSettings(true));
        } else {
            z10 = false;
        }
        if (!this.showSettings || JmeSystem.showSettingsDialog(this.settings, z10)) {
            setSettings(this.settings);
            super.start();
        }
    }

    @Override
    public void update() {
        AppProfiler appProfiler = this.prof;
        if (appProfiler != null) {
            appProfiler.appStep(AppStep.BeginFrame);
        }
        super.update();
        if (this.speed == 0.0f || this.paused) {
            return;
        }
        float timePerFrame = this.timer.getTimePerFrame() * this.speed;
        AppProfiler appProfiler2 = this.prof;
        if (appProfiler2 != null) {
            appProfiler2.appStep(AppStep.StateManagerUpdate);
        }
        this.stateManager.update(timePerFrame);
        simpleUpdate(timePerFrame);
        AppProfiler appProfiler3 = this.prof;
        if (appProfiler3 != null) {
            appProfiler3.appStep(AppStep.SpatialUpdate);
        }
        this.rootNode.updateLogicalState(timePerFrame);
        this.guiNode.updateLogicalState(timePerFrame);
        this.rootNode.updateGeometricState();
        this.guiNode.updateGeometricState();
        AppProfiler appProfiler4 = this.prof;
        if (appProfiler4 != null) {
            appProfiler4.appStep(AppStep.StateManagerRender);
        }
        this.stateManager.render(this.renderManager);
        AppProfiler appProfiler5 = this.prof;
        if (appProfiler5 != null) {
            appProfiler5.appStep(AppStep.RenderFrame);
        }
        this.renderManager.render(timePerFrame, this.context.isRenderable());
        simpleRender(this.renderManager);
        this.stateManager.postRender();
        AppProfiler appProfiler6 = this.prof;
        if (appProfiler6 != null) {
            appProfiler6.appStep(AppStep.EndFrame);
        }
    }

    public SimpleApplication(AppState... appStateArr) {
        super(appStateArr);
        this.rootNode = new Node("Root Node");
        this.guiNode = new Node("Gui Node");
        this.showSettings = true;
        this.actionListener = new AppActionListener();
    }
}
