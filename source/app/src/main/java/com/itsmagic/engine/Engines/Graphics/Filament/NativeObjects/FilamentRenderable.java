package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import Ic.InterfaceC2637p;
import Rb.d;
import androidx.annotation.Keep;
import com.google.android.filament.Box;
import com.google.android.filament.RenderableManager;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@InterfaceC2637p
public class FilamentRenderable extends SGCListenerObject {
    private int activeLayerSelect;
    private int activeLayerValue;

    @Keep
    private Box boundingBox;
    private boolean destroyied;

    @Keep
    private final Rb.c entity;
    private boolean hasGeometry;

    @Keep
    private d indexBuffer;

    @Keep
    private FilamentInstanceBuffer instanceBuffer;

    @Keep
    private FilamentMaterial material;
    private boolean pendingLayerApply;
    private final boolean[] renderingLayers;

    @Keep
    private FilamentSkinningBuffer skinningBuffer;

    @Keep
    private FilamentVertexBuffer vertexBuffer;
    public static final M9.c DESTROYER = new a();

    @Keep
    private static final Map<Integer, FilamentMaterial> concreteMaterialReferences = new HashMap();

    @Keep
    private static final Map<Integer, Rb.c> concreteEntityReferences = new HashMap();

    @Keep
    private static final Map<Integer, FilamentVertexBuffer> concreteVBReferences = new HashMap();

    @Keep
    private static final Map<Integer, d> concreteIBReferences = new HashMap();

    @Keep
    private static final Map<Integer, FilamentSkinningBuffer> concreteSkinningBReferences = new HashMap();

    @Keep
    private static final Map<Integer, FilamentInstanceBuffer> concreteInstanceBReferences = new HashMap();

    public class a implements M9.c {
        @Override
        public void a(long pointer) {
            RenderableManager h02 = Qb.a.f().h0();
            int i10 = (int) pointer;
            if (h02.U(i10)) {
                h02.M(i10);
                h02.G(i10);
            }
            FilamentRenderable.concreteMaterialReferences.remove(Integer.valueOf(i10));
            FilamentRenderable.concreteEntityReferences.remove(Integer.valueOf(i10));
            FilamentRenderable.concreteVBReferences.remove(Integer.valueOf(i10));
            FilamentRenderable.concreteIBReferences.remove(Integer.valueOf(i10));
            FilamentRenderable.concreteSkinningBReferences.remove(Integer.valueOf(i10));
            FilamentRenderable.concreteInstanceBReferences.remove(Integer.valueOf(i10));
        }
    }

    public class b extends M9.b {

        public final FilamentVertexBuffer f80105b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Class cls, final FilamentVertexBuffer val$vertexBuffer) {
            super(cls);
            this.f80105b = val$vertexBuffer;
        }

        @Override
        public void b(long pointer) {
            FilamentVertexBuffer filamentVertexBuffer;
            if (FilamentRenderable.this.destroyied || (filamentVertexBuffer = this.f80105b) == null || filamentVertexBuffer.j().j() != pointer) {
                return;
            }
            FilamentRenderable.this.removeGeometryAt(0);
        }
    }

    public class c extends M9.b {

        public final d f80107b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Class cls, final d val$indexBuffer) {
            super(cls);
            this.f80107b = val$indexBuffer;
        }

        @Override
        public void b(long pointer) {
            d dVar;
            if (FilamentRenderable.this.destroyied || (dVar = this.f80107b) == null || dVar.i().h() != pointer) {
                return;
            }
            FilamentRenderable.this.removeGeometryAt(0);
        }
    }

    public FilamentRenderable(RenderableManager.a builder, FilamentMaterial filamentMaterial, Rb.c filamentEntity, FilamentVertexBuffer vertexBuffer, d indexBuffer, RenderableManager.b type, Box bounding) {
        this(builder, filamentMaterial, filamentEntity, vertexBuffer, indexBuffer, type, 0, (FilamentInstanceBuffer) null, bounding);
    }

    private void buildLayerData() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            boolean[] zArr = this.renderingLayers;
            if (i10 >= zArr.length) {
                break;
            }
            if (zArr[i10]) {
                i11 |= 1 << i10;
            }
            i10++;
        }
        if (this.activeLayerValue != i11 || this.activeLayerSelect != 255) {
            this.pendingLayerApply = true;
        }
        this.activeLayerSelect = 255;
        this.activeLayerValue = i11;
    }

    public static boolean isUsed(FilamentVertexBuffer vertexBuffer) {
        Qb.a.d();
        K8.a.G();
        return concreteVBReferences.containsValue(vertexBuffer);
    }

    public void applyLayers() {
        if (this.pendingLayerApply) {
            this.pendingLayerApply = false;
            RenderableManager h02 = Qb.a.f().h0();
            h02.n0(h02.M(this.entity.getId()), this.activeLayerSelect, this.activeLayerValue);
        }
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        this.destroyied = true;
        Qb.a.d();
        K8.a.G();
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 20;
    }

    public FilamentSkinningBuffer getSkinningBuffer() {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        return this.skinningBuffer;
    }

    public boolean hasGeometry() {
        return this.hasGeometry;
    }

    public void hideFromAllLayers() {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Arrays.fill(this.renderingLayers, false);
        if (this.activeLayerValue != 0 || this.activeLayerSelect != 255) {
            this.pendingLayerApply = true;
        }
        this.activeLayerValue = 0;
        this.activeLayerSelect = 255;
        applyLayers();
    }

    public boolean hideFromAllLayersButNoApply() {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Arrays.fill(this.renderingLayers, false);
        if (this.activeLayerValue != 0 || this.activeLayerSelect != 255) {
            this.pendingLayerApply = true;
        }
        this.activeLayerValue = 0;
        this.activeLayerSelect = 255;
        return this.pendingLayerApply;
    }

    public boolean isDestroyied() {
        return this.destroyied;
    }

    public void removeGeometryAt(int primitiveIndex) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        if (primitiveIndex != 0) {
            throw new RuntimeException("Please code concrete material list, we need to reference materials per primitive");
        }
        Qb.a.d();
        RenderableManager h02 = Qb.a.f().h0();
        int M10 = h02.M(this.entity.getId());
        RenderableManager.b bVar = RenderableManager.b.TRIANGLES;
        Vertex vertex = Vertex.f79932Q;
        h02.k0(M10, primitiveIndex, bVar, vertex.f1().j(), vertex.l0().i());
        this.vertexBuffer = vertex.f1();
        this.indexBuffer = vertex.l0();
        concreteVBReferences.put(Integer.valueOf(this.entity.getId()), this.vertexBuffer);
        concreteIBReferences.put(Integer.valueOf(this.entity.getId()), this.indexBuffer);
        this.hasGeometry = false;
    }

    public void removeMaterialInstanceAt(int primitiveIndex) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Qb.a.d();
        if (primitiveIndex != 0) {
            throw new RuntimeException("Please code concrete material list, we need to reference materials per primitive");
        }
        RenderableManager h02 = Qb.a.f().h0();
        h02.F(h02.M(this.entity.getId()), primitiveIndex);
        this.material = null;
        concreteMaterialReferences.put(Integer.valueOf(this.entity.getId()), null);
    }

    public void setAllLayersOffExceptFor(int layerID) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Arrays.fill(this.renderingLayers, false);
        this.renderingLayers[layerID] = true;
        buildLayerData();
        applyLayers();
    }

    public void setBlendOrderAt(int select, int blendOrder) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Qb.a.d();
        RenderableManager h02 = Qb.a.f().h0();
        h02.b0(h02.M(this.entity.getId()), select, blendOrder);
    }

    public void setBounding(Box bounding) {
        int i10 = 0;
        while (true) {
            if (i10 >= bounding.b().length) {
                float[] a10 = bounding.a();
                bounding = new Box(a10[0], a10[1], a10[2], 1.0f, 1.0f, 1.0f);
                break;
            } else if (bounding.b()[i10] != 0.0f) {
                break;
            } else {
                i10++;
            }
        }
        Box box = this.boundingBox;
        this.boundingBox = bounding;
        try {
            RenderableManager h02 = Qb.a.f().h0();
            h02.a0(h02.M(this.entity.getId()), bounding);
        } catch (Exception e10) {
            this.boundingBox = box;
            throw e10;
        }
    }

    public void setGeometryAt(int primitiveIndex, RenderableManager.b type, FilamentVertexBuffer vertexBuffer, d indexBuffer) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        if (primitiveIndex != 0) {
            throw new RuntimeException("Please code concrete material list, we need to reference materials per primitive");
        }
        Qb.a.d();
        RenderableManager h02 = Qb.a.f().h0();
        h02.k0(h02.M(this.entity.getId()), primitiveIndex, type, vertexBuffer.j(), indexBuffer.i());
        this.vertexBuffer = vertexBuffer;
        this.indexBuffer = indexBuffer;
        concreteVBReferences.put(Integer.valueOf(this.entity.getId()), vertexBuffer);
        concreteIBReferences.put(Integer.valueOf(this.entity.getId()), indexBuffer);
        this.hasGeometry = true;
    }

    public void setGlobalBlendOrderEnabledAt(int i10, boolean b10) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Qb.a.d();
        RenderableManager h02 = Qb.a.f().h0();
        h02.m0(h02.M(this.entity.getId()), i10, b10);
    }

    public void setLayerEnabled(int layerID, boolean enable) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        this.renderingLayers[layerID] = enable;
        buildLayerData();
        applyLayers();
    }

    public void setMaterialInstanceAt(int primitiveIndex, FilamentMaterial filamentMaterial) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Qb.a.d();
        if (primitiveIndex != 0) {
            throw new RuntimeException("Please code concrete material list, we need to reference materials per primitive");
        }
        RenderableManager h02 = Qb.a.f().h0();
        h02.p0(h02.M(this.entity.getId()), primitiveIndex, filamentMaterial.l());
        this.material = filamentMaterial;
        concreteMaterialReferences.put(Integer.valueOf(this.entity.getId()), filamentMaterial);
    }

    public void setPriority(int coarse) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Qb.a.d();
        RenderableManager h02 = Qb.a.f().h0();
        h02.s0(h02.M(this.entity.getId()), coarse);
    }

    public void setSkinningBuffer(FilamentSkinningBuffer skinningBuffer) {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        int boneCount = skinningBuffer.getBoneCount();
        if (boneCount > 256) {
            throw new IndexOutOfBoundsException("Can`t be more than 256 bones");
        }
        FilamentSkinningBuffer filamentSkinningBuffer = this.skinningBuffer;
        try {
            this.skinningBuffer = skinningBuffer;
            RenderableManager h02 = Qb.a.f().h0();
            h02.v0(h02.M(this.entity.getId()), skinningBuffer.e(), boneCount, 0);
            concreteSkinningBReferences.put(Integer.valueOf(this.entity.getId()), skinningBuffer);
        } catch (Exception e10) {
            this.skinningBuffer = filamentSkinningBuffer;
            throw e10;
        }
    }

    public void showAllLayers() {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Arrays.fill(this.renderingLayers, true);
        if (this.activeLayerValue != 255 || this.activeLayerSelect != 255) {
            this.pendingLayerApply = true;
        }
        this.activeLayerValue = 255;
        this.activeLayerSelect = 255;
        applyLayers();
    }

    public boolean showAllLayersButNoApply() {
        if (this.destroyied) {
            throw new RuntimeException();
        }
        Arrays.fill(this.renderingLayers, true);
        if (this.activeLayerValue != 255 || this.activeLayerSelect != 255) {
            this.pendingLayerApply = true;
        }
        this.activeLayerValue = 255;
        this.activeLayerSelect = 255;
        return this.pendingLayerApply;
    }

    public FilamentRenderable(RenderableManager.a builder, FilamentMaterial filamentMaterial, Rb.c filamentEntity, FilamentVertexBuffer vertexBuffer, d indexBuffer, RenderableManager.b type, Box bounding, boolean initiallyVisible) {
        this(builder, filamentMaterial, filamentEntity, vertexBuffer, indexBuffer, type, 0, null, bounding, initiallyVisible);
    }

    public FilamentRenderable(RenderableManager.a builder, FilamentMaterial filamentMaterial, Rb.c filamentEntity, FilamentVertexBuffer vertexBuffer, d indexBuffer, RenderableManager.b type, int boneCount, Box bounding) {
        this(builder, filamentMaterial, filamentEntity, vertexBuffer, indexBuffer, type, boneCount, (FilamentInstanceBuffer) null, bounding);
    }

    public FilamentRenderable(RenderableManager.a builder, FilamentMaterial filamentMaterial, Rb.c filamentEntity, FilamentVertexBuffer vertexBuffer, d indexBuffer, RenderableManager.b type, FilamentInstanceBuffer instanceBuffer, Box bounding) {
        this(builder, filamentMaterial, filamentEntity, vertexBuffer, indexBuffer, type, 0, instanceBuffer, bounding);
    }

    public static boolean isUsed(d indexBuffer) {
        Qb.a.d();
        K8.a.G();
        return concreteIBReferences.containsValue(indexBuffer);
    }

    public FilamentRenderable(RenderableManager.a builder, FilamentMaterial filamentMaterial, Rb.c filamentEntity, FilamentVertexBuffer vertexBuffer, d indexBuffer, RenderableManager.b type, FilamentInstanceBuffer instanceBuffer, Box bounding, boolean initiallyVisible) {
        this(builder, filamentMaterial, filamentEntity, vertexBuffer, indexBuffer, type, 0, instanceBuffer, bounding, initiallyVisible);
    }

    public FilamentRenderable(RenderableManager.a builder, FilamentMaterial filamentMaterial, Rb.c filamentEntity, FilamentVertexBuffer vertexBuffer, d indexBuffer, RenderableManager.b type, int boneCount, FilamentInstanceBuffer instanceBuffer, Box bounding) {
        this(builder, filamentMaterial, filamentEntity, vertexBuffer, indexBuffer, type, boneCount, instanceBuffer, bounding, true);
    }

    public FilamentRenderable(RenderableManager.a builder, FilamentMaterial filamentMaterial, Rb.c filamentEntity, FilamentVertexBuffer vertexBuffer, d indexBuffer, RenderableManager.b type, int boneCount, FilamentInstanceBuffer instanceBuffer, Box bounding, boolean initiallyVisible) {
        this.hasGeometry = false;
        this.destroyied = false;
        boolean[] zArr = new boolean[8];
        this.renderingLayers = zArr;
        Arrays.fill(zArr, true);
        this.pendingLayerApply = true;
        this.activeLayerValue = 255;
        this.activeLayerSelect = 255;
        Qb.a.d();
        K8.a.G();
        if (vertexBuffer == null) {
            throw new NullPointerException("vertexBuffer can`t be null");
        }
        if (indexBuffer != null) {
            if (!Qb.a.f().h0().U(filamentEntity.getId())) {
                Qb.a.d();
                this.material = filamentMaterial;
                this.entity = filamentEntity;
                this.vertexBuffer = vertexBuffer;
                this.indexBuffer = indexBuffer;
                this.boundingBox = bounding;
                this.instanceBuffer = instanceBuffer;
                if (!initiallyVisible) {
                    Arrays.fill(zArr, false);
                    this.activeLayerValue = 0;
                    this.pendingLayerApply = false;
                    builder.r(255, 0);
                }
                builder.t(0, filamentMaterial.l());
                builder.k(0, type, vertexBuffer.j(), indexBuffer.i());
                if (instanceBuffer != null) {
                    builder.q(instanceBuffer.f(), instanceBuffer.e());
                }
                this.hasGeometry = true;
                if (boneCount > 0) {
                    if (boneCount <= 256) {
                        builder.g(true);
                        FilamentSkinningBuffer filamentSkinningBuffer = new FilamentSkinningBuffer(boneCount);
                        this.skinningBuffer = filamentSkinningBuffer;
                        builder.C(filamentSkinningBuffer.e(), boneCount, 0);
                    } else {
                        throw new IndexOutOfBoundsException("Can`t be more than 256 bones");
                    }
                }
                if (bounding != null) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= bounding.b().length) {
                            bounding.d(1.0f, 1.0f, 1.0f);
                            break;
                        } else if (bounding.b()[i10] != 0.0f) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                    builder.b(bounding);
                    builder.f(true);
                } else {
                    builder.f(false);
                }
                builder.c(Qb.a.f(), filamentEntity.getId());
                Qb.a.f().h0().M(filamentEntity.getId());
                applyLayers();
                super.setDestroyListeners(new M9.b[]{new b(FilamentVertexBuffer.class, vertexBuffer), new c(d.class, indexBuffer)});
                SGC.put(this, filamentEntity.getId(), DESTROYER, false);
                concreteMaterialReferences.put(Integer.valueOf(filamentEntity.getId()), filamentMaterial);
                concreteEntityReferences.put(Integer.valueOf(filamentEntity.getId()), filamentEntity);
                concreteVBReferences.put(Integer.valueOf(filamentEntity.getId()), vertexBuffer);
                concreteIBReferences.put(Integer.valueOf(filamentEntity.getId()), indexBuffer);
                if (this.skinningBuffer != null) {
                    concreteSkinningBReferences.put(Integer.valueOf(filamentEntity.getId()), this.skinningBuffer);
                }
                if (instanceBuffer != null) {
                    concreteInstanceBReferences.put(Integer.valueOf(filamentEntity.getId()), instanceBuffer);
                    return;
                }
                return;
            }
            throw new FilamentContractViolationError("Entity already have renderable");
        }
        throw new NullPointerException("indexBuffer can`t be null");
    }

    public static boolean isUsed(FilamentMaterial filamentMaterial) {
        Qb.a.d();
        K8.a.G();
        return concreteMaterialReferences.containsValue(filamentMaterial);
    }

    public static boolean isUsed(Rb.c filamentEntity) {
        Qb.a.d();
        K8.a.G();
        return concreteEntityReferences.containsValue(filamentEntity);
    }

    public static boolean isUsed(FilamentSkinningBuffer skinningBuffer) {
        Qb.a.d();
        K8.a.G();
        return concreteSkinningBReferences.containsValue(skinningBuffer);
    }

    public static boolean isUsed(FilamentInstanceBuffer instanceBuffer) {
        Qb.a.d();
        K8.a.G();
        return concreteInstanceBReferences.containsValue(instanceBuffer);
    }
}
