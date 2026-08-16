package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.filament.VertexBuffer;
import java.nio.Buffer;
import java.nio.BufferOverflowException;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;

public class RenderableManager {

    public static final String f60051b = "Filament";

    public static final VertexBuffer.c[] f60052c = VertexBuffer.c.values();

    public long f60053a;

    public static class a {

        public final C0938a f60054a;

        public final long f60055b;

        public static class C0938a {

            public final long f60056a;

            public C0938a(long j10) {
                this.f60056a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                RenderableManager.nDestroyBuilder(this.f60056a);
            }
        }

        public enum b {
            DYNAMIC,
            STATIC_BOUNDS,
            STATIC
        }

        public a(@IntRange(from = 1) int i10) {
            long nCreateBuilder = RenderableManager.nCreateBuilder(i10);
            this.f60055b = nCreateBuilder;
            this.f60054a = new C0938a(nCreateBuilder);
        }

        @NonNull
        public a A(@IntRange(from = 0, to = 255) int i10) {
            RenderableManager.nBuilderSkinning(this.f60055b, i10);
            return this;
        }

        @NonNull
        public a B(@IntRange(from = 0, to = 255) int i10, @NonNull Buffer buffer) {
            if (RenderableManager.nBuilderSkinningBones(this.f60055b, i10, buffer, buffer.remaining()) >= 0) {
                return this;
            }
            throw new BufferOverflowException();
        }

        @NonNull
        public a C(SkinningBuffer skinningBuffer, @IntRange(from = 0, to = 255) int i10, int i11) {
            RenderableManager.nBuilderSkinningBuffer(this.f60055b, skinningBuffer != null ? skinningBuffer.h() : 0L, i10, i11);
            return this;
        }

        @NonNull
        public a a(@IntRange(from = 0) int i10, @IntRange(from = 0, to = 32767) int i11) {
            RenderableManager.nBuilderBlendOrder(this.f60055b, i10, i11);
            return this;
        }

        @NonNull
        public a b(@NonNull Box box) {
            RenderableManager.nBuilderBoundingBox(this.f60055b, box.a()[0], box.a()[1], box.a()[2], box.b()[0], box.b()[1], box.b()[2]);
            return this;
        }

        public void c(@NonNull Engine engine, @g int i10) {
            if (RenderableManager.nBuilderBuild(this.f60055b, engine.getNativeObject(), i10)) {
                return;
            }
            throw new IllegalStateException("Couldn't create Renderable component for entity " + i10 + ", see log.");
        }

        @NonNull
        public a d(boolean z10) {
            RenderableManager.nBuilderCastShadows(this.f60055b, z10);
            return this;
        }

        @NonNull
        public a e(@IntRange(from = 0, to = 7) int i10) {
            RenderableManager.nBuilderChannel(this.f60055b, i10);
            return this;
        }

        @NonNull
        public a f(boolean z10) {
            RenderableManager.nBuilderCulling(this.f60055b, z10);
            return this;
        }

        @NonNull
        public a g(boolean z10) {
            RenderableManager.nBuilderEnableSkinningBuffers(this.f60055b, z10);
            return this;
        }

        @NonNull
        public a h(boolean z10) {
            RenderableManager.nBuilderFog(this.f60055b, z10);
            return this;
        }

        @NonNull
        public a i(@IntRange(from = 0) int i10, @NonNull b bVar, @NonNull VertexBuffer vertexBuffer) {
            RenderableManager.nBuilderGeometry(this.f60055b, i10, bVar.b(), vertexBuffer.j());
            return this;
        }

        @NonNull
        public a j(@IntRange(from = 0) int i10, @NonNull b bVar, @NonNull VertexBuffer vertexBuffer, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12) {
            RenderableManager.nBuilderGeometry(this.f60055b, i10, bVar.b(), vertexBuffer.j(), i11, i12);
            return this;
        }

        @NonNull
        public a k(@IntRange(from = 0) int i10, @NonNull b bVar, @NonNull VertexBuffer vertexBuffer, @NonNull IndexBuffer indexBuffer) {
            RenderableManager.nBuilderGeometry(this.f60055b, i10, bVar.b(), vertexBuffer.j(), indexBuffer.h());
            return this;
        }

        @NonNull
        public a l(@IntRange(from = 0) int i10, @NonNull b bVar, @NonNull VertexBuffer vertexBuffer, @NonNull IndexBuffer indexBuffer, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12) {
            RenderableManager.nBuilderGeometry(this.f60055b, i10, bVar.b(), vertexBuffer.j(), indexBuffer.h(), i11, i12);
            return this;
        }

        @NonNull
        public a m(@IntRange(from = 0) int i10, @NonNull b bVar, @NonNull VertexBuffer vertexBuffer, @NonNull IndexBuffer indexBuffer, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @IntRange(from = 0) int i14) {
            RenderableManager.nBuilderGeometry(this.f60055b, i10, bVar.b(), vertexBuffer.j(), indexBuffer.h(), i11, i12, i13, i14);
            return this;
        }

        @NonNull
        public a n(b bVar) {
            RenderableManager.nBuilderGeometryType(this.f60055b, bVar.ordinal());
            return this;
        }

        @NonNull
        public a o(@IntRange(from = 0) int i10, boolean z10) {
            RenderableManager.nBuilderGlobalBlendOrderEnabled(this.f60055b, i10, z10);
            return this;
        }

        @NonNull
        public a p(@IntRange(from = 1, to = 32767) int i10) {
            RenderableManager.nBuilderInstances(this.f60055b, i10);
            return this;
        }

        @NonNull
        public a q(@IntRange(from = 1) int i10, @NonNull InstanceBuffer instanceBuffer) {
            RenderableManager.nBuilderInstancesWithBuffer(this.f60055b, i10, instanceBuffer.h());
            return this;
        }

        @NonNull
        public a r(@IntRange(from = 0, to = 255) int i10, @IntRange(from = 0, to = 255) int i11) {
            RenderableManager.nBuilderLayerMask(this.f60055b, i10 & 255, i11 & 255);
            return this;
        }

        @NonNull
        public a s(@IntRange(from = 0, to = 7) int i10, boolean z10) {
            RenderableManager.nBuilderLightChannel(this.f60055b, i10, z10);
            return this;
        }

        @NonNull
        public a t(@IntRange(from = 0) int i10, @NonNull MaterialInstance materialInstance) {
            RenderableManager.nBuilderMaterial(this.f60055b, i10, materialInstance.l());
            return this;
        }

        @NonNull
        public a u(@IntRange(from = 0, to = 255) int i10) {
            RenderableManager.nBuilderMorphing(this.f60055b, i10);
            return this;
        }

        @NonNull
        public a v(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12) {
            RenderableManager.nBuilderSetMorphTargetBufferOffsetAt(this.f60055b, i10, i11, i12);
            return this;
        }

        @NonNull
        public a w(@NonNull MorphTargetBuffer morphTargetBuffer) {
            RenderableManager.nBuilderMorphingStandard(this.f60055b, morphTargetBuffer.k());
            return this;
        }

        @NonNull
        public a x(@IntRange(from = 0, to = 7) int i10) {
            RenderableManager.nBuilderPriority(this.f60055b, i10);
            return this;
        }

        @NonNull
        public a y(boolean z10) {
            RenderableManager.nBuilderReceiveShadows(this.f60055b, z10);
            return this;
        }

        @NonNull
        public a z(boolean z10) {
            RenderableManager.nBuilderScreenSpaceContactShadows(this.f60055b, z10);
            return this;
        }
    }

    public enum b {
        POINTS(0),
        LINES(1),
        LINE_STRIP(3),
        TRIANGLES(4),
        TRIANGLE_STRIP(5);

        private final int mType;

        b(int i10) {
            this.mType = i10;
        }

        public int b() {
            return this.mType;
        }
    }

    public RenderableManager(long j10) {
        this.f60053a = j10;
    }

    public static native void nBuilderBlendOrder(long j10, int i10, int i11);

    public static native void nBuilderBoundingBox(long j10, float f10, float f11, float f12, float f13, float f14, float f15);

    public static native boolean nBuilderBuild(long j10, long j11, int i10);

    public static native void nBuilderCastShadows(long j10, boolean z10);

    public static native void nBuilderChannel(long j10, int i10);

    public static native void nBuilderCulling(long j10, boolean z10);

    public static native void nBuilderEnableSkinningBuffers(long j10, boolean z10);

    public static native void nBuilderFog(long j10, boolean z10);

    public static native void nBuilderGeometry(long j10, int i10, int i11, long j11);

    public static native void nBuilderGeometry(long j10, int i10, int i11, long j11, int i12, int i13);

    public static native void nBuilderGeometry(long j10, int i10, int i11, long j11, long j12);

    public static native void nBuilderGeometry(long j10, int i10, int i11, long j11, long j12, int i12, int i13);

    public static native void nBuilderGeometry(long j10, int i10, int i11, long j11, long j12, int i12, int i13, int i14, int i15);

    public static native void nBuilderGeometryType(long j10, int i10);

    public static native void nBuilderGlobalBlendOrderEnabled(long j10, int i10, boolean z10);

    public static native void nBuilderInstances(long j10, int i10);

    public static native void nBuilderInstancesWithBuffer(long j10, int i10, long j11);

    public static native void nBuilderLayerMask(long j10, int i10, int i11);

    public static native void nBuilderLightChannel(long j10, int i10, boolean z10);

    public static native void nBuilderMaterial(long j10, int i10, long j11);

    public static native void nBuilderMorphing(long j10, int i10);

    public static native void nBuilderMorphingStandard(long j10, long j11);

    public static native void nBuilderPriority(long j10, int i10);

    public static native void nBuilderReceiveShadows(long j10, boolean z10);

    public static native void nBuilderScreenSpaceContactShadows(long j10, boolean z10);

    public static native void nBuilderSetMorphTargetBufferOffsetAt(long j10, int i10, int i11, int i12);

    public static native void nBuilderSkinning(long j10, int i10);

    public static native int nBuilderSkinningBones(long j10, int i10, Buffer buffer, int i11);

    public static native void nBuilderSkinningBuffer(long j10, long j11, int i10, int i11);

    private static native void nClearMaterialInstanceAt(long j10, int i10, int i11);

    public static native long nCreateBuilder(int i10);

    private static native void nDestroy(long j10, int i10);

    public static native void nDestroyBuilder(long j10);

    private static native void nGetAxisAlignedBoundingBox(long j10, int i10, float[] fArr, float[] fArr2);

    private static native int nGetBlendOrderAt(long j10, int i10, int i11);

    private static native int nGetChannel(long j10, int i10);

    private static native int nGetEnabledAttributesAt(long j10, int i10, int i11);

    private static native boolean nGetFogEnabled(long j10, int i10);

    private static native int nGetInstance(long j10, int i10);

    private static native int nGetInstanceCount(long j10, int i10);

    private static native boolean nGetLightChannel(long j10, int i10, int i11);

    private static native long nGetMaterialInstanceAt(long j10, int i10, int i11);

    private static native int nGetMorphTargetCount(long j10, int i10);

    private static native int nGetPrimitiveCount(long j10, int i10);

    private static native int nGetPriority(long j10, int i10);

    private static native boolean nHasComponent(long j10, int i10);

    private static native boolean nIsCullingEnabled(long j10, int i10);

    private static native boolean nIsGlobalBlendOrderEnabledAt(long j10, int i10, int i11);

    private static native boolean nIsScreenSpaceContactShadowsEnabled(long j10, int i10);

    private static native boolean nIsShadowCaster(long j10, int i10);

    private static native boolean nIsShadowReceiver(long j10, int i10);

    private static native void nSetAxisAlignedBoundingBox(long j10, int i10, float f10, float f11, float f12, float f13, float f14, float f15);

    private static native void nSetBlendOrderAt(long j10, int i10, int i11, int i12);

    private static native int nSetBonesAsMatrices(long j10, int i10, Buffer buffer, int i11, int i12, int i13);

    private static native int nSetBonesAsQuaternions(long j10, int i10, Buffer buffer, int i11, int i12, int i13);

    private static native void nSetCastShadows(long j10, int i10, boolean z10);

    private static native void nSetChannel(long j10, int i10, int i11);

    private static native void nSetCulling(long j10, int i10, boolean z10);

    private static native void nSetFogEnabled(long j10, int i10, boolean z10);

    private static native void nSetGeometryAt(long j10, int i10, int i11, int i12, long j11, int i13, int i14);

    private static native void nSetGeometryAt(long j10, int i10, int i11, int i12, long j11, long j12, int i13, int i14);

    private static native void nSetGlobalBlendOrderEnabledAt(long j10, int i10, int i11, boolean z10);

    private static native void nSetLayerMask(long j10, int i10, int i11, int i12);

    private static native void nSetLightChannel(long j10, int i10, int i11, boolean z10);

    private static native void nSetMaterialInstanceAt(long j10, int i10, int i11, long j11);

    private static native void nSetMorphTargetBufferOffsetAt(long j10, int i10, int i11, int i12, long j11, int i13);

    private static native void nSetMorphWeights(long j10, int i10, float[] fArr, int i11);

    private static native void nSetPriority(long j10, int i10, int i11);

    private static native void nSetReceiveShadows(long j10, int i10, boolean z10);

    private static native void nSetScreenSpaceContactShadows(long j10, int i10, boolean z10);

    private static native void nSetSkinningBuffer(long j10, int i10, long j11, int i11, int i12);

    public void F(@h int i10, @IntRange(from = 0) int i11) {
        nClearMaterialInstanceAt(this.f60053a, i10, i11);
    }

    public void G(@g int i10) {
        nDestroy(this.f60053a, i10);
    }

    @NonNull
    public Box H(@h int i10, @Nullable Box box) {
        if (box == null) {
            box = new Box();
        }
        nGetAxisAlignedBoundingBox(this.f60053a, i10, box.a(), box.b());
        return box;
    }

    public int I(@h int i10, @IntRange(from = 0) int i11) {
        return nGetBlendOrderAt(this.f60053a, i10, i11);
    }

    public int J(@h int i10) {
        return nGetChannel(this.f60053a, i10);
    }

    public Set<VertexBuffer.c> K(@h int i10, @IntRange(from = 0) int i11) {
        int nGetEnabledAttributesAt = nGetEnabledAttributesAt(this.f60053a, i10, i11);
        EnumSet noneOf = EnumSet.noneOf(VertexBuffer.c.class);
        VertexBuffer.c[] cVarArr = f60052c;
        for (int i12 = 0; i12 < cVarArr.length; i12++) {
            if (((1 << i12) & nGetEnabledAttributesAt) != 0) {
                noneOf.add(cVarArr[i12]);
            }
        }
        return Collections.unmodifiableSet(noneOf);
    }

    public boolean L(@h int i10) {
        return nGetFogEnabled(this.f60053a, i10);
    }

    @h
    public int M(@g int i10) {
        return nGetInstance(this.f60053a, i10);
    }

    @IntRange(from = 0)
    public int N(@h int i10) {
        return nGetInstanceCount(this.f60053a, i10);
    }

    public boolean O(@h int i10, @IntRange(from = 0, to = 7) int i11) {
        return nGetLightChannel(this.f60053a, i10, i11);
    }

    @NonNull
    public MaterialInstance P(@h int i10, @IntRange(from = 0) int i11) {
        return new MaterialInstance(nGetMaterialInstanceAt(this.f60053a, i10, i11));
    }

    @IntRange(from = 0)
    public int Q(@h int i10) {
        return nGetMorphTargetCount(this.f60053a, i10);
    }

    public long R() {
        return this.f60053a;
    }

    @IntRange(from = 0)
    public int S(@h int i10) {
        return nGetPrimitiveCount(this.f60053a, i10);
    }

    public int T(@h int i10) {
        return nGetPriority(this.f60053a, i10);
    }

    public boolean U(@g int i10) {
        return nHasComponent(this.f60053a, i10);
    }

    public boolean V(@h int i10) {
        return nIsCullingEnabled(this.f60053a, i10);
    }

    public boolean W(@h int i10, @IntRange(from = 0) int i11) {
        return nIsGlobalBlendOrderEnabledAt(this.f60053a, i10, i11);
    }

    public boolean X(@h int i10) {
        return nIsScreenSpaceContactShadowsEnabled(this.f60053a, i10);
    }

    public boolean Y(@h int i10) {
        return nIsShadowCaster(this.f60053a, i10);
    }

    public boolean Z(@h int i10) {
        return nIsShadowReceiver(this.f60053a, i10);
    }

    public void a0(@h int i10, @NonNull Box box) {
        nSetAxisAlignedBoundingBox(this.f60053a, i10, box.a()[0], box.a()[1], box.a()[2], box.b()[0], box.b()[1], box.b()[2]);
    }

    public void b0(@h int i10, @IntRange(from = 0) int i11, @IntRange(from = 0, to = 65535) int i12) {
        nSetBlendOrderAt(this.f60053a, i10, i11, i12);
    }

    public void c0(@h int i10, @NonNull Buffer buffer, @IntRange(from = 0, to = 255) int i11, @IntRange(from = 0) int i12) {
        if (nSetBonesAsMatrices(this.f60053a, i10, buffer, buffer.remaining(), i11, i12) < 0) {
            throw new BufferOverflowException();
        }
    }

    public void d0(@h int i10, @NonNull Buffer buffer, @IntRange(from = 0, to = 255) int i11, @IntRange(from = 0) int i12) {
        if (nSetBonesAsQuaternions(this.f60053a, i10, buffer, buffer.remaining(), i11, i12) < 0) {
            throw new BufferOverflowException();
        }
    }

    public void e0(@h int i10, boolean z10) {
        nSetCastShadows(this.f60053a, i10, z10);
    }

    public void f0(@h int i10, @IntRange(from = 0, to = 7) int i11) {
        nSetChannel(this.f60053a, i10, i11);
    }

    public void g0(@h int i10, boolean z10) {
        nSetCulling(this.f60053a, i10, z10);
    }

    public void h0(@h int i10, boolean z10) {
        nSetFogEnabled(this.f60053a, i10, z10);
    }

    public void i0(@h int i10, @IntRange(from = 0) int i11, @NonNull b bVar, @NonNull VertexBuffer vertexBuffer) {
        nSetGeometryAt(this.f60053a, i10, i11, bVar.b(), vertexBuffer.j(), 0, vertexBuffer.k());
    }

    public void j0(@h int i10, @IntRange(from = 0) int i11, @NonNull b bVar, @NonNull VertexBuffer vertexBuffer, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13) {
        nSetGeometryAt(this.f60053a, i10, i11, bVar.b(), vertexBuffer.j(), i12, i13);
    }

    public void k0(@h int i10, @IntRange(from = 0) int i11, @NonNull b bVar, @NonNull VertexBuffer vertexBuffer, @NonNull IndexBuffer indexBuffer) {
        nSetGeometryAt(this.f60053a, i10, i11, bVar.b(), vertexBuffer.j(), indexBuffer.h(), 0, indexBuffer.g());
    }

    public void l0(@h int i10, @IntRange(from = 0) int i11, @NonNull b bVar, @NonNull VertexBuffer vertexBuffer, @NonNull IndexBuffer indexBuffer, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13) {
        nSetGeometryAt(this.f60053a, i10, i11, bVar.b(), vertexBuffer.j(), indexBuffer.h(), i12, i13);
    }

    public void m0(@h int i10, @IntRange(from = 0) int i11, boolean z10) {
        nSetGlobalBlendOrderEnabledAt(this.f60053a, i10, i11, z10);
    }

    public void n0(@h int i10, @IntRange(from = 0, to = 255) int i11, @IntRange(from = 0, to = 255) int i12) {
        nSetLayerMask(this.f60053a, i10, i11, i12);
    }

    public void o0(@h int i10, @IntRange(from = 0, to = 7) int i11, boolean z10) {
        nSetLightChannel(this.f60053a, i10, i11, z10);
    }

    public void p0(@h int i10, @IntRange(from = 0) int i11, @NonNull MaterialInstance materialInstance) {
        int u10 = materialInstance.j().u();
        if ((nGetEnabledAttributesAt(this.f60053a, i10, i11) & u10) != u10) {
            o.a().k("setMaterialInstanceAt() on primitive " + i11 + " of Renderable at " + i10 + ": declared attributes " + ((Object) K(i10, i11)) + " do no satisfy required attributes " + ((Object) materialInstance.j().t()));
        }
        nSetMaterialInstanceAt(this.f60053a, i10, i11, materialInstance.l());
    }

    public void q0(@h int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13) {
        nSetMorphTargetBufferOffsetAt(this.f60053a, i10, i11, i12, 0L, i13);
    }

    public void r0(@h int i10, @NonNull float[] fArr, @IntRange(from = 0) int i11) {
        nSetMorphWeights(this.f60053a, i10, fArr, i11);
    }

    public void s0(@h int i10, @IntRange(from = 0, to = 7) int i11) {
        nSetPriority(this.f60053a, i10, i11);
    }

    public void t0(@h int i10, boolean z10) {
        nSetReceiveShadows(this.f60053a, i10, z10);
    }

    public void u0(@h int i10, boolean z10) {
        nSetScreenSpaceContactShadows(this.f60053a, i10, z10);
    }

    public void v0(@h int i10, @NonNull SkinningBuffer skinningBuffer, int i11, int i12) {
        nSetSkinningBuffer(this.f60053a, i10, skinningBuffer.h(), i11, i12);
    }
}
