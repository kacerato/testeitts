package com.jme3.app;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.app.state.AbstractAppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.font.BitmapFont;
import com.jme3.font.BitmapText;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.shape.Quad;
import jme3utilities.debug.e;

public class StatsAppState extends AbstractAppState {
    private Application app;
    protected Geometry darkenFps;
    protected Geometry darkenStats;
    protected BitmapText fpsText;
    protected BitmapFont guiFont;
    protected Node guiNode;
    protected StatsView statsView;
    protected boolean showSettings = true;
    private boolean showFps = true;
    private boolean showStats = true;
    private boolean darkenBehind = true;
    protected float secondCounter = 0.0f;
    protected int frameCounter = 0;

    public StatsAppState() {
    }

    @Override
    public void cleanup() {
        super.cleanup();
        this.guiNode.detachChild(this.statsView);
        this.guiNode.detachChild(this.fpsText);
        this.guiNode.detachChild(this.darkenFps);
        this.guiNode.detachChild(this.darkenStats);
    }

    public BitmapText getFpsText() {
        return this.fpsText;
    }

    public float getSecondCounter() {
        return this.secondCounter;
    }

    public StatsView getStatsView() {
        return this.statsView;
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        super.initialize(appStateManager, application);
        this.app = application;
        if (application instanceof SimpleApplication) {
            SimpleApplication simpleApplication = (SimpleApplication) application;
            if (this.guiNode == null) {
                this.guiNode = simpleApplication.guiNode;
            }
            if (this.guiFont == null) {
                this.guiFont = simpleApplication.guiFont;
            }
        }
        if (this.guiNode == null) {
            throw new RuntimeException("No guiNode specific and cannot be automatically determined.");
        }
        if (this.guiFont == null) {
            this.guiFont = application.getAssetManager().loadFont(e.f94071A);
        }
        loadFpsText();
        loadStatsView();
        loadDarken();
        setEnabled(isEnabled());
    }

    public boolean isDarkenBehind() {
        return this.darkenBehind;
    }

    public void loadDarken() {
        Material material = new Material(this.app.getAssetManager(), "Common/MatDefs/Misc/Unshaded.j3md");
        material.setColor(SerializableShaderEntry.f81153g, new ColorRGBA(0.0f, 0.0f, 0.0f, 0.5f));
        material.getAdditionalRenderState().setBlendMode(RenderState.BlendMode.Alpha);
        Geometry geometry = new Geometry("StatsDarken", new Quad(200.0f, this.fpsText.getLineHeight()));
        this.darkenFps = geometry;
        geometry.setMaterial(material);
        this.darkenFps.setLocalTranslation(0.0f, 0.0f, -1.0f);
        this.darkenFps.setCullHint((this.showFps && this.darkenBehind) ? Spatial.CullHint.Never : Spatial.CullHint.Always);
        this.guiNode.attachChild(this.darkenFps);
        Geometry geometry2 = new Geometry("StatsDarken", new Quad(200.0f, this.statsView.getHeight()));
        this.darkenStats = geometry2;
        geometry2.setMaterial(material);
        this.darkenStats.setLocalTranslation(0.0f, this.fpsText.getHeight(), -1.0f);
        this.darkenStats.setCullHint((this.showStats && this.darkenBehind) ? Spatial.CullHint.Never : Spatial.CullHint.Always);
        this.guiNode.attachChild(this.darkenStats);
    }

    public void loadFpsText() {
        if (this.fpsText == null) {
            this.fpsText = new BitmapText(this.guiFont);
        }
        BitmapText bitmapText = this.fpsText;
        bitmapText.setLocalTranslation(0.0f, bitmapText.getLineHeight(), 0.0f);
        this.fpsText.setText("Frames per second");
        this.fpsText.setCullHint(this.showFps ? Spatial.CullHint.Never : Spatial.CullHint.Always);
        this.guiNode.attachChild(this.fpsText);
    }

    public void loadStatsView() {
        StatsView statsView = new StatsView("Statistics View", this.app.getAssetManager(), this.app.getRenderer().getStatistics());
        this.statsView = statsView;
        statsView.setLocalTranslation(0.0f, this.fpsText.getLineHeight(), 0.0f);
        this.statsView.setEnabled(this.showStats);
        this.statsView.setCullHint(this.showStats ? Spatial.CullHint.Never : Spatial.CullHint.Always);
        this.guiNode.attachChild(this.statsView);
    }

    public void setDarkenBehind(boolean z10) {
        this.darkenBehind = z10;
        setEnabled(isEnabled());
    }

    public void setDisplayFps(boolean z10) {
        this.showFps = z10;
        BitmapText bitmapText = this.fpsText;
        if (bitmapText != null) {
            bitmapText.setCullHint(z10 ? Spatial.CullHint.Never : Spatial.CullHint.Always);
            Geometry geometry = this.darkenFps;
            if (geometry != null) {
                geometry.setCullHint((this.showFps && this.darkenBehind) ? Spatial.CullHint.Never : Spatial.CullHint.Always);
            }
        }
    }

    public void setDisplayStatView(boolean z10) {
        this.showStats = z10;
        StatsView statsView = this.statsView;
        if (statsView != null) {
            statsView.setEnabled(z10);
            this.statsView.setCullHint(z10 ? Spatial.CullHint.Never : Spatial.CullHint.Always);
            Geometry geometry = this.darkenStats;
            if (geometry != null) {
                geometry.setCullHint((this.showStats && this.darkenBehind) ? Spatial.CullHint.Never : Spatial.CullHint.Always);
            }
        }
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        BitmapText bitmapText = this.fpsText;
        if (bitmapText == null) {
            return;
        }
        if (z10) {
            bitmapText.setCullHint(this.showFps ? Spatial.CullHint.Never : Spatial.CullHint.Always);
            this.darkenFps.setCullHint((this.showFps && this.darkenBehind) ? Spatial.CullHint.Never : Spatial.CullHint.Always);
            this.statsView.setEnabled(this.showStats);
            this.statsView.setCullHint(this.showStats ? Spatial.CullHint.Never : Spatial.CullHint.Always);
            this.darkenStats.setCullHint((this.showStats && this.darkenBehind) ? Spatial.CullHint.Never : Spatial.CullHint.Always);
            return;
        }
        Spatial.CullHint cullHint = Spatial.CullHint.Always;
        bitmapText.setCullHint(cullHint);
        this.darkenFps.setCullHint(cullHint);
        this.statsView.setEnabled(false);
        this.statsView.setCullHint(cullHint);
        this.darkenStats.setCullHint(cullHint);
    }

    public void setFont(BitmapFont bitmapFont) {
        this.guiFont = bitmapFont;
        this.fpsText = new BitmapText(bitmapFont);
    }

    public void toggleStats() {
        setDisplayFps(!this.showFps);
        setDisplayStatView(!this.showStats);
    }

    @Override
    public void update(float f10) {
        if (this.showFps) {
            float timePerFrame = this.secondCounter + this.app.getTimer().getTimePerFrame();
            this.secondCounter = timePerFrame;
            int i10 = this.frameCounter + 1;
            this.frameCounter = i10;
            if (timePerFrame >= 1.0f) {
                int i11 = (int) (i10 / timePerFrame);
                this.fpsText.setText("Frames per second: " + i11);
                this.secondCounter = 0.0f;
                this.frameCounter = 0;
            }
        }
    }

    public StatsAppState(Node node, BitmapFont bitmapFont) {
        this.guiNode = node;
        this.guiFont = bitmapFont;
    }
}
