package com.jme3.shadow;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingVolume;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix4f;
import com.jme3.math.Transform;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.GeometryList;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import java.util.Iterator;
import java.util.List;

public class ShadowUtil {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode;

        static {
            int[] iArr = new int[RenderQueue.ShadowMode.values().length];
            $SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode = iArr;
            try {
                iArr[RenderQueue.ShadowMode.Cast.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode[RenderQueue.ShadowMode.Receive.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode[RenderQueue.ShadowMode.CastAndReceive.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class OccludersExtractor {
        BoundingBox casterBB;
        public Integer casterCount;
        BoundingBox splitBB;
        GeometryList splitOccluders;
        TempVars vars;
        Matrix4f viewProjMatrix;

        public OccludersExtractor() {
        }

        private void process(Spatial spatial) {
            if (spatial.getCullHint() == Spatial.CullHint.Always) {
                return;
            }
            RenderQueue.ShadowMode shadowMode = spatial.getShadowMode();
            if (!(spatial instanceof Geometry)) {
                if (spatial instanceof Node) {
                    Node node = (Node) spatial;
                    if (node.getWorldBound() != null) {
                        BoundingVolume transform = node.getWorldBound().transform(this.viewProjMatrix, this.vars.bbox);
                        boolean intersects = this.splitBB.intersects(transform);
                        if (!intersects && (transform instanceof BoundingBox)) {
                            BoundingBox boundingBox = (BoundingBox) transform;
                            boundingBox.setZExtent(boundingBox.getZExtent() + 50.0f);
                            boundingBox.setCenter(boundingBox.getCenter().addLocal(0.0f, 0.0f, 25.0f));
                            intersects = this.splitBB.intersects(boundingBox);
                        }
                        if (intersects) {
                            Iterator<Spatial> it = node.getChildren().iterator();
                            while (it.hasNext()) {
                                process(it.next());
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            Geometry geometry = (Geometry) spatial;
            if (shadowMode == RenderQueue.ShadowMode.Off || shadowMode == RenderQueue.ShadowMode.Receive || geometry.isGrouped() || geometry.getWorldBound() == null) {
                return;
            }
            BoundingVolume transform2 = geometry.getWorldBound().transform(this.viewProjMatrix, this.vars.bbox);
            boolean intersects2 = this.splitBB.intersects(transform2);
            if (intersects2 || !(transform2 instanceof BoundingBox)) {
                if (intersects2) {
                    this.casterBB.mergeLocal(transform2);
                    this.casterCount = Integer.valueOf(this.casterCount.intValue() + 1);
                    GeometryList geometryList = this.splitOccluders;
                    if (geometryList != null) {
                        geometryList.add(geometry);
                        return;
                    }
                    return;
                }
                return;
            }
            BoundingBox boundingBox2 = (BoundingBox) transform2;
            boundingBox2.setZExtent(boundingBox2.getZExtent() + 50.0f);
            boundingBox2.setCenter(boundingBox2.getCenter().addLocal(0.0f, 0.0f, 25.0f));
            if (this.splitBB.intersects(boundingBox2)) {
                if (!Float.isNaN(transform2.getCenter().f81611x) && !Float.isInfinite(transform2.getCenter().f81611x)) {
                    boundingBox2.setZExtent(boundingBox2.getZExtent() - 50.0f);
                    boundingBox2.setCenter(boundingBox2.getCenter().subtractLocal(0.0f, 0.0f, 25.0f));
                    this.casterBB.mergeLocal(transform2);
                    this.casterCount = Integer.valueOf(this.casterCount.intValue() + 1);
                }
                GeometryList geometryList2 = this.splitOccluders;
                if (geometryList2 != null) {
                    geometryList2.add(geometry);
                }
            }
        }

        public int addOccluders(Spatial spatial) {
            if (spatial != null) {
                process(spatial);
            }
            return this.casterCount.intValue();
        }

        public OccludersExtractor(Matrix4f matrix4f, int i10, BoundingBox boundingBox, BoundingBox boundingBox2, GeometryList geometryList, TempVars tempVars) {
            this.viewProjMatrix = matrix4f;
            this.casterCount = Integer.valueOf(i10);
            this.splitBB = boundingBox;
            this.casterBB = boundingBox2;
            this.splitOccluders = geometryList;
            this.vars = tempVars;
        }
    }

    private ShadowUtil() {
    }

    private static void addGeometriesInCamFrustumAndViewPortFromNode(Camera camera, Camera[] cameraArr, Spatial spatial, RenderQueue.ShadowMode shadowMode, GeometryList geometryList) {
        if (spatial.getCullHint() == Spatial.CullHint.Always) {
            return;
        }
        int i10 = 0;
        boolean z10 = false;
        while (i10 < cameraArr.length && !z10) {
            Camera camera2 = cameraArr[i10];
            int planeState = camera2.getPlaneState();
            camera2.setPlaneState(0);
            boolean z11 = camera2.contains(spatial.getWorldBound()) != Camera.FrustumIntersect.Outside && spatial.checkCulling(camera);
            camera2.setPlaneState(planeState);
            i10++;
            z10 = z11;
        }
        if (z10) {
            if (spatial instanceof Node) {
                Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
                while (it.hasNext()) {
                    addGeometriesInCamFrustumAndViewPortFromNode(camera, cameraArr, it.next(), shadowMode, geometryList);
                }
            } else if ((spatial instanceof Geometry) && checkShadowMode(spatial.getShadowMode(), shadowMode)) {
                Geometry geometry = (Geometry) spatial;
                if (geometry.isGrouped()) {
                    return;
                }
                geometryList.add(geometry);
            }
        }
    }

    private static void addGeometriesInCamFrustumFromNode(Camera camera, Node node, RenderQueue.ShadowMode shadowMode, GeometryList geometryList) {
        if (node.getCullHint() == Spatial.CullHint.Always) {
            return;
        }
        camera.setPlaneState(0);
        if (camera.contains(node.getWorldBound()) != Camera.FrustumIntersect.Outside) {
            for (Spatial spatial : node.getChildren()) {
                if (spatial instanceof Node) {
                    addGeometriesInCamFrustumFromNode(camera, (Node) spatial, shadowMode, geometryList);
                } else if ((spatial instanceof Geometry) && spatial.getCullHint() != Spatial.CullHint.Always) {
                    camera.setPlaneState(0);
                    if (checkShadowMode(spatial.getShadowMode(), shadowMode)) {
                        Geometry geometry = (Geometry) spatial;
                        if (!geometry.isGrouped() && camera.contains(spatial.getWorldBound()) != Camera.FrustumIntersect.Outside) {
                            geometryList.add(geometry);
                        }
                    }
                }
            }
        }
    }

    private static boolean checkShadowMode(RenderQueue.ShadowMode shadowMode, RenderQueue.ShadowMode shadowMode2) {
        if (shadowMode == RenderQueue.ShadowMode.Off) {
            return false;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode[shadowMode2.ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 == 3 : shadowMode == RenderQueue.ShadowMode.Receive || shadowMode == RenderQueue.ShadowMode.CastAndReceive : shadowMode == RenderQueue.ShadowMode.Cast || shadowMode == RenderQueue.ShadowMode.CastAndReceive;
    }

    public static BoundingBox computeBoundForPoints(Vector3f[] vector3fArr, Transform transform) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1.set(Vector3f.POSITIVE_INFINITY);
        Vector3f vector3f2 = tempVars.vect2.set(Vector3f.NEGATIVE_INFINITY);
        Vector3f vector3f3 = tempVars.vect3;
        for (Vector3f vector3f4 : vector3fArr) {
            transform.transformVector(vector3f4, vector3f3);
            vector3f.minLocal(vector3f3);
            vector3f2.maxLocal(vector3f3);
        }
        Vector3f multLocal = tempVars.vect4.set(vector3f).addLocal(vector3f2).multLocal(0.5f);
        Vector3f multLocal2 = tempVars.vect5.set(vector3f2).subtractLocal(vector3f).multLocal(0.5f);
        BoundingBox boundingBox = new BoundingBox(multLocal, multLocal2.f81611x, multLocal2.f81612y, multLocal2.f81613z);
        tempVars.release();
        return boundingBox;
    }

    public static BoundingBox computeUnionBound(GeometryList geometryList, Transform transform) {
        BoundingBox boundingBox = new BoundingBox();
        TempVars tempVars = TempVars.get();
        for (int i10 = 0; i10 < geometryList.size(); i10++) {
            BoundingVolume transform2 = geometryList.get(i10).getWorldBound().transform(transform, tempVars.bbox);
            if (!Float.isNaN(transform2.getCenter().f81611x) && !Float.isInfinite(transform2.getCenter().f81611x)) {
                boundingBox.mergeLocal(transform2);
            }
        }
        tempVars.release();
        return boundingBox;
    }

    public static void getGeometriesInCamFrustum(GeometryList geometryList, Camera camera, GeometryList geometryList2) {
        for (int i10 = 0; i10 < geometryList.size(); i10++) {
            Geometry geometry = geometryList.get(i10);
            int planeState = camera.getPlaneState();
            camera.setPlaneState(0);
            if (camera.contains(geometry.getWorldBound()) != Camera.FrustumIntersect.Outside) {
                geometryList2.add(geometry);
            }
            camera.setPlaneState(planeState);
        }
    }

    public static void getGeometriesInLightRadius(GeometryList geometryList, Camera[] cameraArr, GeometryList geometryList2) {
        for (int i10 = 0; i10 < geometryList.size(); i10++) {
            Geometry geometry = geometryList.get(i10);
            int i11 = 0;
            boolean z10 = false;
            while (i11 < cameraArr.length && !z10) {
                Camera camera = cameraArr[i11];
                int planeState = camera.getPlaneState();
                camera.setPlaneState(0);
                boolean z11 = camera.contains(geometry.getWorldBound()) != Camera.FrustumIntersect.Outside;
                camera.setPlaneState(planeState);
                i11++;
                z10 = z11;
            }
            if (z10) {
                geometryList2.add(geometry);
            }
        }
    }

    public static void getLitGeometriesInViewPort(Spatial spatial, Camera camera, Camera[] cameraArr, RenderQueue.ShadowMode shadowMode, GeometryList geometryList) {
        if (spatial == null || !(spatial instanceof Node)) {
            return;
        }
        addGeometriesInCamFrustumAndViewPortFromNode(camera, cameraArr, spatial, shadowMode, geometryList);
    }

    public static void updateFrustumPoints(Camera camera, float f10, float f11, float f12, Vector3f[] vector3fArr) {
        float f13;
        float f14;
        float f15;
        TempVars tempVars = TempVars.get();
        Vector3f location = camera.getLocation();
        Vector3f direction = camera.getDirection(tempVars.vect1);
        Vector3f up = camera.getUp(tempVars.vect2);
        float frustumTop = camera.getFrustumTop() / camera.getFrustumNear();
        float frustumTop2 = camera.getFrustumTop();
        float frustumRight = camera.getFrustumRight() / frustumTop2;
        if (camera.isParallelProjection()) {
            f14 = frustumRight * frustumTop2;
            f13 = frustumTop2;
            f15 = f14;
        } else {
            frustumTop2 = frustumTop * f10;
            float f16 = frustumTop2 * frustumRight;
            f13 = frustumTop * f11;
            float f17 = frustumRight * f13;
            f14 = f16;
            f15 = f17;
        }
        Vector3f normalizeLocal = tempVars.vect3.set(direction).crossLocal(up).normalizeLocal();
        Vector3f vector3f = tempVars.vect4;
        vector3f.set(direction).multLocal(f11).addLocal(location);
        Vector3f vector3f2 = tempVars.vect5.set(vector3f);
        vector3f.set(direction).multLocal(f10).addLocal(location);
        Vector3f vector3f3 = tempVars.vect6.set(vector3f);
        Vector3f multLocal = tempVars.vect7.set(up).multLocal(frustumTop2);
        Vector3f multLocal2 = tempVars.vect8.set(up).multLocal(f13);
        Vector3f multLocal3 = tempVars.vect9.set(normalizeLocal).multLocal(f14);
        Vector3f multLocal4 = tempVars.vect10.set(normalizeLocal).multLocal(f15);
        vector3fArr[0].set(vector3f3).subtractLocal(multLocal).subtractLocal(multLocal3);
        vector3fArr[1].set(vector3f3).addLocal(multLocal).subtractLocal(multLocal3);
        vector3fArr[2].set(vector3f3).addLocal(multLocal).addLocal(multLocal3);
        vector3fArr[3].set(vector3f3).subtractLocal(multLocal).addLocal(multLocal3);
        vector3fArr[4].set(vector3f2).subtractLocal(multLocal2).subtractLocal(multLocal4);
        vector3fArr[5].set(vector3f2).addLocal(multLocal2).subtractLocal(multLocal4);
        vector3fArr[6].set(vector3f2).addLocal(multLocal2).addLocal(multLocal4);
        vector3fArr[7].set(vector3f2).subtractLocal(multLocal2).addLocal(multLocal4);
        if (f12 != 1.0f) {
            Vector3f vector3f4 = new Vector3f();
            for (int i10 = 0; i10 < 8; i10++) {
                vector3f4.addLocal(vector3fArr[i10]);
            }
            vector3f4.divideLocal(8.0f);
            for (int i11 = 0; i11 < 8; i11++) {
                vector3f.set(vector3fArr[i11]).subtractLocal(vector3f4);
                vector3f.multLocal(f12 - 1.0f);
                vector3fArr[i11].addLocal(vector3f);
            }
        }
        tempVars.release();
    }

    public static void updateFrustumPoints2(Camera camera, Vector3f[] vector3fArr) {
        int width = camera.getWidth();
        int height = camera.getHeight();
        TempVars tempVars = TempVars.get();
        Vector2f vector2f = tempVars.vect2d;
        camera.getWorldCoordinates(vector2f.set(0.0f, 0.0f), 0.0f, vector3fArr[0]);
        float f10 = height;
        camera.getWorldCoordinates(vector2f.set(0.0f, f10), 0.0f, vector3fArr[1]);
        float f11 = width;
        camera.getWorldCoordinates(vector2f.set(f11, f10), 0.0f, vector3fArr[2]);
        camera.getWorldCoordinates(vector2f.set(f11, 0.0f), 0.0f, vector3fArr[3]);
        camera.getWorldCoordinates(vector2f.set(0.0f, 0.0f), 1.0f, vector3fArr[4]);
        camera.getWorldCoordinates(vector2f.set(0.0f, f10), 1.0f, vector3fArr[5]);
        camera.getWorldCoordinates(vector2f.set(f11, f10), 1.0f, vector3fArr[6]);
        camera.getWorldCoordinates(vector2f.set(f11, 0.0f), 1.0f, vector3fArr[7]);
        tempVars.release();
    }

    public static void updateShadowCamera(Camera camera, Vector3f[] vector3fArr) {
        boolean isParallelProjection = camera.isParallelProjection();
        camera.setProjectionMatrix(null);
        if (isParallelProjection) {
            camera.setFrustum(-1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f);
        } else {
            camera.setFrustumPerspective(45.0f, 1.0f, 1.0f, 150.0f);
        }
        Matrix4f viewProjectionMatrix = camera.getViewProjectionMatrix();
        Matrix4f projectionMatrix = camera.getProjectionMatrix();
        BoundingBox computeBoundForPoints = computeBoundForPoints(vector3fArr, viewProjectionMatrix);
        TempVars tempVars = TempVars.get();
        Vector3f min = computeBoundForPoints.getMin(tempVars.vect1);
        Vector3f max = computeBoundForPoints.getMax(tempVars.vect2);
        float f10 = max.f81611x;
        float f11 = min.f81611x;
        float f12 = 2.0f / (f10 - f11);
        float f13 = max.f81612y;
        float f14 = min.f81612y;
        float f15 = 2.0f / (f13 - f14);
        float f16 = max.f81613z;
        float f17 = min.f81613z;
        float f18 = 1.0f / (f16 - f17);
        Matrix4f matrix4f = tempVars.tempMat4;
        matrix4f.set(f12, 0.0f, 0.0f, (f10 + f11) * (-0.5f) * f12, 0.0f, f15, 0.0f, (f13 + f14) * (-0.5f) * f15, 0.0f, 0.0f, f18, (-f17) * f18, 0.0f, 0.0f, 0.0f, 1.0f);
        Matrix4f matrix4f2 = tempVars.tempMat42;
        matrix4f2.set(matrix4f);
        matrix4f2.multLocal(projectionMatrix);
        camera.setProjectionMatrix(matrix4f2);
        tempVars.release();
    }

    public static void getGeometriesInCamFrustum(Spatial spatial, Camera camera, RenderQueue.ShadowMode shadowMode, GeometryList geometryList) {
        if (spatial == null || !(spatial instanceof Node)) {
            return;
        }
        int planeState = camera.getPlaneState();
        addGeometriesInCamFrustumFromNode(camera, (Node) spatial, shadowMode, geometryList);
        camera.setPlaneState(planeState);
    }

    public static BoundingBox computeUnionBound(GeometryList geometryList, Matrix4f matrix4f) {
        BoundingBox boundingBox = new BoundingBox();
        TempVars tempVars = TempVars.get();
        for (int i10 = 0; i10 < geometryList.size(); i10++) {
            BoundingVolume transform = geometryList.get(i10).getWorldBound().transform(matrix4f, tempVars.bbox);
            if (!Float.isNaN(transform.getCenter().f81611x) && !Float.isInfinite(transform.getCenter().f81611x)) {
                boundingBox.mergeLocal(transform);
            }
        }
        tempVars.release();
        return boundingBox;
    }

    public static BoundingBox computeBoundForPoints(Vector3f[] vector3fArr, Matrix4f matrix4f) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1.set(Vector3f.POSITIVE_INFINITY);
        Vector3f vector3f2 = tempVars.vect2.set(Vector3f.NEGATIVE_INFINITY);
        Vector3f vector3f3 = tempVars.vect3;
        for (Vector3f vector3f4 : vector3fArr) {
            float multProj = matrix4f.multProj(vector3f4, vector3f3);
            vector3f3.f81611x /= multProj;
            vector3f3.f81612y /= multProj;
            vector3f3.f81613z /= multProj;
            vector3f.minLocal(vector3f3);
            vector3f2.maxLocal(vector3f3);
        }
        Vector3f multLocal = tempVars.vect4.set(vector3f).addLocal(vector3f2).multLocal(0.5f);
        Vector3f multLocal2 = tempVars.vect5.set(vector3f2).subtractLocal(vector3f).multLocal(0.5f);
        BoundingBox boundingBox = new BoundingBox(multLocal, multLocal2.f81611x + 2.0f, multLocal2.f81612y + 2.0f, multLocal2.f81613z + 2.5f);
        tempVars.release();
        return boundingBox;
    }

    public static BoundingBox computeUnionBound(List<BoundingVolume> list) {
        BoundingBox boundingBox = new BoundingBox();
        for (int i10 = 0; i10 < list.size(); i10++) {
            boundingBox.mergeLocal(list.get(i10));
        }
        return boundingBox;
    }

    public static void updateShadowCamera(ViewPort viewPort, GeometryList geometryList, Camera camera, Vector3f[] vector3fArr, GeometryList geometryList2, float f10) {
        float f11;
        float f12;
        boolean isParallelProjection = camera.isParallelProjection();
        camera.setProjectionMatrix(null);
        if (isParallelProjection) {
            camera.setFrustum(-camera.getFrustumFar(), camera.getFrustumFar(), -1.0f, 1.0f, 1.0f, -1.0f);
        }
        Matrix4f viewProjectionMatrix = camera.getViewProjectionMatrix();
        BoundingBox computeBoundForPoints = computeBoundForPoints(vector3fArr, viewProjectionMatrix);
        TempVars tempVars = TempVars.get();
        BoundingBox boundingBox = new BoundingBox();
        BoundingBox boundingBox2 = new BoundingBox();
        int i10 = 0;
        for (int i11 = 0; i11 < geometryList.size(); i11++) {
            BoundingVolume transform = geometryList.get(i11).getWorldBound().transform(viewProjectionMatrix, tempVars.bbox);
            if (computeBoundForPoints.intersects(transform) && !Float.isNaN(transform.getCenter().f81611x) && !Float.isInfinite(transform.getCenter().f81611x)) {
                boundingBox2.mergeLocal(transform);
                i10++;
            }
        }
        OccludersExtractor occludersExtractor = new OccludersExtractor(viewProjectionMatrix, 0, computeBoundForPoints, boundingBox, geometryList2, tempVars);
        Iterator<Spatial> it = viewPort.getScenes().iterator();
        while (it.hasNext()) {
            occludersExtractor.addOccluders(it.next());
        }
        int intValue = occludersExtractor.casterCount.intValue();
        if (intValue == 0) {
            tempVars.release();
            return;
        }
        if (intValue != i10) {
            boundingBox.setXExtent(boundingBox.getXExtent() + 2.0f);
            boundingBox.setYExtent(boundingBox.getYExtent() + 2.0f);
            boundingBox.setZExtent(boundingBox.getZExtent() + 2.0f);
        }
        Vector3f min = boundingBox.getMin(tempVars.vect1);
        Vector3f max = boundingBox.getMax(tempVars.vect2);
        Vector3f min2 = boundingBox2.getMin(tempVars.vect3);
        Vector3f max2 = boundingBox2.getMax(tempVars.vect4);
        Vector3f min3 = computeBoundForPoints.getMin(tempVars.vect5);
        Vector3f max3 = computeBoundForPoints.getMax(tempVars.vect6);
        min3.f81613z = 0.0f;
        Matrix4f projectionMatrix = camera.getProjectionMatrix();
        Vector3f vector3f = tempVars.vect7;
        Vector3f vector3f2 = tempVars.vect8;
        vector3f.f81611x = Math.max(Math.max(min.f81611x, min2.f81611x), min3.f81611x);
        vector3f2.f81611x = Math.min(Math.min(max.f81611x, max2.f81611x), max3.f81611x);
        vector3f.f81612y = Math.max(Math.max(min.f81612y, min2.f81612y), min3.f81612y);
        vector3f2.f81612y = Math.min(Math.min(max.f81612y, max2.f81612y), max3.f81612y);
        vector3f.f81613z = Math.min(min.f81613z, min3.f81613z);
        vector3f2.f81613z = Math.min(max2.f81613z, max3.f81613z);
        float f13 = vector3f2.f81611x - vector3f.f81611x;
        float f14 = vector3f2.f81612y - vector3f.f81612y;
        float f15 = f13 == 0.0f ? 0.0f : 2.0f / f13;
        float f16 = f14 == 0.0f ? 0.0f : 2.0f / f14;
        float f17 = 0.5f * f10;
        if (f17 != 0.0f && f15 > 0.0f && f16 > 0.0f) {
            f15 = (1.0f / FastMath.ceil((1.0f / f15) * 0.1f)) * 0.1f;
            f16 = (1.0f / FastMath.ceil((1.0f / f16) * 0.1f)) * 0.1f;
        }
        float f18 = f15;
        float f19 = f16;
        float f20 = (vector3f2.f81611x + vector3f.f81611x) * (-0.5f) * f18;
        float f21 = (vector3f2.f81612y + vector3f.f81612y) * (-0.5f) * f19;
        if (f17 == 0.0f || f18 <= 0.0f || f19 <= 0.0f) {
            f11 = f20;
            f12 = f21;
        } else {
            f11 = FastMath.ceil(f20 * f17) / f17;
            f12 = FastMath.ceil(f21 * f17) / f17;
        }
        float f22 = vector3f2.f81613z;
        float f23 = vector3f.f81613z;
        float f24 = f22 - f23;
        float f25 = f24 != 0.0f ? 1.0f / f24 : 0.0f;
        Matrix4f matrix4f = tempVars.tempMat4;
        matrix4f.set(f18, 0.0f, 0.0f, f11, 0.0f, f19, 0.0f, f12, 0.0f, 0.0f, f25, (-f23) * f25, 0.0f, 0.0f, 0.0f, 1.0f);
        Matrix4f matrix4f2 = tempVars.tempMat42;
        matrix4f2.set(matrix4f);
        matrix4f2.multLocal(projectionMatrix);
        camera.setProjectionMatrix(matrix4f2);
        tempVars.release();
    }
}
