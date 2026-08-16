package com.ardor3d.util.stat.graph;

import android.icu.text.DateFormat;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.ContextCapabilities;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.queue.RenderBucketType;
import com.ardor3d.renderer.state.BlendState;
import com.ardor3d.scenegraph.Line;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.hint.CullHint;
import com.ardor3d.scenegraph.shape.Quad;
import com.ardor3d.ui.text.BasicText;
import com.ardor3d.util.Constants;
import com.ardor3d.util.stat.MultiStatSample;
import com.ardor3d.util.stat.StatCollector;
import com.ardor3d.util.stat.StatListener;
import com.ardor3d.util.stat.StatType;
import com.ardor3d.util.stat.StatValue;
import com.ardor3d.util.stat.graph.LineGrapher;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;

public class TabledLabelGrapher extends AbstractStatGrapher {
    public static final int DEFAULT_DECIMALS = 2;
    protected Quad _bgQuad;
    protected int _columns;
    protected BlendState _defBlendState;
    private final HashMap<StatType, LabelEntry> _entries;
    protected int _eventCount;
    protected Node _graphRoot;
    private AbstractStatGrapher _linkedGraph;
    private boolean _minimalBackground;
    protected int _threshold;

    public enum ConfigKeys {
        TextColor,
        Name,
        FrameAverage,
        Decimals,
        FontScale,
        ValueScale,
        Abbreviate
    }

    public class LabelEntry {
        StatType _type;
        Line lineKey;
        BasicText text;
        boolean visited;

        public LabelEntry(StatType statType) {
            this._type = statType;
            this.text = BasicText.createDefaultTextLabel("label", TabledLabelGrapher.this.getStringConfig(statType, ConfigKeys.Name.name(), statType.getStatName()));
        }
    }

    public TabledLabelGrapher(int i10, int i11, Renderer renderer, ContextCapabilities contextCapabilities) {
        super(i10, i11, renderer, contextCapabilities);
        this._graphRoot = new Node("root");
        this._eventCount = 0;
        this._threshold = 1;
        this._columns = 1;
        this._bgQuad = new Quad("bgQuad", 1.0d, 1.0d);
        this._defBlendState = null;
        this._entries = new HashMap<>();
        BlendState blendState = new BlendState();
        this._defBlendState = blendState;
        blendState.setEnabled(true);
        this._defBlendState.setBlendEnabled(true);
        this._defBlendState.setSourceFunction(BlendState.SourceFunction.SourceAlpha);
        this._defBlendState.setDestinationFunction(BlendState.DestinationFunction.OneMinusSourceAlpha);
        this._graphRoot.setRenderState(this._defBlendState);
        this._bgQuad.getSceneHints().setRenderBucketType(RenderBucketType.Ortho);
        this._bgQuad.setDefaultColor(new ColorRGBA(ColorRGBA.BLACK));
        this._graphRoot.getSceneHints().setCullHint(CullHint.Never);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a A[LOOP:0: B:14:0x0058->B:15:0x005a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String stripVal(double d10, StatType statType) {
        String str;
        int intConfig;
        double doubleConfig = d10 * getDoubleConfig(statType, ConfigKeys.ValueScale.name(), 1.0d);
        if (getBooleanConfig(statType, ConfigKeys.Abbreviate.name(), true)) {
            if (doubleConfig >= 1000000.0d) {
                doubleConfig /= 1000000.0d;
                str = DateFormat.MINUTE;
            } else if (doubleConfig >= 1000.0d) {
                doubleConfig /= 1000.0d;
                str = "k";
            }
            intConfig = getIntConfig(statType, ConfigKeys.Decimals.name(), 2);
            if (!"".equals(str) && intConfig == 0) {
                intConfig = 1;
            }
            StringBuilder sb2 = new StringBuilder(intConfig <= 0 ? "0.0" : "0");
            for (int i10 = 1; i10 < intConfig; i10++) {
                sb2.append("0");
            }
            return new DecimalFormat(sb2.toString()).format(doubleConfig) + str;
        }
        str = "";
        intConfig = getIntConfig(statType, ConfigKeys.Decimals.name(), 2);
        if (!"".equals(str)) {
            intConfig = 1;
        }
        StringBuilder sb22 = new StringBuilder(intConfig <= 0 ? "0.0" : "0");
        while (i10 < intConfig) {
        }
        return new DecimalFormat(sb22.toString()).format(doubleConfig) + str;
    }

    public int getColumns() {
        return this._columns;
    }

    public int getThreshold() {
        return this._threshold;
    }

    public boolean isMinimalBackground() {
        return this._minimalBackground;
    }

    public void linkTo(AbstractStatGrapher abstractStatGrapher) {
        this._linkedGraph = abstractStatGrapher;
    }

    @Override
    public void reset() {
        synchronized (StatCollector.getHistorical()) {
            try {
                Iterator<StatType> it = this._entries.o().iterator();
                while (it.hasNext()) {
                    LabelEntry labelEntry = this._entries.get(it.next());
                    labelEntry.text.removeFromParent();
                    labelEntry.lineKey.removeFromParent();
                    it.remove();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setColumns(int i10) {
        if (i10 >= 1) {
            this._columns = i10;
            return;
        }
        throw new IllegalArgumentException("columns must be >= 1 (" + i10 + ")");
    }

    public void setMinimalBackground(boolean z10) {
        this._minimalBackground = z10;
    }

    public void setThreshold(int i10) {
        this._threshold = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x01cb A[Catch: all -> 0x0096, TryCatch #0 {all -> 0x0096, blocks: (B:17:0x0054, B:18:0x0074, B:20:0x007a, B:22:0x0086, B:25:0x008d, B:26:0x0099, B:28:0x00a3, B:29:0x00b4, B:31:0x00c3, B:33:0x00d1, B:35:0x011d, B:36:0x0136, B:39:0x014b, B:41:0x0160, B:43:0x0166, B:45:0x016c, B:47:0x017e, B:48:0x0183, B:49:0x01c2, B:51:0x01cb, B:58:0x012f, B:59:0x00cc, B:65:0x01e0, B:66:0x01ef, B:68:0x01f5, B:71:0x0205, B:73:0x020e, B:74:0x0211, B:79:0x0215), top: B:16:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01d0  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void statsUpdated() {
        double d10;
        double d11;
        float f10;
        int i10;
        float f11;
        float f12;
        Iterator<StatType> it;
        if (isEnabled() && Constants.updateGraphs) {
            StatCollector.pause();
            int i11 = this._gWidth;
            int i12 = this._gHeight;
            boolean z10 = true;
            int i13 = this._eventCount + 1;
            this._eventCount = i13;
            if (i13 < this._threshold) {
                return;
            }
            this._eventCount = 0;
            double d12 = i12 - 3;
            float f13 = i11;
            float columns = f13 / getColumns();
            Iterator<StatType> it2 = this._entries.o().iterator();
            while (it2.hasNext()) {
                this._entries.get(it2.next()).visited = false;
            }
            synchronized (StatCollector.getHistorical()) {
                try {
                    MultiStatSample multiStatSample = StatCollector.getHistorical().get(StatCollector.getHistorical().size() - 1);
                    Iterator<StatType> it3 = this._config.o().iterator();
                    int i14 = 0;
                    d10 = 0.0d;
                    while (it3.hasNext()) {
                        StatType next = it3.next();
                        StatValue statValue = multiStatSample.getStatValue(next);
                        if (statValue == null) {
                            if (StatCollector.hasHistoricalStat(next)) {
                                statValue = new StatValue();
                                statValue.incrementIterations();
                            }
                        }
                        LabelEntry labelEntry = this._entries.get(next);
                        if (labelEntry == null) {
                            labelEntry = new LabelEntry(next);
                            this._entries.put(next, labelEntry);
                            this._graphRoot.attachChild(labelEntry.text);
                        }
                        labelEntry.visited = z10;
                        double d13 = d12;
                        double averageValue = getBooleanConfig(next, ConfigKeys.FrameAverage.name(), false) ? statValue.getAverageValue() : statValue.getAccumulatedValue();
                        BasicText basicText = labelEntry.text;
                        StringBuilder sb2 = new StringBuilder();
                        MultiStatSample multiStatSample2 = multiStatSample;
                        sb2.append(getStringConfig(next, ConfigKeys.Name.name(), next.getStatName()));
                        sb2.append(" ");
                        sb2.append(stripVal(averageValue, next));
                        basicText.setText(sb2.toString());
                        labelEntry.text.setScale(getFloatConfig(next, ConfigKeys.FontScale.name(), 0.8f));
                        BasicText basicText2 = labelEntry.text;
                        String name = ConfigKeys.TextColor.name();
                        AbstractStatGrapher abstractStatGrapher = this._linkedGraph;
                        basicText2.setTextColor(getColorConfig(next, name, abstractStatGrapher != null ? abstractStatGrapher.getColorConfig(next, LineGrapher.ConfigKeys.Color.name(), new ColorRGBA(ColorRGBA.WHITE)) : new ColorRGBA(ColorRGBA.WHITE)));
                        double height = labelEntry.text.getHeight();
                        if (d10 >= height) {
                            height = d10;
                        }
                        Iterator<StatType> it4 = it3;
                        int i15 = i14;
                        labelEntry.text.setTranslation(i14 * columns, d13, 0.0d);
                        AbstractStatGrapher abstractStatGrapher2 = this._linkedGraph;
                        if (abstractStatGrapher2 != null && abstractStatGrapher2.hasConfig(next)) {
                            StatListener statListener = this._linkedGraph;
                            if (statListener instanceof TableLinkable) {
                                Line updateLineKey = ((TableLinkable) statListener).updateLineKey(next, labelEntry.lineKey);
                                labelEntry.lineKey = updateLineKey;
                                Node parent = updateLineKey.getParent();
                                Node node = this._graphRoot;
                                if (parent != node) {
                                    node.attachChild(labelEntry.lineKey);
                                }
                                ReadOnlyVector3 translation = labelEntry.text.getTranslation();
                                f11 = f13;
                                f12 = columns;
                                it = it4;
                                labelEntry.lineKey.setTranslation((float) (translation.getX() + labelEntry.text.getWidth() + 15.0d), (float) (translation.getY() + (labelEntry.text.getHeight() * 0.5d)), 0.0d);
                                i14 = (i15 + 1) % getColumns();
                                if (i14 != 0) {
                                    d12 = d13 - height;
                                    d10 = 0.0d;
                                } else {
                                    d10 = height;
                                    d12 = d13;
                                }
                                multiStatSample = multiStatSample2;
                                f13 = f11;
                                columns = f12;
                                it3 = it;
                                z10 = true;
                            }
                        }
                        f11 = f13;
                        f12 = columns;
                        it = it4;
                        i14 = (i15 + 1) % getColumns();
                        if (i14 != 0) {
                        }
                        multiStatSample = multiStatSample2;
                        f13 = f11;
                        columns = f12;
                        it3 = it;
                        z10 = true;
                    }
                    d11 = d12;
                    f10 = f13;
                    i10 = i14;
                    Iterator<StatType> it5 = this._entries.o().iterator();
                    while (it5.hasNext()) {
                        LabelEntry labelEntry2 = this._entries.get(it5.next());
                        if (!labelEntry2.visited) {
                            labelEntry2.text.removeFromParent();
                            Line line = labelEntry2.lineKey;
                            if (line != null) {
                                line.removeFromParent();
                            }
                            it5.remove();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this._graphRoot.updateGeometricState(0.0d, true);
            ColorRGBA colorRGBA = ColorRGBA.fetchTempInstance().set(this._textureRenderer.getBackgroundColor());
            if (this._minimalBackground) {
                colorRGBA.setAlpha(0.0f);
                this._textureRenderer.setBackgroundColor(colorRGBA);
                double d14 = d11 - 3.0d;
                if (i10 != 0) {
                    d14 -= d10;
                }
                double d15 = i12;
                double d16 = d15 - d14;
                this._bgQuad.resize(i11, d16);
                this._bgQuad.setRenderState(this._defBlendState);
                this._bgQuad.setTranslation(f10 / 2.0f, d15 - (d16 / 2.0d), 0.0d);
                this._bgQuad.updateGeometricState(0.0d, true);
                this._textureRenderer.render(this._bgQuad, this._texture, 3);
                this._textureRenderer.render(this._graphRoot, this._texture, 0);
            } else {
                colorRGBA.setAlpha(1.0f);
                this._textureRenderer.setBackgroundColor(colorRGBA);
                this._textureRenderer.render(this._graphRoot, this._texture, 3);
            }
            ColorRGBA.releaseTempInstance(colorRGBA);
            StatCollector.resume();
        }
    }
}
