package com.jme3.app;

import android.icu.text.DateFormat;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.app.DetailedProfiler;
import com.jme3.app.state.BaseAppState;
import com.jme3.font.BitmapFont;
import com.jme3.font.BitmapText;
import com.jme3.input.InputManager;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.KeyTrigger;
import com.jme3.input.controls.MouseButtonTrigger;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.profile.AppStep;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.shape.Quad;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import jme3utilities.debug.e;

public class DetailedProfilerState extends BaseAppState {
    private static final String CLICK_KEY = "Click_Detailed_Profiler";
    private static final int HEADER_HEIGHT = 100;
    private static final String INSIGNIFICANT = "Hide insignificant stat";
    private static final int LINE_HEIGHT = 12;
    private static final int PADDING = 10;
    private static final int PANEL_WIDTH = 400;
    private static final float REFRESH_TIME = 1.0f;
    private static final String TOGGLE_KEY = "Toggle_Detailed_Profiler";
    private BitmapFont bigFont;
    private BitmapFont font;
    private BitmapText frameCpuTimeValue;
    private BitmapText frameGpuTimeValue;
    private BitmapText frameTimeValue;
    private BitmapText hideInsignificantField;
    private StatLineView rootLine;
    private BitmapText selectedField;
    private double totalTimeCpu;
    private double totalTimeGpu;
    private final DetailedProfiler prof = new DetailedProfiler();
    private float time = 0.0f;

    private final Node f81556ui = new Node("Stats ui");
    private final Map<String, StatLineView> lines = new HashMap();
    private int maxLevel = 0;
    private double selectedValueCpu = 0.0d;
    private double selectedValueGpu = 0.0d;
    private boolean hideInsignificant = false;
    private int height = 0;

    private final DecimalFormat f81555df = new DecimalFormat("##0.00", new DecimalFormatSymbols(Locale.US));
    private final ColorRGBA dimmedWhite = ColorRGBA.White.mult(0.7f);
    private final ColorRGBA dimmedGreen = ColorRGBA.Green.mult(0.7f);
    private final ColorRGBA dimmedOrange = ColorRGBA.Orange.mult(0.7f);
    private final ColorRGBA dimmedRed = ColorRGBA.Red.mult(0.7f);
    private final ProfilerInputListener inputListener = new ProfilerInputListener();

    public class ProfilerInputListener implements ActionListener {
        private ProfilerInputListener() {
        }

        @Override
        public void onAction(String str, boolean z10, float f10) {
            if (str.equals(DetailedProfilerState.TOGGLE_KEY) && z10) {
                DetailedProfilerState.this.setEnabled(!r4.isEnabled());
            }
            if (DetailedProfilerState.this.isEnabled() && str.equals(DetailedProfilerState.CLICK_KEY) && z10) {
                DetailedProfilerState detailedProfilerState = DetailedProfilerState.this;
                detailedProfilerState.handleClick(detailedProfilerState.getApplication().getInputManager().getCursorPosition());
            }
        }
    }

    public class StatLineView {
        BitmapText checkBox;
        BitmapText cpuText;
        double cpuValue;
        BitmapText gpuText;
        double gpuValue;
        BitmapText label;
        String text;
        private boolean expended = true;
        private boolean visible = true;
        private boolean selected = false;
        Set<StatLineView> children = new LinkedHashSet();

        public StatLineView(String str) {
            this.text = str;
            this.label = new BitmapText(DetailedProfilerState.this.font);
            BitmapText bitmapText = new BitmapText(DetailedProfilerState.this.font);
            this.checkBox = bitmapText;
            bitmapText.setText("O");
            this.label.setText("- " + str);
            this.cpuText = new BitmapText(DetailedProfilerState.this.font);
            this.gpuText = new BitmapText(DetailedProfilerState.this.font);
        }

        public void attachTo(Node node) {
            node.attachChild(this.label);
            node.attachChild(this.cpuText);
            node.attachChild(this.gpuText);
            node.attachChild(this.checkBox);
        }

        public void layout(int i10) {
            this.cpuText.setText(DetailedProfilerState.this.f81555df.format(DetailedProfilerState.this.getMsFromNs(this.cpuValue)) + "ms /");
            DetailedProfilerState detailedProfilerState = DetailedProfilerState.this;
            boolean color = detailedProfilerState.setColor(this.cpuText, this.cpuValue, detailedProfilerState.totalTimeCpu, this.children.isEmpty() ^ true, this.expended);
            this.gpuText.setText(" " + DetailedProfilerState.this.f81555df.format(DetailedProfilerState.this.getMsFromNs(this.gpuValue)) + DateFormat.MINUTE_SECOND);
            DetailedProfilerState detailedProfilerState2 = DetailedProfilerState.this;
            if ((color & detailedProfilerState2.setColor(this.gpuText, this.gpuValue, detailedProfilerState2.totalTimeGpu, !this.children.isEmpty(), this.expended)) && DetailedProfilerState.this.hideInsignificant) {
                setVisible(false);
            }
            if (this.visible) {
                if (this.selected) {
                    this.label.setColor(ColorRGBA.Yellow);
                    DetailedProfilerState.access$718(DetailedProfilerState.this, this.cpuValue);
                    DetailedProfilerState.access$818(DetailedProfilerState.this, this.gpuValue);
                } else {
                    this.label.setColor(ColorRGBA.White);
                }
                float f10 = -((DetailedProfilerState.this.height * 12) + 100);
                this.label.setLocalTranslation((i10 * 10) + 10, f10, 0.0f);
                float lineWidth = (400.0f - DetailedProfilerState.this.font.getLineWidth(this.gpuText.getText())) - (((DetailedProfilerState.this.maxLevel - i10) + 1) * 10);
                this.cpuText.setLocalTranslation(lineWidth - DetailedProfilerState.this.font.getLineWidth(this.cpuText.getText()), f10, 0.0f);
                this.gpuText.setLocalTranslation(lineWidth, f10, 0.0f);
                this.checkBox.setLocalTranslation(3.0f, f10, 0.0f);
                DetailedProfilerState.access$908(DetailedProfilerState.this);
                Iterator<StatLineView> it = this.children.iterator();
                while (it.hasNext()) {
                    it.next().layout(i10 + 1);
                }
            }
        }

        public void onClick(Vector2f vector2f) {
            if (this.visible) {
                Vector3f worldTranslation = this.label.getWorldTranslation();
                Vector3f worldTranslation2 = this.checkBox.getWorldTranslation();
                if (vector2f.f81609x > worldTranslation2.f81611x) {
                    float f10 = vector2f.f81610y;
                    float f11 = worldTranslation.f81612y;
                    if (f10 >= f11 || f10 <= f11 - 12.0f) {
                        return;
                    }
                    float lineWidth = DetailedProfilerState.this.font.getLineWidth(this.checkBox.getText());
                    float f12 = vector2f.f81609x;
                    float f13 = worldTranslation2.f81611x;
                    if (f12 < f13 || f12 > f13 + lineWidth) {
                        setExpended(!this.expended);
                        return;
                    }
                    boolean z10 = this.selected;
                    this.selected = !z10;
                    if (z10) {
                        this.checkBox.setText("O");
                    } else {
                        this.checkBox.setText("X");
                    }
                }
            }
        }

        public void removeFromParent() {
            this.label.removeFromParent();
            this.cpuText.removeFromParent();
            this.gpuText.removeFromParent();
            this.checkBox.removeFromParent();
        }

        public void reset() {
            this.children.clear();
            this.cpuValue = 0.0d;
            this.gpuValue = 0.0d;
        }

        public void setExpended(boolean z10) {
            this.expended = z10;
            if (z10) {
                this.label.setText("- " + this.text);
            } else {
                this.label.setText("+ " + this.text);
            }
            Iterator<StatLineView> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setVisible(z10);
            }
        }

        public void setVisible(boolean z10) {
            this.visible = z10;
            this.label.setCullHint(z10 ? Spatial.CullHint.Dynamic : Spatial.CullHint.Always);
            this.cpuText.setCullHint(z10 ? Spatial.CullHint.Dynamic : Spatial.CullHint.Always);
            this.gpuText.setCullHint(z10 ? Spatial.CullHint.Dynamic : Spatial.CullHint.Always);
            this.checkBox.setCullHint(z10 ? Spatial.CullHint.Dynamic : Spatial.CullHint.Always);
            Iterator<StatLineView> it = this.children.iterator();
            while (it.hasNext()) {
                it.next().setVisible(z10 && this.expended);
            }
        }

        public String toString() {
            return this.label.getText() + " - " + DetailedProfilerState.this.f81555df.format(DetailedProfilerState.this.getMsFromNs(this.cpuValue)) + "ms / " + DetailedProfilerState.this.f81555df.format(DetailedProfilerState.this.getMsFromNs(this.gpuValue)) + DateFormat.MINUTE_SECOND;
        }

        public void updateValues(double d10, double d11) {
            this.cpuValue += d10;
            this.gpuValue += d11;
        }
    }

    public static double access$718(DetailedProfilerState detailedProfilerState, double d10) {
        double d11 = detailedProfilerState.selectedValueCpu + d10;
        detailedProfilerState.selectedValueCpu = d11;
        return d11;
    }

    public static double access$818(DetailedProfilerState detailedProfilerState, double d10) {
        double d11 = detailedProfilerState.selectedValueGpu + d10;
        detailedProfilerState.selectedValueGpu = d11;
        return d11;
    }

    public static int access$908(DetailedProfilerState detailedProfilerState) {
        int i10 = detailedProfilerState.height;
        detailedProfilerState.height = i10 + 1;
        return i10;
    }

    private void displayData(Map<String, DetailedProfiler.StatLine> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        for (StatLineView statLineView : this.lines.values()) {
            statLineView.reset();
            statLineView.removeFromParent();
        }
        this.rootLine.reset();
        this.maxLevel = 0;
        for (String str : map.o()) {
            if (!str.equals("EndFrame")) {
                this.maxLevel = Math.max(this.maxLevel, str.split("/").length);
                StatLineView statLineView2 = getStatLineView(str);
                DetailedProfiler.StatLine statLine = map.get(str);
                statLineView2.updateValues(statLine.getAverageCpu(), statLine.getAverageGpu());
                String parent = getParent(str);
                while (parent != null) {
                    StatLineView statLineView3 = getStatLineView(parent);
                    statLineView3.updateValues(statLine.getAverageCpu(), statLine.getAverageGpu());
                    statLineView3.children.add(statLineView2);
                    statLineView2.attachTo(this.f81556ui);
                    parent = getParent(parent);
                    statLineView2 = statLineView3;
                }
                this.rootLine.children.add(statLineView2);
                statLineView2.attachTo(this.f81556ui);
                this.rootLine.updateValues(statLine.getAverageCpu(), statLine.getAverageGpu());
            }
        }
        StatLineView statLineView4 = this.rootLine;
        this.totalTimeCpu = statLineView4.cpuValue;
        this.totalTimeGpu = statLineView4.gpuValue + map.get("EndFrame").getAverageGpu();
        layout();
    }

    private String getLeaf(String str) {
        int lastIndexOf = str.lastIndexOf("/");
        return lastIndexOf >= 0 ? str.substring(lastIndexOf + 1) : str;
    }

    public double getMsFromNs(double d10) {
        return d10 / 1000000.0d;
    }

    private String getParent(String str) {
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf >= 0) {
            return str.substring(0, lastIndexOf);
        }
        return null;
    }

    private StatLineView getStatLineView(String str) {
        StatLineView statLineView = this.lines.get(str);
        if (statLineView != null) {
            return statLineView;
        }
        StatLineView statLineView2 = new StatLineView(getLeaf(str));
        this.lines.put(str, statLineView2);
        statLineView2.attachTo(this.f81556ui);
        return statLineView2;
    }

    public void handleClick(Vector2f vector2f) {
        Vector3f worldTranslation = this.hideInsignificantField.getWorldTranslation();
        float lineWidth = this.font.getLineWidth(this.hideInsignificantField.getText());
        float f10 = vector2f.f81609x;
        float f11 = worldTranslation.f81611x;
        if (f10 > f11 && f10 < f11 + lineWidth) {
            float f12 = vector2f.f81610y;
            float f13 = worldTranslation.f81612y;
            if (f12 < f13 && f12 > f13 - 12.0f) {
                this.hideInsignificant = !this.hideInsignificant;
                BitmapText bitmapText = this.hideInsignificantField;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.hideInsignificant ? "X " : "O ");
                sb2.append(INSIGNIFICANT);
                bitmapText.setText(sb2.toString());
                if (!this.hideInsignificant) {
                    this.rootLine.setExpended(true);
                }
            }
        }
        this.rootLine.onClick(vector2f);
        Iterator<StatLineView> it = this.lines.values().iterator();
        while (it.hasNext()) {
            it.next().onClick(vector2f);
        }
        layout();
    }

    private void layout() {
        this.height = 0;
        this.selectedValueCpu = 0.0d;
        this.selectedValueGpu = 0.0d;
        this.rootLine.layout(0);
        this.frameTimeValue.setText(this.f81555df.format(getMsFromNs(this.prof.getAverageFrameTime())) + DateFormat.MINUTE_SECOND);
        this.frameTimeValue.setLocalTranslation(200.0f, -10.0f, 0.0f);
        setColor(this.frameTimeValue, this.prof.getAverageFrameTime(), this.totalTimeCpu, false, false);
        this.frameCpuTimeValue.setText(this.f81555df.format(getMsFromNs(this.totalTimeCpu)) + DateFormat.MINUTE_SECOND);
        this.frameCpuTimeValue.setLocalTranslation(new Vector3f(100.0f - (this.bigFont.getLineWidth(this.frameCpuTimeValue.getText()) / 2.0f), -60.0f, 0.0f));
        BitmapText bitmapText = this.frameCpuTimeValue;
        double d10 = this.totalTimeCpu;
        setColor(bitmapText, d10, d10, false, false);
        this.frameGpuTimeValue.setText(this.f81555df.format(getMsFromNs(this.totalTimeGpu)) + DateFormat.MINUTE_SECOND);
        this.frameGpuTimeValue.setLocalTranslation(new Vector3f(300.0f - (this.bigFont.getLineWidth(this.frameGpuTimeValue.getText()) / 2.0f), -60.0f, 0.0f));
        BitmapText bitmapText2 = this.frameGpuTimeValue;
        double d11 = this.totalTimeGpu;
        setColor(bitmapText2, d11, d11, false, false);
        this.selectedField.setText("Selected: " + this.f81555df.format(getMsFromNs(this.selectedValueCpu)) + "ms / " + this.f81555df.format(getMsFromNs(this.selectedValueGpu)) + DateFormat.MINUTE_SECOND);
        BitmapText bitmapText3 = this.selectedField;
        bitmapText3.setLocalTranslation(300.0f - (this.font.getLineWidth(bitmapText3.getText()) / 2.0f), -85.0f, 0.0f);
    }

    @Override
    public void cleanup(Application application) {
        this.f81556ui.detachAllChildren();
        InputManager inputManager = getApplication().getInputManager();
        inputManager.deleteMapping(TOGGLE_KEY);
        inputManager.deleteMapping(CLICK_KEY);
        inputManager.removeListener(this.inputListener);
    }

    public Node getUiNode() {
        return this.f81556ui;
    }

    @Override
    public void initialize(Application application) {
        Material material = new Material(application.getAssetManager(), "Common/MatDefs/Misc/Unshaded.j3md");
        material.setColor(SerializableShaderEntry.f81153g, new ColorRGBA(0.0f, 0.0f, 0.0f, 0.5f));
        material.getAdditionalRenderState().setBlendMode(RenderState.BlendMode.Alpha);
        Geometry geometry = new Geometry("StatsDarken", new Quad(400.0f, application.getCamera().getHeight()));
        geometry.setMaterial(material);
        geometry.setLocalTranslation(0.0f, -application.getCamera().getHeight(), -1.0f);
        this.f81556ui.attachChild(geometry);
        this.f81556ui.setLocalTranslation(application.getCamera().getWidth() - 400, application.getCamera().getHeight(), 0.0f);
        this.font = application.getAssetManager().loadFont("Interface/Fonts/Console.fnt");
        this.bigFont = application.getAssetManager().loadFont(e.f94071A);
        this.prof.setRenderer(application.getRenderer());
        StatLineView statLineView = new StatLineView("Frame");
        this.rootLine = statLineView;
        statLineView.attachTo(this.f81556ui);
        BitmapText bitmapText = new BitmapText(this.bigFont);
        bitmapText.setText("Total Frame Time: ");
        this.f81556ui.attachChild(bitmapText);
        bitmapText.setLocalTranslation(new Vector3f(200.0f - this.bigFont.getLineWidth(bitmapText.getText()), -10.0f, 0.0f));
        BitmapText bitmapText2 = new BitmapText(this.bigFont);
        bitmapText2.setText("CPU");
        this.f81556ui.attachChild(bitmapText2);
        bitmapText2.setLocalTranslation(100.0f - (this.bigFont.getLineWidth(bitmapText2.getText()) / 2.0f), -40.0f, 0.0f);
        BitmapText bitmapText3 = new BitmapText(this.bigFont);
        bitmapText3.setText("GPU");
        this.f81556ui.attachChild(bitmapText3);
        bitmapText3.setLocalTranslation(300.0f - (this.bigFont.getLineWidth(bitmapText3.getText()) / 2.0f), -40.0f, 0.0f);
        this.frameTimeValue = new BitmapText(this.bigFont);
        this.frameCpuTimeValue = new BitmapText(this.bigFont);
        this.frameGpuTimeValue = new BitmapText(this.bigFont);
        BitmapText bitmapText4 = new BitmapText(this.font);
        this.selectedField = bitmapText4;
        bitmapText4.setText("Selected: ");
        this.selectedField.setLocalTranslation(200.0f, -85.0f, 0.0f);
        this.selectedField.setColor(ColorRGBA.Yellow);
        this.f81556ui.attachChild(this.frameTimeValue);
        this.f81556ui.attachChild(this.frameCpuTimeValue);
        this.f81556ui.attachChild(this.frameGpuTimeValue);
        this.f81556ui.attachChild(this.selectedField);
        BitmapText bitmapText5 = new BitmapText(this.font);
        this.hideInsignificantField = bitmapText5;
        bitmapText5.setText("O Hide insignificant stat");
        this.hideInsignificantField.setLocalTranslation(10.0f, -85.0f, 0.0f);
        this.f81556ui.attachChild(this.hideInsignificantField);
        InputManager inputManager = application.getInputManager();
        if (inputManager != null) {
            inputManager.addMapping(TOGGLE_KEY, new KeyTrigger(64));
            inputManager.addMapping(CLICK_KEY, new MouseButtonTrigger(0));
            inputManager.addListener(this.inputListener, TOGGLE_KEY, CLICK_KEY);
        }
    }

    @Override
    public void onDisable() {
        getApplication().setAppProfiler(null);
        this.f81556ui.removeFromParent();
    }

    @Override
    public void onEnable() {
        getApplication().setAppProfiler(this.prof);
        ((SimpleApplication) getApplication()).getGuiNode().attachChild(this.f81556ui);
    }

    @Override
    public void postRender() {
        if (this.time > 1.0f) {
            this.prof.appStep(AppStep.EndFrame);
            displayData(this.prof.getStats());
            this.time = 0.0f;
        }
    }

    public boolean setColor(BitmapText bitmapText, double d10, double d11, boolean z10, boolean z11) {
        boolean z12 = z10 && z11;
        if (d10 > 3.3333333333333332E7d) {
            bitmapText.setColor(z12 ? this.dimmedRed : ColorRGBA.Red);
            return false;
        }
        if (d10 > 1.6666666666666666E7d) {
            bitmapText.setColor(z12 ? this.dimmedOrange : ColorRGBA.Orange);
            return false;
        }
        if (d10 > d11 / 3.0d) {
            bitmapText.setColor(z12 ? this.dimmedGreen : ColorRGBA.Green);
            return false;
        }
        if (d10 < 30000.0d) {
            bitmapText.setColor(ColorRGBA.DarkGray);
            return true;
        }
        bitmapText.setColor(z12 ? this.dimmedWhite : ColorRGBA.White);
        return false;
    }

    @Override
    public void update(float f10) {
        this.time += f10;
    }
}
