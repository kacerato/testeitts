package com.ardor3d.util.geom;

import com.ardor3d.bounding.BoundingBox;
import com.ardor3d.bounding.BoundingSphere;
import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.bounding.OrientedBoundingBox;
import com.ardor3d.image.Texture2D;
import com.ardor3d.image.TextureStoreFormat;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.TextureRenderer;
import com.ardor3d.renderer.TextureRendererFactory;
import com.ardor3d.renderer.queue.RenderBucketType;
import com.ardor3d.renderer.state.BlendState;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.renderer.state.WireframeState;
import com.ardor3d.renderer.state.ZBufferState;
import com.ardor3d.scenegraph.FloatBufferData;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.Line;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.hint.CullHint;
import com.ardor3d.scenegraph.hint.LightCombineMode;
import com.ardor3d.scenegraph.hint.SceneHints;
import com.ardor3d.scenegraph.shape.AxisRods;
import com.ardor3d.scenegraph.shape.Box;
import com.ardor3d.scenegraph.shape.OrientedBox;
import com.ardor3d.scenegraph.shape.Quad;
import com.ardor3d.scenegraph.shape.Sphere;
import com.ardor3d.util.ExtendedCamera;
import java.nio.FloatBuffer;

public final class Debugger {
    public static double AUTO_NORMAL_RATIO = 0.0d;
    public static final ColorRGBA NORMAL_COLOR_BASE;
    public static final ColorRGBA NORMAL_COLOR_TIP;
    public static final int NORTHEAST = 1;
    public static final int NORTHWEST = 0;
    public static final int SOUTHEAST = 2;
    public static final int SOUTHWEST = 3;
    public static final ColorRGBA TANGENT_COLOR_BASE;
    public static final ColorRGBA TANGENT_COLOR_TIP;
    private static final Vector3 _normalVect;
    private static final Vector3 _normalVect2;
    private static boolean axisInited;
    private static final Quad bQuad;
    private static final Box boundingBox;
    private static final OrientedBox boundingOB;
    private static final Sphere boundingSphere;
    private static TextureRenderer bufTexRend;
    private static Texture2D bufTexture;
    private static final ExtendedCamera extendedCamera;
    private static Line lineFrustum;
    protected static final BoundingBox measureBox;
    private static final Line normalLines;
    private static final AxisRods rods;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type;

        static {
            int[] iArr = new int[BoundingVolume.Type.values().length];
            $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type = iArr;
            try {
                iArr[BoundingVolume.Type.AABB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.Sphere.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[BoundingVolume.Type.OBB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        Sphere sphere = new Sphere("bsphere", 10, 10, 1.0d);
        boundingSphere = sphere;
        SceneHints sceneHints = sphere.getSceneHints();
        RenderBucketType renderBucketType = RenderBucketType.Skip;
        sceneHints.setRenderBucketType(renderBucketType);
        sphere.setRenderState(new WireframeState());
        sphere.setRenderState(new ZBufferState());
        sphere.updateWorldRenderStates(false);
        Box box = new Box("bbox", new Vector3(), 1.0d, 1.0d, 1.0d);
        boundingBox = box;
        box.getSceneHints().setRenderBucketType(renderBucketType);
        box.setRenderState(new WireframeState());
        box.setRenderState(new ZBufferState());
        box.updateWorldRenderStates(false);
        OrientedBox orientedBox = new OrientedBox("bobox");
        boundingOB = orientedBox;
        orientedBox.getSceneHints().setRenderBucketType(renderBucketType);
        orientedBox.setRenderState(new WireframeState());
        orientedBox.setRenderState(new ZBufferState());
        orientedBox.updateWorldRenderStates(false);
        Line line = new Line("normLine");
        normalLines = line;
        line.getSceneHints().setRenderBucketType(renderBucketType);
        line.setRenderState(new ZBufferState());
        line.setLineWidth(3.0f);
        line.getMeshData().setIndexMode(IndexMode.Lines);
        line.getMeshData().setVertexBuffer(BufferUtils.createVector3Buffer(500));
        line.getMeshData().setColorBuffer(BufferUtils.createColorBuffer(500));
        line.updateWorldRenderStates(false);
        _normalVect = new Vector3();
        _normalVect2 = new Vector3();
        NORMAL_COLOR_BASE = new ColorRGBA(ColorRGBA.RED);
        NORMAL_COLOR_TIP = new ColorRGBA(ColorRGBA.PINK);
        TANGENT_COLOR_BASE = new ColorRGBA(ColorRGBA.ORANGE);
        TANGENT_COLOR_TIP = new ColorRGBA(ColorRGBA.YELLOW);
        measureBox = new BoundingBox();
        AUTO_NORMAL_RATIO = 0.05d;
        AxisRods axisRods = new AxisRods("debug_rods", true, 1.0d);
        rods = axisRods;
        axisRods.getSceneHints().setRenderBucketType(renderBucketType);
        axisInited = false;
        Quad quad = new Quad("", 128.0d, 128.0d);
        bQuad = quad;
        quad.getSceneHints().setRenderBucketType(RenderBucketType.Ortho);
        quad.getSceneHints().setCullHint(CullHint.Never);
        extendedCamera = new ExtendedCamera();
    }

    public static void drawAxis(Spatial spatial, Renderer renderer) {
        drawAxis(spatial, renderer, true, false);
    }

    public static void drawBoundingBox(BoundingBox boundingBox2, Renderer renderer) {
        Box box = boundingBox;
        box.setData(boundingBox2.getCenter(), boundingBox2.getXExtent(), boundingBox2.getYExtent(), boundingBox2.getZExtent());
        box.draw(renderer);
    }

    public static void drawBoundingSphere(BoundingSphere boundingSphere2, Renderer renderer) {
        Sphere sphere = boundingSphere;
        sphere.setData(boundingSphere2.getCenter(), 10, 10, boundingSphere2.getRadius());
        sphere.draw(renderer);
    }

    public static void drawBounds(Spatial spatial, Renderer renderer) {
        drawBounds(spatial, renderer, true);
    }

    public static void drawBuffer(TextureStoreFormat textureStoreFormat, int i10, Renderer renderer) {
        drawBuffer(textureStoreFormat, i10, renderer, Camera.getCurrentCamera().getWidth() / 6.25d);
    }

    public static void drawCameraFrustum(Renderer renderer, Camera camera, ReadOnlyColorRGBA readOnlyColorRGBA, short s10, boolean z10) {
        drawCameraFrustum(renderer, camera, camera.getFrustumNear(), camera.getFrustumFar(), readOnlyColorRGBA, s10, z10);
    }

    public static void drawNormals(Spatial spatial, Renderer renderer) {
        drawNormals(spatial, renderer, -1.0d, true);
    }

    public static void drawOBB(OrientedBoundingBox orientedBoundingBox, Renderer renderer) {
        OrientedBox orientedBox = boundingOB;
        orientedBox.getCenter().set(orientedBoundingBox.getCenter());
        orientedBox.getxAxis().set(orientedBoundingBox.getXAxis());
        orientedBox.getYAxis().set(orientedBoundingBox.getYAxis());
        orientedBox.getZAxis().set(orientedBoundingBox.getZAxis());
        orientedBox.getExtent().set(orientedBoundingBox.getExtent());
        orientedBox.computeInformation();
        orientedBox.draw(renderer);
    }

    public static void drawTangents(Spatial spatial, Renderer renderer) {
        drawTangents(spatial, renderer, -1.0d, true);
    }

    public static void setBoundsColor(ColorRGBA colorRGBA) {
        boundingBox.setSolidColor(colorRGBA);
        boundingOB.setSolidColor(colorRGBA);
        boundingSphere.setSolidColor(colorRGBA);
    }

    public static void drawAxis(Spatial spatial, Renderer renderer, boolean z10, boolean z11) {
        if (!axisInited) {
            BlendState blendState = new BlendState();
            blendState.setBlendEnabled(true);
            blendState.setSourceFunction(BlendState.SourceFunction.SourceAlpha);
            blendState.setDestinationFunction(BlendState.DestinationFunction.OneMinusSourceAlpha);
            AxisRods axisRods = rods;
            axisRods.setRenderState(blendState);
            axisRods.updateGeometricState(0.0d, false);
            axisInited = true;
        }
        if (z11 || (spatial instanceof Mesh)) {
            if (spatial.getWorldBound() != null) {
                BoundingVolume worldBound = spatial.getWorldBound();
                double d10 = 1.0d;
                if (worldBound != null) {
                    BoundingBox boundingBox2 = measureBox;
                    boundingBox2.setCenter(worldBound.getCenter());
                    boundingBox2.setXExtent(0.0d);
                    boundingBox2.setYExtent(0.0d);
                    boundingBox2.setZExtent(0.0d);
                    boundingBox2.mergeLocal(worldBound);
                    d10 = 1.0d * (((boundingBox2.getXExtent() + boundingBox2.getYExtent()) + boundingBox2.getZExtent()) / 3.0d);
                }
                AxisRods axisRods2 = rods;
                axisRods2.setTranslation(spatial.getWorldBound().getCenter());
                axisRods2.setScale(d10);
            } else {
                AxisRods axisRods3 = rods;
                axisRods3.setTranslation(spatial.getWorldTranslation());
                axisRods3.setScale(spatial.getWorldScale());
            }
            AxisRods axisRods4 = rods;
            axisRods4.setRotation(spatial.getWorldRotation());
            axisRods4.updateGeometricState(0.0d, false);
            axisRods4.draw(renderer);
        }
        if ((spatial instanceof Node) && z10) {
            Node node = (Node) spatial;
            if (node.getNumberOfChildren() == 0) {
                return;
            }
            int numberOfChildren = node.getNumberOfChildren();
            for (int i10 = 0; i10 < numberOfChildren; i10++) {
                drawAxis(node.getChild(i10), renderer, z10, z11);
            }
        }
    }

    public static void drawBounds(Spatial spatial, Renderer renderer, boolean z10) {
        if (spatial == null) {
            return;
        }
        if (spatial.getWorldBound() != null && spatial.getSceneHints().getCullHint() != CullHint.Always) {
            Camera currentCamera = Camera.getCurrentCamera();
            int planeState = currentCamera.getPlaneState();
            if (currentCamera.contains(spatial.getWorldBound()) != Camera.FrustumIntersect.Outside) {
                drawBounds(spatial.getWorldBound(), renderer);
            } else {
                z10 = false;
            }
            currentCamera.setPlaneState(planeState);
        }
        if (!z10 || !(spatial instanceof Node)) {
            return;
        }
        Node node = (Node) spatial;
        if (node.getNumberOfChildren() == 0) {
            return;
        }
        int numberOfChildren = node.getNumberOfChildren();
        while (true) {
            numberOfChildren--;
            if (numberOfChildren < 0) {
                return;
            } else {
                drawBounds(node.getChild(numberOfChildren), renderer, true);
            }
        }
    }

    public static void drawCameraFrustum(Renderer renderer, Camera camera, double d10, double d11, ReadOnlyColorRGBA readOnlyColorRGBA, short s10, boolean z10) {
        if (lineFrustum == null) {
            Line line = new Line("Lines", BufferUtils.createVector3Buffer(24), (FloatBuffer) null, BufferUtils.createColorBuffer(24), (FloatBufferData) null);
            lineFrustum = line;
            MeshData meshData = line.getMeshData();
            IndexMode indexMode = IndexMode.LineLoop;
            IndexMode indexMode2 = IndexMode.Lines;
            meshData.setIndexModes(new IndexMode[]{indexMode, indexMode, indexMode2, indexMode2});
            lineFrustum.getMeshData().setIndexLengths(new int[]{4, 4, 8, 8});
            lineFrustum.setLineWidth(2.0f);
            lineFrustum.getSceneHints().setLightCombineMode(LightCombineMode.Off);
            BlendState blendState = new BlendState();
            blendState.setEnabled(true);
            blendState.setBlendEnabled(true);
            blendState.setTestEnabled(true);
            blendState.setSourceFunction(BlendState.SourceFunction.SourceAlpha);
            blendState.setDestinationFunction(BlendState.DestinationFunction.OneMinusSourceAlpha);
            lineFrustum.setRenderState(blendState);
            lineFrustum.setRenderState(new ZBufferState());
            lineFrustum.updateGeometricState(0.0d);
            lineFrustum.getSceneHints().setRenderBucketType(RenderBucketType.Skip);
        }
        lineFrustum.setDefaultColor(readOnlyColorRGBA);
        lineFrustum.setStipplePattern(s10);
        ExtendedCamera extendedCamera2 = extendedCamera;
        extendedCamera2.set(camera);
        extendedCamera2.calculateFrustum(d10, d11);
        FloatBuffer colorBuffer = lineFrustum.getMeshData().getColorBuffer();
        for (int i10 = 0; i10 < 16; i10++) {
            BufferUtils.setInBuffer(readOnlyColorRGBA, colorBuffer, i10);
        }
        float f10 = z10 ? 0.4f : 0.0f;
        for (int i11 = 16; i11 < 24; i11++) {
            colorBuffer.position(i11 * 4);
            colorBuffer.put(readOnlyColorRGBA.getRed());
            colorBuffer.put(readOnlyColorRGBA.getGreen());
            colorBuffer.put(readOnlyColorRGBA.getBlue());
            colorBuffer.put(f10);
        }
        ExtendedCamera extendedCamera3 = extendedCamera;
        Vector3[] corners = extendedCamera3.getCorners();
        FloatBuffer vertexBuffer = lineFrustum.getMeshData().getVertexBuffer();
        BufferUtils.setInBuffer(corners[0], vertexBuffer, 0);
        BufferUtils.setInBuffer(corners[1], vertexBuffer, 1);
        BufferUtils.setInBuffer(corners[2], vertexBuffer, 2);
        BufferUtils.setInBuffer(corners[3], vertexBuffer, 3);
        BufferUtils.setInBuffer(corners[4], vertexBuffer, 4);
        BufferUtils.setInBuffer(corners[5], vertexBuffer, 5);
        BufferUtils.setInBuffer(corners[6], vertexBuffer, 6);
        BufferUtils.setInBuffer(corners[7], vertexBuffer, 7);
        BufferUtils.setInBuffer(corners[0], vertexBuffer, 8);
        BufferUtils.setInBuffer(corners[4], vertexBuffer, 9);
        BufferUtils.setInBuffer(corners[1], vertexBuffer, 10);
        BufferUtils.setInBuffer(corners[5], vertexBuffer, 11);
        BufferUtils.setInBuffer(corners[2], vertexBuffer, 12);
        BufferUtils.setInBuffer(corners[6], vertexBuffer, 13);
        BufferUtils.setInBuffer(corners[3], vertexBuffer, 14);
        BufferUtils.setInBuffer(corners[7], vertexBuffer, 15);
        BufferUtils.setInBuffer(extendedCamera3.getLocation(), vertexBuffer, 16);
        BufferUtils.setInBuffer(corners[0], vertexBuffer, 17);
        BufferUtils.setInBuffer(extendedCamera3.getLocation(), vertexBuffer, 18);
        BufferUtils.setInBuffer(corners[1], vertexBuffer, 19);
        BufferUtils.setInBuffer(extendedCamera3.getLocation(), vertexBuffer, 20);
        BufferUtils.setInBuffer(corners[2], vertexBuffer, 21);
        BufferUtils.setInBuffer(extendedCamera3.getLocation(), vertexBuffer, 22);
        BufferUtils.setInBuffer(corners[3], vertexBuffer, 23);
        lineFrustum.draw(renderer);
    }

    /* JADX WARN: Type inference failed for: r5v12, types: [java.nio.Buffer] */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.nio.Buffer] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.nio.Buffer] */
    public static void drawNormals(Spatial spatial, Renderer renderer, double d10, boolean z10) {
        double d11;
        double d12;
        Renderer renderer2 = renderer;
        if (spatial == null) {
            return;
        }
        Camera currentCamera = Camera.getCurrentCamera();
        int planeState = currentCamera.getPlaneState();
        if (spatial.getWorldBound() != null && currentCamera.contains(spatial.getWorldBound()) == Camera.FrustumIntersect.Outside) {
            currentCamera.setPlaneState(planeState);
            return;
        }
        currentCamera.setPlaneState(planeState);
        if ((spatial instanceof Mesh) && spatial.getSceneHints().getCullHint() != CullHint.Always) {
            Mesh mesh = (Mesh) spatial;
            if (d10 == -1.0d) {
                BoundingVolume worldBound = spatial.getWorldBound();
                d11 = 1.0d;
                if (worldBound != null) {
                    BoundingBox boundingBox2 = measureBox;
                    boundingBox2.setCenter(worldBound.getCenter());
                    boundingBox2.setXExtent(0.0d);
                    boundingBox2.setYExtent(0.0d);
                    boundingBox2.setZExtent(0.0d);
                    boundingBox2.mergeLocal(worldBound);
                    d12 = AUTO_NORMAL_RATIO * (((boundingBox2.getXExtent() + boundingBox2.getYExtent()) + boundingBox2.getZExtent()) / 3.0d);
                } else {
                    d12 = 1.0d;
                }
                if (!Double.isInfinite(d12) && !Double.isNaN(d12)) {
                    d11 = d12;
                }
            } else {
                d11 = d10;
            }
            FloatBuffer normalBuffer = mesh.getMeshData().getNormalBuffer();
            FloatBuffer vertexBuffer = mesh.getMeshData().getVertexBuffer();
            if (normalBuffer != null && vertexBuffer != null && normalBuffer.limit() == vertexBuffer.limit()) {
                Line line = normalLines;
                FloatBuffer vertexBuffer2 = line.getMeshData().getVertexBuffer();
                if (vertexBuffer2.capacity() < mesh.getMeshData().getVertexCount() * 6) {
                    line.getMeshData().setVertexBuffer(null);
                    vertexBuffer2 = BufferUtils.createVector3Buffer(mesh.getMeshData().getVertexCount() * 2);
                    line.getMeshData().setVertexBuffer(vertexBuffer2);
                } else {
                    vertexBuffer2.clear();
                    vertexBuffer2.limit(mesh.getMeshData().getVertexCount() * 6);
                    line.getMeshData().setVertexBuffer(vertexBuffer2);
                }
                FloatBuffer colorBuffer = line.getMeshData().getColorBuffer();
                if (colorBuffer.capacity() < mesh.getMeshData().getVertexCount() * 8) {
                    line.getMeshData().setColorBuffer(null);
                    colorBuffer = BufferUtils.createColorBuffer(mesh.getMeshData().getVertexCount() * 2);
                    line.getMeshData().setColorBuffer(colorBuffer);
                } else {
                    colorBuffer.clear();
                }
                IndexBufferData<?> indices = line.getMeshData().getIndices();
                if (indices != null && indices.getBufferCapacity() >= line.getMeshData().getVertexCount()) {
                    indices.getBuffer().clear();
                    indices.getBuffer().limit(line.getMeshData().getVertexCount());
                } else {
                    line.getMeshData().setIndices(null);
                    indices = BufferUtils.createIndexBufferData(mesh.getMeshData().getVertexCount() * 2, line.getMeshData().getVertexCount() - 1);
                    line.getMeshData().setIndices(indices);
                }
                vertexBuffer.rewind();
                normalBuffer.rewind();
                vertexBuffer2.rewind();
                indices.getBuffer().rewind();
                int i10 = 0;
                while (i10 < mesh.getMeshData().getVertexCount()) {
                    Vector3 vector3 = _normalVect;
                    vector3.set(vertexBuffer.get(), vertexBuffer.get(), vertexBuffer.get());
                    mesh.getWorldTransform().applyForward(vector3);
                    vertexBuffer2.put(vector3.getXf());
                    vertexBuffer2.put(vector3.getYf());
                    vertexBuffer2.put(vector3.getZf());
                    ColorRGBA colorRGBA = NORMAL_COLOR_BASE;
                    colorBuffer.put(colorRGBA.getRed());
                    colorBuffer.put(colorRGBA.getGreen());
                    colorBuffer.put(colorRGBA.getBlue());
                    colorBuffer.put(colorRGBA.getAlpha());
                    int i11 = i10 * 2;
                    indices.put2(i11);
                    Vector3 vector32 = _normalVect2;
                    vector32.set(normalBuffer.get(), normalBuffer.get(), normalBuffer.get());
                    mesh.getWorldTransform().applyForwardVector(vector32).normalizeLocal().multiplyLocal(d11);
                    vector3.addLocal(vector32);
                    vertexBuffer2.put(vector3.getXf());
                    vertexBuffer2.put(vector3.getYf());
                    vertexBuffer2.put(vector3.getZf());
                    ColorRGBA colorRGBA2 = NORMAL_COLOR_TIP;
                    colorBuffer.put(colorRGBA2.getRed());
                    colorBuffer.put(colorRGBA2.getGreen());
                    colorBuffer.put(colorRGBA2.getBlue());
                    colorBuffer.put(colorRGBA2.getAlpha());
                    indices.put2(i11 + 1);
                    i10++;
                    vertexBuffer = vertexBuffer;
                    normalBuffer = normalBuffer;
                }
                renderer2 = renderer;
                normalLines.onDraw(renderer2);
            }
        }
        if (!z10 || !(spatial instanceof Node)) {
            return;
        }
        Node node = (Node) spatial;
        if (node.getNumberOfChildren() == 0) {
            return;
        }
        int numberOfChildren = node.getNumberOfChildren();
        while (true) {
            numberOfChildren--;
            if (numberOfChildren < 0) {
                return;
            } else {
                drawNormals(node.getChild(numberOfChildren), renderer2, d10, true);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v11, types: [java.nio.Buffer] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.nio.Buffer] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.nio.Buffer] */
    public static void drawTangents(Spatial spatial, Renderer renderer, double d10, boolean z10) {
        double d11;
        Renderer renderer2 = renderer;
        if (spatial == null) {
            return;
        }
        Camera currentCamera = Camera.getCurrentCamera();
        int planeState = currentCamera.getPlaneState();
        if (spatial.getWorldBound() != null && currentCamera.contains(spatial.getWorldBound()) == Camera.FrustumIntersect.Outside) {
            currentCamera.setPlaneState(planeState);
            return;
        }
        currentCamera.setPlaneState(planeState);
        if ((spatial instanceof Mesh) && spatial.getSceneHints().getCullHint() != CullHint.Always) {
            Mesh mesh = (Mesh) spatial;
            if (d10 == -1.0d) {
                BoundingVolume worldBound = spatial.getWorldBound();
                if (worldBound != null) {
                    BoundingBox boundingBox2 = measureBox;
                    boundingBox2.setCenter(worldBound.getCenter());
                    boundingBox2.setXExtent(0.0d);
                    boundingBox2.setYExtent(0.0d);
                    boundingBox2.setZExtent(0.0d);
                    boundingBox2.mergeLocal(worldBound);
                    d11 = AUTO_NORMAL_RATIO * (((boundingBox2.getXExtent() + boundingBox2.getYExtent()) + boundingBox2.getZExtent()) / 3.0d);
                } else {
                    d11 = 1.0d;
                }
            } else {
                d11 = d10;
            }
            FloatBuffer tangentBuffer = mesh.getMeshData().getTangentBuffer();
            FloatBuffer vertexBuffer = mesh.getMeshData().getVertexBuffer();
            if (tangentBuffer != null && vertexBuffer != null && tangentBuffer.limit() == vertexBuffer.limit()) {
                Line line = normalLines;
                FloatBuffer vertexBuffer2 = line.getMeshData().getVertexBuffer();
                if (vertexBuffer2.capacity() < mesh.getMeshData().getVertexCount() * 6) {
                    line.getMeshData().setVertexBuffer(null);
                    vertexBuffer2 = BufferUtils.createVector3Buffer(mesh.getMeshData().getVertexCount() * 2);
                    line.getMeshData().setVertexBuffer(vertexBuffer2);
                } else {
                    vertexBuffer2.clear();
                    vertexBuffer2.limit(mesh.getMeshData().getVertexCount() * 6);
                    line.getMeshData().setVertexBuffer(vertexBuffer2);
                }
                FloatBuffer colorBuffer = line.getMeshData().getColorBuffer();
                if (colorBuffer.capacity() < mesh.getMeshData().getVertexCount() * 8) {
                    line.getMeshData().setColorBuffer(null);
                    colorBuffer = BufferUtils.createColorBuffer(mesh.getMeshData().getVertexCount() * 2);
                    line.getMeshData().setColorBuffer(colorBuffer);
                } else {
                    colorBuffer.clear();
                }
                IndexBufferData<?> indices = line.getMeshData().getIndices();
                if (indices != null && indices.getBufferCapacity() >= line.getMeshData().getVertexCount()) {
                    indices.getBuffer().clear();
                    indices.getBuffer().limit(line.getMeshData().getVertexCount());
                } else {
                    line.getMeshData().setIndices(null);
                    indices = BufferUtils.createIndexBufferData(mesh.getMeshData().getVertexCount() * 2, line.getMeshData().getVertexCount() - 1);
                    line.getMeshData().setIndices(indices);
                }
                vertexBuffer.rewind();
                tangentBuffer.rewind();
                vertexBuffer2.rewind();
                indices.getBuffer().rewind();
                for (int i10 = 0; i10 < mesh.getMeshData().getVertexCount(); i10++) {
                    Vector3 vector3 = _normalVect;
                    vector3.set(vertexBuffer.get(), vertexBuffer.get(), vertexBuffer.get());
                    vector3.multiplyLocal(mesh.getWorldScale());
                    vertexBuffer2.put(vector3.getXf());
                    vertexBuffer2.put(vector3.getYf());
                    vertexBuffer2.put(vector3.getZf());
                    ColorRGBA colorRGBA = TANGENT_COLOR_BASE;
                    colorBuffer.put(colorRGBA.getRed());
                    colorBuffer.put(colorRGBA.getGreen());
                    colorBuffer.put(colorRGBA.getBlue());
                    colorBuffer.put(colorRGBA.getAlpha());
                    int i11 = i10 * 2;
                    indices.put2(i11);
                    vector3.addLocal(tangentBuffer.get() * d11, tangentBuffer.get() * d11, tangentBuffer.get() * d11);
                    vertexBuffer2.put(vector3.getXf());
                    vertexBuffer2.put(vector3.getYf());
                    vertexBuffer2.put(vector3.getZf());
                    ColorRGBA colorRGBA2 = TANGENT_COLOR_TIP;
                    colorBuffer.put(colorRGBA2.getRed());
                    colorBuffer.put(colorRGBA2.getGreen());
                    colorBuffer.put(colorRGBA2.getBlue());
                    colorBuffer.put(colorRGBA2.getAlpha());
                    indices.put2(i11 + 1);
                }
                Line line2 = normalLines;
                line2.setWorldTranslation(mesh.getWorldTranslation());
                line2.setWorldRotation(mesh.getWorldRotation());
                renderer2 = renderer;
                line2.onDraw(renderer2);
            }
        }
        if (!z10 || !(spatial instanceof Node)) {
            return;
        }
        Node node = (Node) spatial;
        if (node.getNumberOfChildren() == 0) {
            return;
        }
        int numberOfChildren = node.getNumberOfChildren();
        while (true) {
            numberOfChildren--;
            if (numberOfChildren < 0) {
                return;
            } else {
                drawTangents(node.getChild(numberOfChildren), renderer2, d10, true);
            }
        }
    }

    public static void drawBuffer(TextureStoreFormat textureStoreFormat, int i10, Renderer renderer, double d10) {
        double d11;
        double d12;
        double d13;
        Camera currentCamera = Camera.getCurrentCamera();
        renderer.flushGraphics();
        double width = currentCamera.getWidth();
        double height = currentCamera.getHeight();
        Quad quad = bQuad;
        quad.resize(d10, (currentCamera.getHeight() / currentCamera.getWidth()) * d10);
        if (quad.getLocalRenderState(RenderState.StateType.Texture) == null) {
            TextureState textureState = new TextureState();
            Texture2D texture2D = new Texture2D();
            bufTexture = texture2D;
            textureState.setTexture(texture2D);
            quad.setRenderState(textureState);
        }
        int width2 = currentCamera.getWidth();
        if (!MathUtils.isPowerOfTwo(width2)) {
            int i11 = 2;
            do {
                i11 <<= 1;
            } while (i11 < width2);
            Quad quad2 = bQuad;
            float f10 = width2 / i11;
            quad2.getMeshData().getTextureBuffer(0).put(4, f10);
            quad2.getMeshData().getTextureBuffer(0).put(6, f10);
            width2 = i11;
        }
        int height2 = currentCamera.getHeight();
        if (!MathUtils.isPowerOfTwo(height2)) {
            int i12 = 2;
            do {
                i12 <<= 1;
            } while (i12 < height2);
            Quad quad3 = bQuad;
            float f11 = height2 / i12;
            quad3.getMeshData().getTextureBuffer(0).put(1, f11);
            quad3.getMeshData().getTextureBuffer(0).put(7, f11);
            height2 = i12;
        }
        if (bufTexRend == null) {
            TextureRenderer createTextureRenderer = TextureRendererFactory.INSTANCE.createTextureRenderer(width2, height2, renderer, ContextManager.getCurrentContext().getCapabilities());
            bufTexRend = createTextureRenderer;
            createTextureRenderer.setupTexture(bufTexture);
        }
        bufTexRend.copyToTexture(bufTexture, 0, 0, width2, height2, 0, 0);
        double d14 = d10 * 0.75d;
        if (i10 != 0) {
            if (i10 == 1) {
                d13 = width - d14;
                d14 = height - d14;
            } else if (i10 != 2) {
                d11 = d14;
                d12 = d11;
            } else {
                d13 = width - d14;
            }
            d12 = d14;
            d11 = d13;
        } else {
            d11 = d14;
            d12 = height - d14;
        }
        Quad quad4 = bQuad;
        quad4.setWorldTranslation(d11, d12, 0.0d);
        quad4.updateGeometricState(0.0d);
        quad4.onDraw(renderer);
        renderer.flushGraphics();
    }

    public static void drawBounds(BoundingVolume boundingVolume, Renderer renderer) {
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            drawBoundingBox((BoundingBox) boundingVolume, renderer);
        } else if (i10 == 2) {
            drawBoundingSphere((BoundingSphere) boundingVolume, renderer);
        } else {
            if (i10 != 3) {
                return;
            }
            drawOBB((OrientedBoundingBox) boundingVolume, renderer);
        }
    }
}
