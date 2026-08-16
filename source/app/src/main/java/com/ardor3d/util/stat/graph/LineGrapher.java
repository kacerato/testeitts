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
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Point;
import com.ardor3d.scenegraph.hint.CullHint;
import com.ardor3d.scenegraph.hint.SceneHints;
import com.ardor3d.util.Constants;
import com.ardor3d.util.geom.BufferUtils;
import com.ardor3d.util.stat.MultiStatSample;
import com.ardor3d.util.stat.StatCollector;
import com.ardor3d.util.stat.StatType;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class LineGrapher extends AbstractStatGrapher implements TableLinkable {
    private static final int majorHBar = 20;
    private static final int majorVBar = 10;
    private BlendState _defBlendState;
    private final HashMap<StatType, LineEntry> _entries;
    protected int _eventCount;
    protected Node _graphRoot;
    protected Line _horizontals;
    private float _off;
    protected float _startMarker;
    protected int _threshold;
    private float _vSpan;
    protected Line _verticals;
    public static final StatType Vertical = new StatType("_lineGrapher_vert");
    public static final StatType Horizontal = new StatType("_lineGrapher_horiz");

    public enum ConfigKeys {
        ShowPoints,
        PointSize,
        PointColor,
        Antialias,
        ShowLines,
        Width,
        Stipple,
        Color,
        FrameAverage
    }

    public class LineEntry {
        public Line line;
        public int maxSamples;
        public Point point;
        public boolean visited;
        public List<Vector3> verts = new ArrayList();
        public double min = 0.0d;
        public double max = 10.0d;

        public LineEntry(int i10, StatType statType) {
            this.maxSamples = i10;
            Point point = new Point(a.f72594b, BufferUtils.createVector3Buffer(i10), (FloatBuffer) null, (FloatBuffer) null, (FloatBufferData) null);
            this.point = point;
            SceneHints sceneHints = point.getSceneHints();
            RenderBucketType renderBucketType = RenderBucketType.Ortho;
            sceneHints.setRenderBucketType(renderBucketType);
            this.point.setDefaultColor(LineGrapher.this.getColorConfig(statType, ConfigKeys.PointColor.name(), new ColorRGBA(ColorRGBA.WHITE)));
            this.point.setPointSize(LineGrapher.this.getIntConfig(statType, ConfigKeys.PointSize.name(), 5));
            Point point2 = this.point;
            ConfigKeys configKeys = ConfigKeys.Antialias;
            point2.setAntialiased(LineGrapher.this.getBooleanConfig(statType, configKeys.name(), true));
            if (!LineGrapher.this.getBooleanConfig(statType, ConfigKeys.ShowPoints.name(), false)) {
                this.point.getSceneHints().setCullHint(CullHint.Always);
            }
            Line line = new Line("l", BufferUtils.createVector3Buffer(i10), (FloatBuffer) null, (FloatBuffer) null, (FloatBufferData) null);
            this.line = line;
            line.getSceneHints().setRenderBucketType(renderBucketType);
            this.line.getMeshData().setIndexMode(IndexMode.LineStrip);
            this.line.setDefaultColor(LineGrapher.this.getColorConfig(statType, ConfigKeys.Color.name(), new ColorRGBA(ColorRGBA.LIGHT_GRAY)));
            this.line.setLineWidth(LineGrapher.this.getIntConfig(statType, ConfigKeys.Width.name(), 3));
            this.line.setStipplePattern(LineGrapher.this.getShortConfig(statType, ConfigKeys.Stipple.name(), (short) -1));
            this.line.setAntialiased(LineGrapher.this.getBooleanConfig(statType, configKeys.name(), true));
            if (LineGrapher.this.getBooleanConfig(statType, ConfigKeys.ShowLines.name(), true)) {
                return;
            }
            this.line.getSceneHints().setCullHint(CullHint.Always);
        }
    }

    public LineGrapher(int i10, int i11, Renderer renderer, ContextCapabilities contextCapabilities) {
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
                    LineEntry lineEntry = this._entries.get(it.next());
                    lineEntry.line.removeFromParent();
                    lineEntry.point.removeFromParent();
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

    /* JADX WARN: Removed duplicated region for block: B:42:0x0112 A[Catch: all -> 0x00f5, TryCatch #0 {all -> 0x00f5, blocks: (B:28:0x00b2, B:30:0x00bc, B:31:0x00d0, B:33:0x00d6, B:35:0x00e2, B:37:0x00ec, B:40:0x0106, B:42:0x0112, B:43:0x0123, B:45:0x0139, B:46:0x013b, B:49:0x011b, B:50:0x00f8, B:51:0x013e, B:53:0x0148, B:57:0x015e, B:59:0x0163), top: B:27:0x00b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0139 A[Catch: all -> 0x00f5, TryCatch #0 {all -> 0x00f5, blocks: (B:28:0x00b2, B:30:0x00bc, B:31:0x00d0, B:33:0x00d6, B:35:0x00e2, B:37:0x00ec, B:40:0x0106, B:42:0x0112, B:43:0x0123, B:45:0x0139, B:46:0x013b, B:49:0x011b, B:50:0x00f8, B:51:0x013e, B:53:0x0148, B:57:0x015e, B:59:0x0163), top: B:27:0x00b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011b A[Catch: all -> 0x00f5, TryCatch #0 {all -> 0x00f5, blocks: (B:28:0x00b2, B:30:0x00bc, B:31:0x00d0, B:33:0x00d6, B:35:0x00e2, B:37:0x00ec, B:40:0x0106, B:42:0x0112, B:43:0x0123, B:45:0x0139, B:46:0x013b, B:49:0x011b, B:50:0x00f8, B:51:0x013e, B:53:0x0148, B:57:0x015e, B:59:0x0163), top: B:27:0x00b2 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void statsUpdated() {
        double averageValue;
        if (isEnabled() && Constants.updateGraphs) {
            StatCollector.pause();
            int i10 = this._gWidth;
            int i11 = this._gHeight;
            this._eventCount++;
            this._off = (float) (this._off + StatCollector.getStartOffset());
            if (this._eventCount < this._threshold) {
                return;
            }
            boolean z10 = false;
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
            synchronized (StatCollector.getHistorical()) {
                int i12 = 0;
                while (i12 < StatCollector.getHistorical().size()) {
                    try {
                        MultiStatSample multiStatSample = StatCollector.getHistorical().get(i12);
                        for (StatType statType2 : this._config.o()) {
                            if (multiStatSample.containsStat(statType2)) {
                                LineEntry lineEntry = this._entries.get(statType2);
                                if (lineEntry != null) {
                                    if (lineEntry.maxSamples != StatCollector.getMaxSamples()) {
                                    }
                                    averageValue = !getBooleanConfig(statType2, ConfigKeys.FrameAverage.name(), z10) ? multiStatSample.getStatValue(statType2).getAverageValue() : multiStatSample.getStatValue(statType2).getAccumulatedValue();
                                    lineEntry.verts.add(new Vector3(i12, averageValue, 0.0d));
                                    if (lineEntry.max < averageValue) {
                                        lineEntry.max = averageValue;
                                    }
                                    lineEntry.visited = true;
                                }
                                lineEntry = new LineEntry(StatCollector.getMaxSamples(), statType2);
                                this._entries.put(statType2, lineEntry);
                                if (!getBooleanConfig(statType2, ConfigKeys.FrameAverage.name(), z10)) {
                                }
                                lineEntry.verts.add(new Vector3(i12, averageValue, 0.0d));
                                if (lineEntry.max < averageValue) {
                                }
                                lineEntry.visited = true;
                            } else {
                                LineEntry lineEntry2 = this._entries.get(statType2);
                                if (lineEntry2 != null) {
                                    lineEntry2.verts.add(new Vector3(i12, 0.0d, 0.0d));
                                }
                            }
                            z10 = false;
                        }
                        i12++;
                        z10 = false;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            Iterator<StatType> it = this._entries.o().iterator();
            while (it.hasNext()) {
                LineEntry lineEntry3 = this._entries.get(it.next());
                if (lineEntry3.visited) {
                    List<Vector3> list = lineEntry3.verts;
                    FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer((ReadOnlyVector3[]) list.toArray(new Vector3[list.size()]));
                    lineEntry3.point.getMeshData().setVertexBuffer(createFloatBuffer);
                    double maxSamples = i10 / (StatCollector.getMaxSamples() - 1.0d);
                    double d10 = i11 / (lineEntry3.max * 1.02d);
                    int i13 = i10;
                    lineEntry3.point.setScale(new Vector3(maxSamples, d10, 1.0d));
                    lineEntry3.line.getMeshData().setVertexBuffer(createFloatBuffer);
                    lineEntry3.line.setScale(new Vector3(maxSamples, d10, 1.0d));
                    createFloatBuffer.rewind();
                    if (!this._graphRoot.equals(lineEntry3.line.getParent())) {
                        this._graphRoot.attachChild(lineEntry3.line);
                    }
                    if (!this._graphRoot.equals(lineEntry3.point.getParent())) {
                        this._graphRoot.attachChild(lineEntry3.point);
                    }
                    i10 = i13;
                } else {
                    lineEntry3.line.removeFromParent();
                    lineEntry3.point.removeFromParent();
                    it.remove();
                }
            }
            this._graphRoot.updateGeometricState(0.0d, true);
            this._textureRenderer.render(this._graphRoot, this._texture, 3);
            StatCollector.resume();
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
        line2.getMeshData().setIndexMode(IndexMode.LineStrip);
        line2.setDefaultColor(getColorConfig(statType, ConfigKeys.Color.name(), new ColorRGBA(ColorRGBA.LIGHT_GRAY)));
        line2.setLineWidth(getIntConfig(statType, ConfigKeys.Width.name(), 3));
        line2.setStipplePattern(getShortConfig(statType, ConfigKeys.Stipple.name(), (short) -1));
        line2.setAntialiased(getBooleanConfig(statType, ConfigKeys.Antialias.name(), true));
        if (!getBooleanConfig(statType, ConfigKeys.ShowLines.name(), true)) {
            line2.getSceneHints().setCullHint(CullHint.Always);
        }
        return line2;
    }
}
