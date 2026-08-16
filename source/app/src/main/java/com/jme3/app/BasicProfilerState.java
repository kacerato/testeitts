package com.jme3.app;

import com.jme3.app.state.BaseAppState;
import com.jme3.input.InputManager;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.KeyTrigger;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.VertexBuffer;

public class BasicProfilerState extends BaseAppState {
    public static final String INPUT_MAPPING_PROFILER_TOGGLE = "BasicProfilerState_Toggle";
    private Geometry background;
    private Geometry graph;
    private final ProfilerKeyListener keyListener;
    private BasicProfiler profiler;
    private float scale;

    public class ProfilerKeyListener implements ActionListener {
        private ProfilerKeyListener() {
        }

        @Override
        public void onAction(String str, boolean z10, float f10) {
            if (z10) {
                BasicProfilerState.this.toggleProfiler();
            }
        }
    }

    public BasicProfilerState() {
        this(false);
    }

    @Override
    public void cleanup(Application application) {
        InputManager inputManager = application.getInputManager();
        if (inputManager.hasMapping(INPUT_MAPPING_PROFILER_TOGGLE)) {
            inputManager.deleteMapping(INPUT_MAPPING_PROFILER_TOGGLE);
        }
        inputManager.removeListener(this.keyListener);
    }

    public int getFrameCount() {
        return this.profiler.getFrameCount();
    }

    public float getGraphScale() {
        return this.scale;
    }

    public BasicProfiler getProfiler() {
        return this.profiler;
    }

    @Override
    public void initialize(Application application) {
        this.graph = new Geometry("profiler", this.profiler.getMesh());
        Material material = new Material(application.getAssetManager(), "Common/MatDefs/Misc/Unshaded.j3md");
        material.setBoolean("VertexColor", true);
        this.graph.setMaterial(material);
        this.graph.setLocalTranslation(0.0f, 300.0f, 0.0f);
        this.graph.setLocalScale(1.0f, this.scale, 1.0f);
        this.background = new Geometry("profiler.background", new Mesh());
        Material material2 = new Material(application.getAssetManager(), "Common/MatDefs/Misc/Unshaded.j3md");
        material2.setBoolean("VertexColor", true);
        material2.getAdditionalRenderState().setBlendMode(RenderState.BlendMode.Alpha);
        this.background.setMaterial(material2);
        this.background.setLocalTranslation(0.0f, 300.0f, -1.0f);
        this.background.setLocalScale(1.0f, this.scale, 1.0f);
        refreshBackground();
        InputManager inputManager = application.getInputManager();
        if (inputManager != null) {
            inputManager.addMapping(INPUT_MAPPING_PROFILER_TOGGLE, new KeyTrigger(64));
            inputManager.addListener(this.keyListener, INPUT_MAPPING_PROFILER_TOGGLE);
        }
    }

    @Override
    public void onDisable() {
        getApplication().setAppProfiler(null);
        this.graph.removeFromParent();
        this.background.removeFromParent();
    }

    @Override
    public void onEnable() {
        setFrameCount(getApplication().getCamera().getWidth());
        getApplication().setAppProfiler(this.profiler);
        Node guiNode = ((SimpleApplication) getApplication()).getGuiNode();
        guiNode.attachChild(this.graph);
        guiNode.attachChild(this.background);
    }

    public void refreshBackground() {
        Mesh mesh = this.background.getMesh();
        float frameCount = this.profiler.getFrameCount();
        mesh.setBuffer(VertexBuffer.Type.Position, 3, new float[]{0.0f, 0.0f, 0.0f, frameCount, 0.0f, 0.0f, frameCount, 16.666666f, 0.0f, 0.0f, 16.666666f, 0.0f, 0.0f, 16.666666f, 0.0f, frameCount, 16.666666f, 0.0f, frameCount, 33.333332f, 0.0f, 0.0f, 33.333332f, 0.0f, 0.0f, -2.0f, 0.0f, frameCount, -2.0f, 0.0f, frameCount, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f});
        mesh.setBuffer(VertexBuffer.Type.Color, 4, new float[]{0.0f, 1.0f, 0.0f, 0.25f, 0.0f, 1.0f, 0.0f, 0.25f, 0.0f, 0.25f, 0.0f, 0.25f, 0.0f, 0.25f, 0.0f, 0.25f, 0.25f, 0.0f, 0.0f, 0.25f, 0.25f, 0.0f, 0.0f, 0.25f, 1.0f, 0.0f, 0.0f, 0.25f, 1.0f, 0.0f, 0.0f, 0.25f, 0.0f, 0.0f, 0.0f, 0.5f, 0.0f, 0.0f, 0.0f, 0.5f, 0.0f, 0.0f, 0.0f, 0.5f, 0.0f, 0.0f, 0.0f, 0.5f});
        mesh.setBuffer(VertexBuffer.Type.Index, 3, new short[]{0, 1, 2, 0, 2, 3, 4, 5, 6, 4, 6, 7, 8, 9, 10, 8, 10, 11});
    }

    public void setFrameCount(int i10) {
        if (this.profiler.getFrameCount() == i10) {
            return;
        }
        this.profiler.setFrameCount(i10);
        refreshBackground();
    }

    public void setGraphScale(float f10) {
        if (this.scale == f10) {
            return;
        }
        this.scale = f10;
        Geometry geometry = this.graph;
        if (geometry != null) {
            geometry.setLocalScale(1.0f, f10, 1.0f);
        }
    }

    public void toggleProfiler() {
        setEnabled(!isEnabled());
    }

    public BasicProfilerState(boolean z10) {
        this.scale = 2.0f;
        this.keyListener = new ProfilerKeyListener();
        setEnabled(z10);
        this.profiler = new BasicProfiler();
    }
}
