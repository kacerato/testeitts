package com.ardor3d.util.stat.graph;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.ContextCapabilities;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.queue.RenderBucketType;
import com.ardor3d.renderer.state.BlendState;
import com.ardor3d.scenegraph.FloatBufferData;
import com.ardor3d.scenegraph.Line;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.hint.CullHint;
import com.ardor3d.util.Constants;
import com.ardor3d.util.geom.BufferUtils;
import com.ardor3d.util.stat.MultiStatSample;
import com.ardor3d.util.stat.StatCollector;
import com.ardor3d.util.stat.StatType;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class TimedAreaGrapher extends AbstractStatGrapher implements TableLinkable {
    private static final int majorHBar = 20;
    private static final int majorVBar = 10;
    private BlendState _defBlendState;
    private final HashMap<StatType, AreaEntry> _entries;
    protected int _eventCount;
    protected Node _graphRoot;
    protected Line _horizontals;
    private float _off;
    protected float _startMarker;
    protected int _threshold;
    private float _vSpan;
    protected Line _verticals;
    public static final StatType Vertical = new StatType("_timedGrapher_vert");
    public static final StatType Horizontal = new StatType("_timedGrapher_horiz");

    public class AreaEntry {
        public Mesh area;
        public int maxSamples;
        public List<Vector3> verts = new ArrayList();
        public boolean visited;

        public AreaEntry(int i10, StatType statType) {
            this.maxSamples = i10;
            Mesh mesh = new Mesh("a");
            this.area = mesh;
            int i11 = i10 * 2;
            mesh.getMeshData().setVertexBuffer(BufferUtils.createVector3Buffer(i11));
            this.area.getMeshData().setIndexBuffer(BufferUtils.createIntBuffer(i11));
            for (int i12 = 0; i12 < i11; i12++) {
                this.area.getMeshData().getIndices().put2(i12);
            }
            this.area.getMeshData().getIndexBuffer().rewind();
            this.area.getSceneHints().setRenderBucketType(RenderBucketType.Ortho);
            this.area.getMeshData().setIndexMode(IndexMode.LineStrip);
            this.area.setDefaultColor(TimedAreaGrapher.this.getColorConfig(statType, ConfigKeys.Color.name(), new ColorRGBA(ColorRGBA.LIGHT_GRAY)));
            if (TimedAreaGrapher.this.getBooleanConfig(statType, ConfigKeys.ShowAreas.name(), true)) {
                return;
            }
            this.area.getSceneHints().setCullHint(CullHint.Always);
        }
    }

    public enum ConfigKeys {
        Antialias,
        ShowAreas,
        Width,
        Stipple,
        Color
    }

    public TimedAreaGrapher(int i10, int i11, Renderer renderer, ContextCapabilities contextCapabilities) {
        super(i10, i11, renderer, contextCapabilities);
        this._graphRoot = new Node("root");
        this._eventCount = 0;
        this._threshold = 1;
        this._startMarker = 0.0f;
        this._entries = new HashMap<>();
        this._defBlendState = null;
        createHLines();
        BlendState blendState = new BlendState();
        this._defBlendState = blendState;
        blendState.setEnabled(true);
        this._defBlendState.setBlendEnabled(true);
        this._defBlendState.setSourceFunction(BlendState.SourceFunction.SourceAlpha);
        this._defBlendState.setDestinationFunction(BlendState.DestinationFunction.OneMinusSourceAlpha);
        this._graphRoot.setRenderState(this._defBlendState);
        this._graphRoot.getSceneHints().setCullHint(CullHint.Never);
    }

    private float calcVSpan() {
        return (this._textureRenderer.getWidth() * 10) / StatCollector.getMaxSamples();
    }

    private void createHLines() {
        int width = this._textureRenderer.getWidth();
        int height = this._textureRenderer.getHeight();
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(10);
        float f10 = (height * 20) / 100.0f;
        int i10 = 0;
        int i11 = 0;
        while (i10 < createVector3Buffer.capacity()) {
            float f11 = i11;
            createVector3Buffer.put(0.0f).put(f11).put(0.0f);
            createVector3Buffer.put(width).put(f11).put(0.0f);
            i10 += 6;
            i11 = (int) (f11 + f10);
        }
        Line line = new Line("horiz", createVector3Buffer, (FloatBuffer) null, (FloatBuffer) null, (FloatBufferData) null);
        this._horizontals = line;
        line.getMeshData().setIndexMode(IndexMode.Lines);
        this._horizontals.getSceneHints().setRenderBucketType(RenderBucketType.Ortho);
        Line line2 = this._horizontals;
        StatType statType = Horizontal;
        line2.setDefaultColor(getColorConfig(statType, ConfigKeys.Color.name(), new ColorRGBA(ColorRGBA.BLUE)));
        this._horizontals.setLineWidth(getIntConfig(statType, ConfigKeys.Width.name(), 1));
        this._horizontals.setStipplePattern(getShortConfig(statType, ConfigKeys.Stipple.name(), (short) -256));
        this._horizontals.setAntialiased(getBooleanConfig(statType, ConfigKeys.Antialias.name(), true));
    }

    private void createVLines() {
        int width = this._textureRenderer.getWidth();
        int height = this._textureRenderer.getHeight();
        float f10 = width;
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer((((int) (f10 / this._vSpan)) + 1) * 2);
        float f11 = this._vSpan;
        while (f11 <= this._vSpan + f10) {
            createVector3Buffer.put(f11).put(0.0f).put(0.0f);
            createVector3Buffer.put(f11).put(height).put(0.0f);
            f11 += this._vSpan;
        }
        Line line = new Line("vert", createVector3Buffer, (FloatBuffer) null, (FloatBuffer) null, (FloatBufferData) null);
        this._verticals = line;
        line.getMeshData().setIndexMode(IndexMode.Lines);
        this._verticals.getSceneHints().setRenderBucketType(RenderBucketType.Ortho);
        Line line2 = this._verticals;
        StatType statType = Vertical;
        line2.setDefaultColor(getColorConfig(statType, ConfigKeys.Color.name(), new ColorRGBA(ColorRGBA.RED)));
        this._verticals.setLineWidth(getIntConfig(statType, ConfigKeys.Width.name(), 1));
        this._verticals.setStipplePattern(getShortConfig(statType, ConfigKeys.Stipple.name(), (short) -256));
        this._verticals.setAntialiased(getBooleanConfig(statType, ConfigKeys.Antialias.name(), true));
    }

    private void shiftVerticals() {
        double maxSamples = (-(this._off * this._textureRenderer.getWidth())) / (StatCollector.getMaxSamples() * StatCollector.getSampleRate());
        ReadOnlyVector3 translation = this._verticals.getTranslation();
        this._verticals.setTranslation(maxSamples, translation.getY(), translation.getZ());
    }

    public int getThreshold() {
        return this._threshold;
    }

    @Override
    public void reset() {
        synchronized (StatCollector.getHistorical()) {
            try {
                Iterator<StatType> it = this._entries.o().iterator();
                while (it.hasNext()) {
                    this._entries.get(it.next()).area.removeFromParent();
                    it.remove();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setThreshold(int i10) {
        this._threshold = i10;
    }

    @Override
    public void statsUpdated() {
        List<MultiStatSample> list;
        MultiStatSample multiStatSample;
        double d10;
        Iterator<StatType> it;
        if (isEnabled() && Constants.updateGraphs) {
            StatCollector.pause();
            int i10 = this._gWidth;
            int i11 = this._gHeight;
            this._eventCount++;
            this._off = (float) (this._off + StatCollector.getStartOffset());
            if (this._eventCount < this._threshold) {
                return;
            }
            int i12 = 0;
            this._eventCount = 0;
            if (!this._graphRoot.equals(this._horizontals.getParent())) {
                this._graphRoot.attachChild(this._horizontals);
            }
            float calcVSpan = calcVSpan();
            if (this._verticals == null || calcVSpan != this._vSpan) {
                this._vSpan = calcVSpan;
                createVLines();
            }
            this._off = (float) (this._off % (StatCollector.getSampleRate() * 10.0d));
            if (!this._graphRoot.equals(this._verticals.getParent())) {
                this._graphRoot.attachChild(this._verticals);
            }
            shiftVerticals();
            for (StatType statType : this._entries.o()) {
                this._entries.get(statType).visited = false;
                this._entries.get(statType).verts.clear();
            }
            List<MultiStatSample> historical = StatCollector.getHistorical();
            synchronized (historical) {
                while (true) {
                    try {
                        double d11 = 0.0d;
                        if (i12 >= StatCollector.getHistorical().size()) {
                            break;
                        }
                        MultiStatSample multiStatSample2 = StatCollector.getHistorical().get(i12);
                        double d12 = 0.0d;
                        for (StatType statType2 : multiStatSample2.getStatTypes()) {
                            if (this._config.containsKey(statType2)) {
                                d12 = Math.max(multiStatSample2.getStatValue(statType2).getAccumulatedValue(), d12);
                            }
                        }
                        Iterator<StatType> it2 = multiStatSample2.getStatTypes().iterator();
                        while (it2.hasNext()) {
                            StatType next = it2.next();
                            if (this._config.containsKey(next)) {
                                AreaEntry areaEntry = this._entries.get(next);
                                if (areaEntry == null || areaEntry.maxSamples != StatCollector.getMaxSamples()) {
                                    areaEntry = new AreaEntry(StatCollector.getMaxSamples(), next);
                                    this._entries.put(next, areaEntry);
                                }
                                list = historical;
                                double d13 = i12;
                                double accumulatedValue = (multiStatSample2.getStatValue(next).getAccumulatedValue() / d12) + d11;
                                multiStatSample = multiStatSample2;
                                d10 = d12;
                                it = it2;
                                try {
                                    areaEntry.verts.add(new Vector3(d13, (float) accumulatedValue, 0.0d));
                                    areaEntry.verts.add(new Vector3(d13, (float) d11, 0.0d));
                                    areaEntry.visited = true;
                                    d11 = accumulatedValue;
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            } else {
                                list = historical;
                                multiStatSample = multiStatSample2;
                                d10 = d12;
                                it = it2;
                            }
                            it2 = it;
                            historical = list;
                            multiStatSample2 = multiStatSample;
                            d12 = d10;
                        }
                        i12++;
                    } catch (Throwable th3) {
                        th = th3;
                        list = historical;
                    }
                }
                float maxSamples = i10 / (StatCollector.getMaxSamples() - 1);
                float f10 = i11 / 1.02f;
                Iterator<StatType> it3 = this._entries.o().iterator();
                while (it3.hasNext()) {
                    AreaEntry areaEntry2 = this._entries.get(it3.next());
                    if (areaEntry2.visited) {
                        List<Vector3> list2 = areaEntry2.verts;
                        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer((ReadOnlyVector3[]) list2.toArray(new Vector3[list2.size()]));
                        createFloatBuffer.rewind();
                        areaEntry2.area.getMeshData().setVertexBuffer(createFloatBuffer);
                        areaEntry2.area.setScale(new Vector3(maxSamples, f10, 1.0d));
                        areaEntry2.area.getMeshData().getIndexBuffer().limit(areaEntry2.verts.size());
                        if (!this._graphRoot.equals(areaEntry2.area.getParent())) {
                            this._graphRoot.attachChild(areaEntry2.area);
                        }
                    } else {
                        areaEntry2.area.removeFromParent();
                        it3.remove();
                    }
                }
                this._graphRoot.updateGeometricState(0.0d, true);
                this._textureRenderer.render(this._graphRoot, this._texture, 3);
                StatCollector.resume();
            }
        }
    }

    @Override
    public Line updateLineKey(StatType statType, Line line) {
        Line line2;
        if (line == null) {
            line2 = new Line("lk", BufferUtils.createVector3Buffer(2), (FloatBuffer) null, (FloatBuffer) null, (FloatBufferData) null);
            FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(new Vector3(0.0d, 0.0d, 0.0d), new Vector3(30.0d, 0.0d, 0.0d));
            createFloatBuffer.rewind();
            line2.getMeshData().setVertexBuffer(createFloatBuffer);
        } else {
            line2 = line;
        }
        line2.getSceneHints().setRenderBucketType(RenderBucketType.Ortho);
        line2.getMeshData().setIndexMode(IndexMode.LineLoop);
        line2.setDefaultColor(getColorConfig(statType, ConfigKeys.Color.name(), new ColorRGBA(ColorRGBA.LIGHT_GRAY)));
        line2.setLineWidth(getIntConfig(statType, ConfigKeys.Width.name(), 3));
        line2.setStipplePattern(getShortConfig(statType, ConfigKeys.Stipple.name(), (short) -1));
        line2.setAntialiased(getBooleanConfig(statType, ConfigKeys.Antialias.name(), true));
        if (!getBooleanConfig(statType, ConfigKeys.ShowAreas.name(), true)) {
            line2.getSceneHints().setCullHint(CullHint.Always);
        }
        return line2;
    }
}
