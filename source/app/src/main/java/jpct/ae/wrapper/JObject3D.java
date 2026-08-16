package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Animation;
import com.threed.jpct.Camera;
import com.threed.jpct.CollisionListener;
import com.threed.jpct.GLSLShader;
import com.threed.jpct.IRenderHook;
import com.threed.jpct.Matrix;
import com.threed.jpct.Mesh;
import com.threed.jpct.Object3D;
import com.threed.jpct.OcTree;
import com.threed.jpct.PolygonManager;
import com.threed.jpct.RGBColor;
import com.threed.jpct.SimpleVector;
import com.threed.jpct.TextureInfo;
import com.threed.jpct.Virtualizer;
import java.util.Iterator;

@BA.ShortName("JpctObject3D")
public class JObject3D extends AbsObjectWrapper<Object3D> {
    @BA.Hide
    public JObject3D() {
    }

    public static final boolean BILLBOARDING_DISABLED() {
        return false;
    }

    public static final boolean BILLBOARDING_ENABLED() {
        return true;
    }

    public static final int COLLISION_CHECK_NONE() {
        return 0;
    }

    public static final int COLLISION_CHECK_OTHERS() {
        return 1;
    }

    public static final int COLLISION_CHECK_SELF() {
        return 2;
    }

    public static final boolean COLLISION_DETECTION_NOT_OPTIMIZED() {
        return false;
    }

    public static final boolean COLLISION_DETECTION_OPTIMIZED() {
        return true;
    }

    public static final float COLLISION_NONE() {
        return 1.0E12f;
    }

    public static final boolean CULLING_DISABLED() {
        return false;
    }

    public static final boolean CULLING_ENABLED() {
        return true;
    }

    public static final int ELLIPSOID_ALIGNED() {
        return 0;
    }

    public static final int ELLIPSOID_TRANSFORMED() {
        return 1;
    }

    public static final boolean ENVMAP_DISABLED() {
        return false;
    }

    public static final boolean ENVMAP_ENABLED() {
        return true;
    }

    public static final int LIGHTING_ALL_ENABLED() {
        return 0;
    }

    public static final int LIGHTING_NO_LIGHTS() {
        return 1;
    }

    public static final int NO_OBJECT() {
        return -100;
    }

    public static final boolean OBJ_INVISIBLE() {
        return false;
    }

    public static final boolean OBJ_VISIBLE() {
        return true;
    }

    public static final float RAY_MISSES_BOX() {
        return 1.0E12f;
    }

    public static final int SHADING_FAKED_FLAT() {
        return 0;
    }

    public static final int SHADING_GOURAUD() {
        return 0;
    }

    public static final boolean SPECULAR_DISABLED() {
        return false;
    }

    public static final boolean SPECULAR_ENABLED() {
        return true;
    }

    public static final int TRANSPARENCY_MODE_ADD() {
        return 1;
    }

    public static final int TRANSPARENCY_MODE_DEFAULT() {
        return 0;
    }

    public static final int UNKNOWN_OBJECTSIZE() {
        return -1;
    }

    public void Initialize1(float[] fArr, float[] fArr2, int[] iArr, int i10) {
        setObject(new Object3D(fArr, fArr2, iArr, i10));
    }

    public void Initialize2(int i10) {
        setObject(new Object3D(i10));
    }

    public void Initialize3(Object3D object3D) {
        setObject(new Object3D(object3D));
    }

    public void Initialize4(Object3D object3D, boolean z10) {
        setObject(new Object3D(object3D, z10));
    }

    public void addChild(Object3D object3D) {
        ((Object3D) getObject()).addChild(object3D);
    }

    public void addCollisionListener(CollisionListener collisionListener) {
        ((Object3D) getObject()).addCollisionListener(collisionListener);
    }

    public void addParent(Object3D object3D) {
        ((Object3D) getObject()).addParent(object3D);
    }

    public int addTriangle(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3) {
        return ((Object3D) getObject()).addTriangle(simpleVector, simpleVector2, simpleVector3);
    }

    public int addTriangle2(SimpleVector simpleVector, float f10, float f11, SimpleVector simpleVector2, float f12, float f13, SimpleVector simpleVector3, float f14, float f15) {
        return ((Object3D) getObject()).addTriangle(simpleVector, f10, f11, simpleVector2, f12, f13, simpleVector3, f14, f15);
    }

    public int addTriangle3(SimpleVector simpleVector, float f10, float f11, SimpleVector simpleVector2, float f12, float f13, SimpleVector simpleVector3, float f14, float f15, int i10) {
        return ((Object3D) getObject()).addTriangle(simpleVector, f10, f11, simpleVector2, f12, f13, simpleVector3, f14, f15, i10);
    }

    public int addTriangle4(SimpleVector simpleVector, float f10, float f11, SimpleVector simpleVector2, float f12, float f13, SimpleVector simpleVector3, float f14, float f15, int i10, int i11) {
        return ((Object3D) getObject()).addTriangle(simpleVector, f10, f11, simpleVector2, f12, f13, simpleVector3, f14, f15, i10, i11);
    }

    public int addTriangle5(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3, TextureInfo textureInfo) {
        return ((Object3D) getObject()).addTriangle(simpleVector, simpleVector2, simpleVector, textureInfo);
    }

    public void align(Camera camera) {
        ((Object3D) getObject()).align(camera);
    }

    public void align2(Object3D object3D) {
        ((Object3D) getObject()).align(object3D);
    }

    public void animate(float f10, int i10) {
        ((Object3D) getObject()).animate(f10, i10);
    }

    public void animate2(float f10) {
        ((Object3D) getObject()).animate(f10);
    }

    public void build() {
        ((Object3D) getObject()).build();
    }

    public void build2(boolean z10) {
        ((Object3D) getObject()).build(z10);
    }

    public void calcBoundingBox() {
        ((Object3D) getObject()).calcBoundingBox();
    }

    public void calcCenter() {
        ((Object3D) getObject()).calcCenter();
    }

    public float calcMinDistance(SimpleVector simpleVector, SimpleVector simpleVector2) {
        return ((Object3D) getObject()).calcMinDistance(simpleVector, simpleVector2);
    }

    public float calcMinDistance2(SimpleVector simpleVector, SimpleVector simpleVector2, float f10) {
        return ((Object3D) getObject()).calcMinDistance(simpleVector, simpleVector2, f10);
    }

    public void calcNormals() {
        ((Object3D) getObject()).calcNormals();
    }

    public void calcTangentVectors() {
        ((Object3D) getObject()).calcTangentVectors();
    }

    public void calcTextureWrap() {
        ((Object3D) getObject()).calcTextureWrap();
    }

    public void calcTextureWrapSpherical() {
        ((Object3D) getObject()).calcTextureWrapSpherical();
    }

    public int checkForCollision(SimpleVector simpleVector, float f10) {
        return ((Object3D) getObject()).checkForCollision(simpleVector, f10);
    }

    public SimpleVector checkForCollisionEllipsoid(SimpleVector simpleVector, SimpleVector simpleVector2, int i10) {
        return ((Object3D) getObject()).checkForCollisionEllipsoid(simpleVector, simpleVector2, i10);
    }

    public SimpleVector checkForCollisionSpherical(SimpleVector simpleVector, float f10) {
        return ((Object3D) getObject()).checkForCollisionSpherical(simpleVector, f10);
    }

    public void clearAdditionalColor() {
        ((Object3D) getObject()).clearAdditionalColor();
    }

    public void clearAnimation() {
        ((Object3D) getObject()).clearAnimation();
    }

    public void clearObject() {
        ((Object3D) getObject()).clearObject();
    }

    public void clearRotation() {
        ((Object3D) getObject()).clearRotation();
    }

    public void clearShader() {
        ((Object3D) getObject()).clearShader();
    }

    public void clearTranslation() {
        ((Object3D) getObject()).clearTranslation();
    }

    public Object3D cloneObject() {
        return ((Object3D) getObject()).cloneObject();
    }

    public void compile() {
        ((Object3D) getObject()).compile();
    }

    public void compile2(boolean z10) {
        ((Object3D) getObject()).compile(z10);
    }

    public void compile3(boolean z10, boolean z11) {
        ((Object3D) getObject()).compile(z10, z11);
    }

    public Object3D createDummyObj() {
        return Object3D.createDummyObj();
    }

    public boolean cullingIsInverted() {
        return ((Object3D) getObject()).cullingIsInverted();
    }

    public void decoupleMesh() {
        ((Object3D) getObject()).decoupleMesh();
    }

    public void disableCollisionListeners() {
        ((Object3D) getObject()).disableCollisionListeners();
    }

    public void disableLazyTransformations() {
        ((Object3D) getObject()).disableLazyTransformations();
    }

    public void disableVertexSharing() {
        ((Object3D) getObject()).disableVertexSharing();
    }

    public boolean ellipsoidIntersectsAABB(SimpleVector simpleVector, SimpleVector simpleVector2) {
        return ((Object3D) getObject()).ellipsoidIntersectsAABB(simpleVector, simpleVector2);
    }

    public void enableCollisionListeners() {
        ((Object3D) getObject()).enableCollisionListeners();
    }

    public void enableLazyTransformations() {
        ((Object3D) getObject()).enableLazyTransformations();
    }

    public void forceGeometryIndices(boolean z10) {
        ((Object3D) getObject()).forceGeometryIndices(z10);
    }

    public RGBColor getAdditionalColor() {
        return ((Object3D) getObject()).getAdditionalColor();
    }

    public Animation getAnimationSequence() {
        return ((Object3D) getObject()).getAnimationSequence();
    }

    public SimpleVector getCenter() {
        return ((Object3D) getObject()).getCenter();
    }

    public Iterator<CollisionListener> getCollisionListeners() {
        return ((Object3D) getObject()).getCollisionListeners();
    }

    public boolean getCulling() {
        return ((Object3D) getObject()).getCulling();
    }

    public int getEllipsoidMode() {
        return ((Object3D) getObject()).getEllipsoidMode();
    }

    public int getID() {
        return ((Object3D) getObject()).getID();
    }

    public Matrix getInverseWorldTransformation() {
        return ((Object3D) getObject()).getInverseWorldTransformation();
    }

    public Matrix getInverseWorldTransformation2(Matrix matrix) {
        return ((Object3D) getObject()).getInverseWorldTransformation(matrix);
    }

    public int getLightCount() {
        return ((Object3D) getObject()).getLightCount();
    }

    public int getLighting() {
        return ((Object3D) getObject()).getLighting();
    }

    public int getMaxLights() {
        return ((Object3D) getObject()).getMaxLights();
    }

    public Mesh getMesh() {
        return ((Object3D) getObject()).getMesh();
    }

    public String getName() {
        return ((Object3D) getObject()).getName();
    }

    public int getNextID() {
        return Object3D.getNextID();
    }

    public OcTree getOcTree() {
        return ((Object3D) getObject()).getOcTree();
    }

    public SimpleVector getOrigin() {
        return ((Object3D) getObject()).getOrigin();
    }

    public Matrix getOriginMatrix() {
        return ((Object3D) getObject()).getOriginMatrix();
    }

    public Object3D[] getParents() {
        return ((Object3D) getObject()).getParents();
    }

    public PolygonManager getPolygonManager() {
        return ((Object3D) getObject()).getPolygonManager();
    }

    public IRenderHook getRenderHook() {
        return ((Object3D) getObject()).getRenderHook();
    }

    public Matrix getRotationMatrix() {
        return ((Object3D) getObject()).getRotationMatrix();
    }

    public SimpleVector getRotationPivot() {
        return ((Object3D) getObject()).getRotationPivot();
    }

    public float getScale() {
        return ((Object3D) getObject()).getScale();
    }

    public GLSLShader getShader() {
        return ((Object3D) getObject()).getShader();
    }

    public Matrix getTextureMatrix() {
        return ((Object3D) getObject()).getTextureMatrix();
    }

    public SimpleVector getTransformedCenter() {
        return ((Object3D) getObject()).getTransformedCenter();
    }

    public SimpleVector getTranslation() {
        return ((Object3D) getObject()).getTranslation();
    }

    public SimpleVector getTranslation2(SimpleVector simpleVector) {
        return ((Object3D) getObject()).getTranslation(simpleVector);
    }

    public Matrix getTranslationMatrix() {
        return ((Object3D) getObject()).getTranslationMatrix();
    }

    public int getTransparency() {
        return ((Object3D) getObject()).getTransparency();
    }

    public int getTransparencyMode() {
        return ((Object3D) getObject()).getTransparencyMode();
    }

    public Object getUserObject() {
        return ((Object3D) getObject()).getUserObject();
    }

    public Virtualizer getVirtualizer() {
        return ((Object3D) getObject()).getVirtualizer();
    }

    public boolean getVisibility() {
        return ((Object3D) getObject()).getVisibility();
    }

    public Matrix getWorldTransformation() {
        return ((Object3D) getObject()).getWorldTransformation();
    }

    public Matrix getWorldTransformation2(Matrix matrix) {
        return ((Object3D) getObject()).getWorldTransformation(matrix);
    }

    public SimpleVector getXAxis() {
        return ((Object3D) getObject()).getXAxis();
    }

    public SimpleVector getYAxis() {
        return ((Object3D) getObject()).getYAxis();
    }

    public SimpleVector getZAxis() {
        return ((Object3D) getObject()).getZAxis();
    }

    public boolean hasChild(Object3D object3D) {
        return ((Object3D) getObject()).hasChild(object3D);
    }

    public boolean hasParent(Object3D object3D) {
        return ((Object3D) getObject()).hasParent(object3D);
    }

    public boolean hasVertexAlpha() {
        return ((Object3D) getObject()).hasVertexAlpha();
    }

    public void invert() {
        ((Object3D) getObject()).invert();
    }

    public void invertCulling(boolean z10) {
        ((Object3D) getObject()).invertCulling(z10);
    }

    public boolean isEnvmapped() {
        return ((Object3D) getObject()).isEnvmapped();
    }

    public boolean isTransparent() {
        return ((Object3D) getObject()).isTransparent();
    }

    public Object3D mergeAll(Object3D[] object3DArr) {
        return Object3D.mergeAll(object3DArr);
    }

    public Object3D mergeObjects(Object3D object3D, Object3D object3D2) {
        return Object3D.mergeObjects(object3D, object3D2);
    }

    public float rayIntersectsAABB(SimpleVector simpleVector, SimpleVector simpleVector2, boolean z10) {
        return ((Object3D) getObject()).rayIntersectsAABB(simpleVector, simpleVector2, z10);
    }

    public float rayIntersectsAABB2(SimpleVector simpleVector, SimpleVector simpleVector2) {
        return ((Object3D) getObject()).rayIntersectsAABB(simpleVector, simpleVector2);
    }

    public void removeChild(Object3D object3D) {
        ((Object3D) getObject()).removeChild(object3D);
    }

    public void removeCollisionListener(CollisionListener collisionListener) {
        ((Object3D) getObject()).removeCollisionListener(collisionListener);
    }

    public void removeParent(Object3D object3D) {
        ((Object3D) getObject()).removeParent(object3D);
    }

    public void resetCollisionStatus() {
        ((Object3D) getObject()).resetCollisionStatus();
    }

    public void resetNextID() {
        Object3D.resetNextID();
    }

    public void rotateAxis(SimpleVector simpleVector, float f10) {
        ((Object3D) getObject()).rotateAxis(simpleVector, f10);
    }

    public void rotateMesh() {
        ((Object3D) getObject()).rotateMesh();
    }

    public void rotateX(float f10) {
        ((Object3D) getObject()).rotateX(f10);
    }

    public void rotateY(float f10) {
        ((Object3D) getObject()).rotateY(f10);
    }

    public void rotateZ(float f10) {
        ((Object3D) getObject()).rotateZ(f10);
    }

    public void setAdditionalColor(RGBColor rGBColor) {
        ((Object3D) getObject()).setAdditionalColor(rGBColor);
    }

    public void setAnimationSequence(Animation animation) {
        ((Object3D) getObject()).setAnimationSequence(animation);
    }

    public void setBillboarding(boolean z10) {
        ((Object3D) getObject()).setBillboarding(z10);
    }

    public void setBoundingBox(float f10, float f11, float f12, float f13, float f14, float f15) {
        ((Object3D) getObject()).setBoundingBox(f10, f11, f12, f13, f14, f15);
    }

    public void setCenter(SimpleVector simpleVector) {
        ((Object3D) getObject()).setCenter(simpleVector);
    }

    public void setCollisionMode(int i10) {
        ((Object3D) getObject()).setCollisionMode(i10);
    }

    public void setCollisionOptimization(boolean z10) {
        ((Object3D) getObject()).setCollisionOptimization(z10);
    }

    public void setCulling(boolean z10) {
        ((Object3D) getObject()).setCulling(z10);
    }

    public void setEllipsoidMode(int i10) {
        ((Object3D) getObject()).setEllipsoidMode(i10);
    }

    public void setEnvmapped(boolean z10) {
        ((Object3D) getObject()).setEnvmapped(z10);
    }

    public void setFixedPointMode(boolean z10) {
        ((Object3D) getObject()).setFixedPointMode(z10);
    }

    public void setLighting(int i10) {
        ((Object3D) getObject()).setLighting(i10);
    }

    public void setMaxLights(int i10) {
        ((Object3D) getObject()).setMaxLights(i10);
    }

    public void setMesh(Mesh mesh) {
        ((Object3D) getObject()).setMesh(mesh);
    }

    public void setName(String str) {
        ((Object3D) getObject()).setName(str);
    }

    public void setNextID(int i10) {
        Object3D.setNextID(i10);
    }

    public void setOcTree(OcTree ocTree) {
        ((Object3D) getObject()).setOcTree(ocTree);
    }

    public void setOrientation(SimpleVector simpleVector, SimpleVector simpleVector2) {
        ((Object3D) getObject()).setOrientation(simpleVector, simpleVector2);
    }

    public void setOrigin(SimpleVector simpleVector) {
        ((Object3D) getObject()).setOrigin(simpleVector);
    }

    public void setRenderHook(IRenderHook iRenderHook) {
        ((Object3D) getObject()).setRenderHook(iRenderHook);
    }

    public void setRotationMatrix(Matrix matrix) {
        ((Object3D) getObject()).setRotationMatrix(matrix);
    }

    public void setRotationPivot(SimpleVector simpleVector) {
        ((Object3D) getObject()).setRotationPivot(simpleVector);
    }

    public void setScale(float f10) {
        ((Object3D) getObject()).setScale(f10);
    }

    public void setShader(GLSLShader gLSLShader) {
        ((Object3D) getObject()).setShader(gLSLShader);
    }

    public void setShadingMode(int i10) {
        ((Object3D) getObject()).setShadingMode(i10);
    }

    public void setSortOffset(float f10) {
        ((Object3D) getObject()).setSortOffset(f10);
    }

    public void setSpecularLighting(boolean z10) {
        ((Object3D) getObject()).setSpecularLighting(z10);
    }

    public void setTexture(String str) {
        ((Object3D) getObject()).setTexture(str);
    }

    public void setTexture2(TextureInfo textureInfo) {
        ((Object3D) getObject()).setTexture(textureInfo);
    }

    public void setTextureMatrix(Matrix matrix) {
        ((Object3D) getObject()).setTextureMatrix(matrix);
    }

    public void setTranslationMatrix(Matrix matrix) {
        ((Object3D) getObject()).setTranslationMatrix(matrix);
    }

    public void setTransparency(int i10) {
        ((Object3D) getObject()).setTransparency(i10);
    }

    public void setTransparencyMode(int i10) {
        ((Object3D) getObject()).setTransparencyMode(i10);
    }

    public void setUserObject(Object obj) {
        ((Object3D) getObject()).setUserObject(obj);
    }

    public void setVirtualizer(Virtualizer virtualizer) {
        ((Object3D) getObject()).setVirtualizer(virtualizer);
    }

    public void setVisibility(boolean z10) {
        ((Object3D) getObject()).setVisibility(z10);
    }

    public void shareCompiledData(Object3D object3D) {
        ((Object3D) getObject()).shareCompiledData(object3D);
    }

    public void shareTextureData(Object3D object3D) {
        ((Object3D) getObject()).shareTextureData(object3D);
    }

    public boolean sphereIntersectsAABB(SimpleVector simpleVector, float f10) {
        return ((Object3D) getObject()).sphereIntersectsAABB(simpleVector, f10);
    }

    public void strip() {
        ((Object3D) getObject()).strip();
    }

    public void touch() {
        ((Object3D) getObject()).touch();
    }

    public void translate(SimpleVector simpleVector) {
        ((Object3D) getObject()).translate(simpleVector);
    }

    public void translate2(float f10, float f11, float f12) {
        ((Object3D) getObject()).translate(f10, f11, f12);
    }

    public void translateMesh() {
        ((Object3D) getObject()).translateMesh();
    }

    public boolean wasTargetOfLastCollision() {
        return ((Object3D) getObject()).wasTargetOfLastCollision();
    }

    public boolean wasVisible() {
        return ((Object3D) getObject()).wasVisible();
    }

    @BA.Hide
    public JObject3D(Object3D object3D) {
        setObject(new Object3D(object3D));
    }

    public SimpleVector getTransformedCenter(SimpleVector simpleVector) {
        return ((Object3D) getObject()).getTransformedCenter(simpleVector);
    }
}
