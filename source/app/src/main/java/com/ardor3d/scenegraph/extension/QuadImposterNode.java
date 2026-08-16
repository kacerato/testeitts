package com.ardor3d.scenegraph.extension;

import com.ardor3d.bounding.BoundingBox;
import com.ardor3d.bounding.BoundingSphere;
import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.image.Texture;
import com.ardor3d.image.Texture2D;
import com.ardor3d.image.TextureStoreFormat;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.TextureRenderer;
import com.ardor3d.renderer.TextureRendererFactory;
import com.ardor3d.renderer.queue.RenderBucketType;
import com.ardor3d.renderer.state.BlendState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.hint.LightCombineMode;
import com.ardor3d.scenegraph.hint.TextureCombineMode;
import com.ardor3d.scenegraph.shape.Quad;
import com.ardor3d.util.Timer;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import com.ardor3d.util.resource.ResourceLocatorTool;
import java.io.IOException;
import java.nio.FloatBuffer;

public class QuadImposterNode extends Node {
    private static final long serialVersionUID = 1;
    protected Camera _cam;
    protected double _cameraAngleThreshold;
    protected double _cameraDistanceThreshold;
    protected final Vector3 _center;
    protected Vector3[] _corners;
    protected int _depth;
    protected boolean _doUpdate;
    protected double _elapsed;
    protected final Vector3 _extents;
    protected double _farPlane;
    protected boolean _haveDrawn;
    protected Quad _imposterQuad;
    protected final Vector3 _lastCamDir;
    protected double _lastCamDist;
    protected final Vector2 _maxMinScreenPos;
    protected final Vector2 _maxScreenPos;
    protected final Vector2 _minMaxScreenPos;
    protected final Vector2 _minScreenPos;
    protected double _minZ;
    protected double _nearPlane;
    protected double _redrawRate;
    protected int _samples;
    protected TextureRenderer _tRenderer;
    protected Node _targetScene;
    protected final Vector3 _tempVec;
    protected Texture2D _texture;
    protected int _theight;
    protected Timer _timer;
    protected int _twidth;
    protected Vector3 _worldUpVector;

    public QuadImposterNode() {
        this(null, 64, 64);
    }

    private void calculateImposter() {
        BoundingVolume worldBound = this._targetScene.getWorldBound();
        this._center.set(worldBound.getCenter());
        int i10 = 0;
        while (true) {
            Vector3[] vector3Arr = this._corners;
            if (i10 >= vector3Arr.length) {
                break;
            }
            vector3Arr[i10].set(this._center);
            i10++;
        }
        if (worldBound instanceof BoundingBox) {
            ((BoundingBox) worldBound).getExtent(this._extents);
        } else if (worldBound instanceof BoundingSphere) {
            BoundingSphere boundingSphere = (BoundingSphere) worldBound;
            this._extents.set(boundingSphere.getRadius(), boundingSphere.getRadius(), boundingSphere.getRadius());
        }
        this._corners[0].addLocal(this._extents.getX(), this._extents.getY(), -this._extents.getZ());
        this._corners[1].addLocal(-this._extents.getX(), this._extents.getY(), -this._extents.getZ());
        this._corners[2].addLocal(this._extents.getX(), -this._extents.getY(), -this._extents.getZ());
        this._corners[3].addLocal(-this._extents.getX(), -this._extents.getY(), -this._extents.getZ());
        this._corners[4].addLocal(this._extents.getX(), this._extents.getY(), this._extents.getZ());
        this._corners[5].addLocal(-this._extents.getX(), this._extents.getY(), this._extents.getZ());
        this._corners[6].addLocal(this._extents.getX(), -this._extents.getY(), this._extents.getZ());
        this._corners[7].addLocal(-this._extents.getX(), -this._extents.getY(), this._extents.getZ());
        for (int i11 = 0; i11 < this._corners.length; i11++) {
            Camera camera = this._tRenderer.getCamera();
            Vector3 vector3 = this._corners[i11];
            camera.getScreenCoordinates(vector3, vector3);
        }
        this._minScreenPos.set(Double.MAX_VALUE, Double.MAX_VALUE);
        this._maxScreenPos.set(-1.7976931348623157E308d, -1.7976931348623157E308d);
        this._minZ = Double.MAX_VALUE;
        int i12 = 0;
        while (true) {
            Vector3[] vector3Arr2 = this._corners;
            if (i12 >= vector3Arr2.length) {
                this._maxMinScreenPos.set(this._maxScreenPos.getX(), this._minScreenPos.getY());
                this._minMaxScreenPos.set(this._minScreenPos.getX(), this._maxScreenPos.getY());
                this._tRenderer.getCamera().getWorldCoordinates(this._maxScreenPos, this._minZ, this._corners[0]);
                this._tRenderer.getCamera().getWorldCoordinates(this._maxMinScreenPos, this._minZ, this._corners[1]);
                this._tRenderer.getCamera().getWorldCoordinates(this._minScreenPos, this._minZ, this._corners[2]);
                this._tRenderer.getCamera().getWorldCoordinates(this._minMaxScreenPos, this._minZ, this._corners[3]);
                this._center.set(this._corners[0]).addLocal(this._corners[1]).addLocal(this._corners[2]).addLocal(this._corners[3]).multiplyLocal(0.25d);
                this._lastCamDir.set(this._center).subtractLocal(this._tRenderer.getCamera().getLocation());
                double length = this._lastCamDir.length();
                this._nearPlane = length;
                this._lastCamDist = length;
                this._farPlane = length + (this._extents.length() * 2.0d);
                this._lastCamDir.normalizeLocal();
                FloatBuffer vertexBuffer = this._imposterQuad.getMeshData().getVertexBuffer();
                BufferUtils.setInBuffer(this._corners[0], vertexBuffer, 3);
                BufferUtils.setInBuffer(this._corners[1], vertexBuffer, 2);
                BufferUtils.setInBuffer(this._corners[2], vertexBuffer, 1);
                BufferUtils.setInBuffer(this._corners[3], vertexBuffer, 0);
                this._imposterQuad.updateModelBound();
                return;
            }
            this._minScreenPos.setX(Math.min(vector3Arr2[i12].getX(), this._minScreenPos.getX()));
            this._minScreenPos.setY(Math.min(this._corners[i12].getY(), this._minScreenPos.getY()));
            this._maxScreenPos.setX(Math.max(this._corners[i12].getX(), this._maxScreenPos.getX()));
            this._maxScreenPos.setY(Math.max(this._corners[i12].getY(), this._maxScreenPos.getY()));
            this._minZ = Math.min(this._corners[i12].getZ(), this._minZ);
            i12++;
        }
    }

    private void init(Renderer renderer) {
        TextureRenderer createTextureRenderer = TextureRendererFactory.INSTANCE.createTextureRenderer(this._twidth, this._theight, this._depth, this._samples, renderer, ContextManager.getCurrentContext().getCapabilities());
        this._tRenderer = createTextureRenderer;
        createTextureRenderer.setBackgroundColor(new ColorRGBA(0.0f, 0.0f, 0.0f, 0.0f));
        resetTexture();
    }

    private boolean shouldDoUpdate(Camera camera) {
        double d10 = this._redrawRate;
        if (d10 > 0.0d) {
            double d11 = this._elapsed;
            if (d11 >= d10) {
                this._elapsed = d11 % d10;
                return true;
            }
        }
        if (this._cameraAngleThreshold <= 0.0d) {
            return false;
        }
        this._tempVec.set(this._center).subtractLocal(camera.getLocation());
        double length = this._tempVec.length();
        double d12 = this._lastCamDist;
        if (d12 != 0.0d && Math.abs(length - d12) / this._lastCamDist > this._cameraDistanceThreshold) {
            return true;
        }
        this._tempVec.normalizeLocal();
        return this._tempVec.smallestAngleBetween(this._lastCamDir) > this._cameraAngleThreshold;
    }

    private void updateCameraFrustum() {
        ReadOnlyVector3[] readOnlyVector3Arr = this._corners;
        double length = readOnlyVector3Arr[2].subtractLocal(readOnlyVector3Arr[1]).length() / 2.0d;
        ReadOnlyVector3[] readOnlyVector3Arr2 = this._corners;
        double length2 = readOnlyVector3Arr2[1].subtractLocal(readOnlyVector3Arr2[0]).length() / 2.0d;
        this._tRenderer.getCamera().setFrustum(this._nearPlane, this._farPlane, -length, length, length2, -length2);
    }

    private void updateCameraLookat() {
        this._tRenderer.getCamera().setLocation(this._cam.getLocation());
        this._tRenderer.getCamera().lookAt(this._center, this._worldUpVector);
    }

    @Override
    public int attachChild(Spatial spatial) {
        return this._targetScene.attachChild(spatial);
    }

    @Override
    public int attachChildAt(Spatial spatial, int i10) {
        return this._targetScene.attachChildAt(spatial, i10);
    }

    @Override
    public void detachAllChildren() {
        this._targetScene.detachAllChildren();
    }

    @Override
    public int detachChild(Spatial spatial) {
        return this._targetScene.detachChild(spatial);
    }

    @Override
    public Spatial detachChildAt(int i10) {
        return this._targetScene.detachChildAt(i10);
    }

    @Override
    public int detachChildNamed(String str) {
        return this._targetScene.detachChildNamed(str);
    }

    @Override
    public void draw(Renderer renderer) {
        Timer timer = this._timer;
        if (timer != null && this._redrawRate > 0.0d) {
            this._elapsed += timer.getTimePerFrame();
        }
        if (this._tRenderer == null) {
            init(renderer);
        }
        if (this._cam == null) {
            this._cam = Camera.getCurrentCamera();
            this._tRenderer.getCamera().setFrustum(this._cam.getFrustumNear(), this._cam.getFrustumFar(), this._cam.getFrustumLeft(), this._cam.getFrustumRight(), this._cam.getFrustumTop(), this._cam.getFrustumBottom());
            this._tRenderer.getCamera().setFrame(this._cam.getLocation(), this._cam.getLeft(), this._cam.getUp(), this._cam.getDirection());
        }
        if (this._doUpdate && ((!this._haveDrawn || shouldDoUpdate(this._cam)) && this._targetScene.getWorldBound() != null)) {
            this._center.set(this._targetScene.getWorldBound().getCenter());
            updateCameraLookat();
            calculateImposter();
            updateCameraLookat();
            updateCameraFrustum();
            renderImposter();
            this._haveDrawn = true;
        }
        this._imposterQuad.draw(renderer);
    }

    public double getCameraAngleThreshold() {
        return this._cameraAngleThreshold;
    }

    public double getCameraDistanceThreshold() {
        return this._cameraDistanceThreshold;
    }

    public Texture getTexture() {
        return this._texture;
    }

    public Vector3 getWorldUpVector() {
        return this._worldUpVector;
    }

    public boolean isDoUpdate() {
        return this._doUpdate;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._texture = (Texture2D) inputCapsule.readSavable(ResourceLocatorTool.TYPE_TEXTURE, null);
        this._targetScene = (Node) inputCapsule.readSavable("targetScene", null);
        this._imposterQuad = (Quad) inputCapsule.readSavable("standIn", new Quad("ImposterQuad"));
        this._redrawRate = inputCapsule.readFloat("redrawRate", 0.05f);
        this._cameraAngleThreshold = inputCapsule.readFloat("cameraThreshold", 0.0f);
        this._worldUpVector = (Vector3) inputCapsule.readSavable("worldUpVector", new Vector3(Vector3.UNIT_Y));
    }

    public void renderImposter() {
        this._tRenderer.render(this._targetScene, this._texture, 3);
    }

    public void resetTexture() {
        this._texture.setWrap(Texture.WrapMode.EdgeClamp);
        this._texture.setMinificationFilter(Texture.MinificationFilter.BilinearNoMipMaps);
        this._texture.setMagnificationFilter(Texture.MagnificationFilter.Bilinear);
        this._texture.setTextureStoreFormat(TextureStoreFormat.RGBA8);
        this._tRenderer.setupTexture(this._texture);
        TextureState textureState = new TextureState();
        textureState.setEnabled(true);
        textureState.setTexture(this._texture, 0);
        this._imposterQuad.setRenderState(textureState);
        BlendState blendState = new BlendState();
        blendState.setBlendEnabled(true);
        blendState.setSourceFunction(BlendState.SourceFunction.SourceAlpha);
        blendState.setDestinationFunction(BlendState.DestinationFunction.OneMinusSourceAlpha);
        blendState.setTestEnabled(true);
        blendState.setTestFunction(BlendState.TestFunction.GreaterThan);
        blendState.setEnabled(true);
        this._imposterQuad.setRenderState(blendState);
    }

    public void setCameraAngleThreshold(double d10) {
        this._cameraAngleThreshold = d10;
    }

    public void setCameraDistanceThreshold(double d10) {
        this._cameraDistanceThreshold = d10;
    }

    public void setDoUpdate(boolean z10) {
        this._doUpdate = z10;
    }

    public void setRedrawRate(double d10) {
        this._elapsed = d10;
        this._redrawRate = d10;
    }

    public void setWorldUpVector(Vector3 vector3) {
        this._worldUpVector = vector3;
    }

    @Override
    public void updateChildren(double d10) {
        this._imposterQuad.updateGeometricState(d10, false);
        if (this._doUpdate) {
            if (!this._haveDrawn || shouldDoUpdate(this._cam)) {
                this._targetScene.updateGeometricState(d10, false);
            }
        }
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._texture, ResourceLocatorTool.TYPE_TEXTURE, (Savable) null);
        outputCapsule.write(this._targetScene, "targetScene", (Savable) null);
        outputCapsule.write(this._imposterQuad, "standIn", new Quad("ImposterQuad"));
        outputCapsule.write(this._redrawRate, "redrawRate", 0.05000000074505806d);
        outputCapsule.write(this._cameraAngleThreshold, "cameraThreshold", 0.0d);
        outputCapsule.write(this._worldUpVector, "worldUpVector", new Vector3(Vector3.UNIT_Y));
    }

    public QuadImposterNode(String str, int i10, int i11) {
        this(str, i10, i11, null);
    }

    public QuadImposterNode(String str, int i10, int i11, Timer timer) {
        this(str, i10, i11, 8, 0, timer);
    }

    public QuadImposterNode(String str, int i10, int i11, int i12, int i13, Timer timer) {
        super(str);
        this._cameraDistanceThreshold = Double.MAX_VALUE;
        this._worldUpVector = new Vector3(0.0d, 1.0d, 0.0d);
        this._doUpdate = true;
        this._lastCamDir = new Vector3();
        this._corners = new Vector3[8];
        this._center = new Vector3();
        this._extents = new Vector3();
        this._minScreenPos = new Vector2();
        this._maxScreenPos = new Vector2();
        this._minMaxScreenPos = new Vector2();
        this._maxMinScreenPos = new Vector2();
        this._tempVec = new Vector3();
        this._twidth = i10;
        this._theight = i11;
        this._depth = i12;
        this._samples = i13;
        this._timer = timer;
        this._texture = new Texture2D();
        Quad quad = new Quad("ImposterQuad");
        this._imposterQuad = quad;
        quad.resize(1.0d, 1.0d);
        this._imposterQuad.setModelBound(new BoundingBox());
        this._imposterQuad.getSceneHints().setTextureCombineMode(TextureCombineMode.Replace);
        this._imposterQuad.getSceneHints().setLightCombineMode(LightCombineMode.Off);
        super.attachChild(this._imposterQuad);
        getSceneHints().setRenderBucketType(RenderBucketType.Transparent);
        Node node = new Node();
        this._targetScene = node;
        super.attachChild(node);
        int i14 = 0;
        while (true) {
            Vector3[] vector3Arr = this._corners;
            if (i14 >= vector3Arr.length) {
                break;
            }
            vector3Arr[i14] = new Vector3();
            i14++;
        }
        if (timer != null) {
            this._elapsed = 0.05d;
            this._redrawRate = 0.05d;
        } else {
            setCameraAngleThreshold(10.0d);
            setCameraDistanceThreshold(0.2d);
        }
        this._haveDrawn = false;
    }
}
