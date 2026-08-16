package com.itsmagic.engine.Engines.Engine.ImGUI.Backend;

import Ic.InterfaceC2637p;
import Ic.InterfaceC2638q;
import Ic.r;
import Sb.b;
import android.util.LongSparseArray;
import androidx.annotation.Keep;
import com.google.android.filament.Material;
import com.google.android.filament.Renderer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIBasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.JavaPool.ListJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGBA8;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.List;
import mc.C14207a;
import n.C14331a;
import t3.C15377a;
import ub.i;

@r
@InterfaceC2638q
@InterfaceC2637p
public class ImguiBackend {
    private static final int SHADER_HASH = -658059390;
    private static final String SHADER_HASH_KEY = "imguibackend-2";
    private static final int SHADER_VERSION = 2;
    private static boolean materialInitWarned;
    private static FilamentMaterialTemplate materialTemplate;

    @Keep
    private static final LongSparseArray<Object> sKeepAlive = new LongSparseArray<>();
    private static DrawData currentFrame = new DrawData();
    private static final Object frameLock = new Object();
    private static final double[] background = {0.0d, 0.0d, 0.0d, 0.0d};

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public static class DrawCmd {
        public float clipW;
        public float clipX;
        public float clipY;
        public float clipZ;
        public int elemCount;
        public int indexOffset;
        public long textureId;

        public void reset() {
            this.elemCount = 0;
            this.textureId = 0L;
            this.clipX = 0.0f;
            this.clipY = 0.0f;
            this.clipZ = 0.0f;
            this.clipW = 0.0f;
            this.indexOffset = 0;
        }
    }

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public static class DrawData {
        public List<DrawList> drawLists = new SteppedArrayList(1000);
        public int fbHeight;
        public int fbWidth;

        public void reset() {
            this.fbWidth = 0;
            this.fbHeight = 0;
            this.drawLists.clear();
        }
    }

    @r
    @InterfaceC2638q
    @InterfaceC2637p
    public static class DrawList {
        public List<DrawCmd> commands = new SteppedArrayList(100);
        public ByteBuffer indexBuffer;
        public ByteBuffer vertexBuffer;

        public ShortBuffer getIndexBufferAsShort() {
            ByteBuffer byteBuffer = this.indexBuffer;
            if (byteBuffer != null) {
                return byteBuffer.order(ByteOrder.nativeOrder()).asShortBuffer();
            }
            return null;
        }

        public FloatBuffer getVertexBufferAsFloat() {
            ByteBuffer byteBuffer = this.vertexBuffer;
            if (byteBuffer != null) {
                return byteBuffer.order(ByteOrder.nativeOrder()).asFloatBuffer();
            }
            return null;
        }

        public void reset() {
            this.vertexBuffer = null;
            this.indexBuffer = null;
            this.commands.clear();
        }
    }

    public static void afterFrame(UIController controller) {
        if (materialTemplate == null) {
            return;
        }
        K8.a.G();
        Qb.a.d();
        controller.f78043Q.a();
        controller.finishRenderFrame();
    }

    public static void buildShaderCacheForce() {
        try {
            b createMaterialBuilder = createMaterialBuilder();
            createMaterialBuilder.r(loadFile("frag"));
            com.google.android.filament.filamat.b d10 = createMaterialBuilder.d();
            if (d10 == null || !d10.b()) {
                throw new RuntimeException("Falha ao compilar material em runtime!");
            }
            ec.b.l(SHADER_HASH, d10.a());
        } catch (Exception e10) {
            throw new RuntimeException("Erro criando material do ImguiBackend", e10);
        }
    }

    private static native DrawData collectDrawData(long nativePtr, int fbWidth, int fbHeight);

    public static long createFilamentTextureFromR8(ByteBuffer pixels, int width, int height) {
        if (pixels == null) {
            throw new IllegalArgumentException("pixels == null");
        }
        if (!pixels.isDirect()) {
            throw new IllegalArgumentException("pixels must be a direct ByteBuffer");
        }
        if (width <= 0 || height <= 0) {
            throw new IllegalArgumentException("invalid size");
        }
        if (pixels.capacity() < width * height) {
            throw new IllegalArgumentException("buffer too small");
        }
        i iVar = new i(width, height);
        for (int i10 = 0; i10 < height; i10++) {
            int i11 = i10 * width;
            for (int i12 = 0; i12 < width; i12++) {
                iVar.k0(i12, i10, pixels.get(i11 + i12) & 255);
            }
        }
        iVar.apply();
        long q10 = iVar.q();
        sKeepAlive.put(q10, iVar);
        return q10;
    }

    public static long createFilamentTextureFromRGBA(ByteBuffer pixels, int width, int height) {
        if (pixels == null) {
            throw new IllegalArgumentException("pixels == null");
        }
        if (!pixels.isDirect()) {
            throw new IllegalArgumentException("pixels must be a direct ByteBuffer");
        }
        if (width <= 0 || height <= 0) {
            throw new IllegalArgumentException("invalid size");
        }
        pixels.order(ByteOrder.nativeOrder());
        NativeTextureRGBA8 nativeTextureRGBA8 = new NativeTextureRGBA8(width, height, true);
        int i10 = width * 4;
        for (int i11 = 0; i11 < height; i11++) {
            int i12 = i11 * i10;
            for (int i13 = 0; i13 < width; i13++) {
                int i14 = (i13 << 2) + i12;
                nativeTextureRGBA8.H(i13, i11, new ColorINT(pixels.get(i14 + 3) & 255, pixels.get(i14) & 255, pixels.get(i14 + 1) & 255, pixels.get(i14 + 2) & 255));
            }
        }
        nativeTextureRGBA8.r0(null);
        long p10 = nativeTextureRGBA8.p();
        sKeepAlive.put(p10, nativeTextureRGBA8);
        return p10;
    }

    private static b createMaterialBuilder() {
        b bVar = (b) new b().v("IMGUI-" + Tc.b.L()).V(MaterialBuilder.u.OBJECT).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).C(MaterialBuilder.t.COLOR).m(true).l(false).k(false).i(MaterialBuilder.c.NONE).c(MaterialBuilder.a.TRANSPARENT);
        bVar.O(MaterialBuilder.r.FLOAT4, MaterialBuilder.g.MEDIUM, "clipRect");
        bVar.D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "albedo");
        bVar.O(MaterialBuilder.r.FLOAT, MaterialBuilder.g.LOW, "isR8");
        return bVar;
    }

    public static void destroyFilamentTexture(long handle) {
        LongSparseArray<Object> longSparseArray = sKeepAlive;
        if (longSparseArray.get(handle) != null) {
            longSparseArray.remove(handle);
        }
    }

    private static void ensureMaterialTemplate() {
        ByteBuffer g10;
        if (materialTemplate == null && (g10 = ec.b.g(SHADER_HASH)) != null) {
            ByteBuffer duplicate = g10.duplicate();
            duplicate.rewind();
            materialTemplate = new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
        }
    }

    public static void extractTo(UIController controller) {
        ensureMaterialTemplate();
        if (materialTemplate == null) {
            return;
        }
        if (controller.f78041O == K8.a.k()) {
            throw new RuntimeException("Double extract");
        }
        controller.f78041O = K8.a.k();
        Qb.a.g();
        Qb.a.f();
        controller.f78043Q.i(materialTemplate);
        controller.f78043Q.e(currentFrame);
    }

    public static void initialize() {
        registerNativeBindings();
        ensureMaterialTemplate();
        if (materialTemplate != null || materialInitWarned) {
            return;
        }
        materialInitWarned = true;
        System.err.println("ImguiBackend payload not ready. Build it in BuildMaterialShaders before initialize.");
    }

    private static String loadFile(String file) {
        return C14207a.a("Shaders/UI/" + file + ".vsc");
    }

    private static native void nativeRegisterBindings(Class<?> backendClass, Method onFrameDataAvailableMethod, Method createFilamentTextureMethod, Method destroyFilamentTextureMethod, Class<?> drawDataClass, Class<?> drawListClass, Class<?> drawCmdClass, Class<?> steppedListClass, Class<?> jpClass, Method jpAcquireMethod, Class<?> listJpClass, Method listJpAcquireMethod, Method steppedListAddMethod, Method steppedListClearMethod, Field drawDataFbWidthField, Field drawDataFbHeightField, Field drawDataDrawListsField, Field drawListVertexBufferField, Field drawListIndexBufferField, Field drawListCommandsField, Field drawCmdElemCountField, Field drawCmdTextureIdField, Field drawCmdClipXField, Field drawCmdClipYField, Field drawCmdClipZField, Field drawCmdClipWField, Field drawCmdIndexOffsetField);

    public static void onFrameDataAvailable(long drawDataPtr, int fbWidth, int fbHeight) {
        try {
            DrawData collectDrawData = collectDrawData(drawDataPtr, fbWidth, fbHeight);
            if (collectDrawData != null) {
                currentFrame = collectDrawData;
            } else {
                System.err.println("\u2717 Failed to collect ImGui frame data");
            }
        } catch (Exception e10) {
            System.err.println("\u2717 Error collecting ImGui data: " + e10.getMessage());
            e10.printStackTrace();
        }
    }

    public static void preloadShaderCache() {
        int i10 = SHADER_HASH;
        if (ec.b.j(i10)) {
            return;
        }
        buildShaderCacheForce();
        ec.b.j(i10);
    }

    private static Field reflectField(Class<?> owner, String name) {
        try {
            Field declaredField = owner.getDeclaredField(name);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e10) {
            throw new RuntimeException("Missing reflected field: " + owner.getName() + "." + name, e10);
        }
    }

    private static Method reflectMethod(Class<?> owner, String name, Class<?>... parameterTypes) {
        try {
            Method declaredMethod = owner.getDeclaredMethod(name, parameterTypes);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Missing reflected method: " + owner.getName() + "." + name, e10);
        }
    }

    private static void registerNativeBindings() {
        Class<Long> cls = Long.TYPE;
        Class<Integer> cls2 = Integer.TYPE;
        nativeRegisterBindings(ImguiBackend.class, reflectMethod(ImguiBackend.class, "onFrameDataAvailable", cls, cls2, cls2), reflectMethod(ImguiBackend.class, "createFilamentTextureFromR8", ByteBuffer.class, cls2, cls2), reflectMethod(ImguiBackend.class, "destroyFilamentTexture", cls), DrawData.class, DrawList.class, DrawCmd.class, SteppedArrayList.class, JP.class, reflectMethod(JP.class, "acquire", Class.class), ListJP.class, reflectMethod(ListJP.class, "acquire", cls2), reflectMethod(SteppedArrayList.class, "add", Object.class), reflectMethod(SteppedArrayList.class, "clear", new Class[0]), reflectField(DrawData.class, "fbWidth"), reflectField(DrawData.class, "fbHeight"), reflectField(DrawData.class, "drawLists"), reflectField(DrawList.class, "vertexBuffer"), reflectField(DrawList.class, "indexBuffer"), reflectField(DrawList.class, "commands"), reflectField(DrawCmd.class, "elemCount"), reflectField(DrawCmd.class, "textureId"), reflectField(DrawCmd.class, "clipX"), reflectField(DrawCmd.class, "clipY"), reflectField(DrawCmd.class, "clipZ"), reflectField(DrawCmd.class, "clipW"), reflectField(DrawCmd.class, "indexOffset"));
    }

    public static void renderTo(UIController controller) {
        if (materialTemplate == null) {
            return;
        }
        K8.a.G();
        Qb.a.e();
        long k10 = K8.a.k();
        if (!C15377a.f109719g.booleanValue()) {
            if (controller.f78040N == k10) {
                throw new RuntimeException("Double render");
            }
            if (controller.f78041O < 0) {
                throw new RuntimeException("Trying to render without extracted UI frame");
            }
        }
        controller.f78040N = k10;
        Renderer g10 = Qb.a.g();
        Qb.a.f();
        a aVar = controller.f78043Q;
        Tb.a frameBuffer = controller.getFrameBuffer();
        int frameBufferW = controller.getFrameBufferW();
        int frameBufferH = controller.getFrameBufferH();
        FilamentView h10 = aVar.h();
        FilamentCamera f10 = aVar.f();
        frameBuffer.a(h10);
        h10.D(0, 0, frameBufferW, frameBufferH);
        h10.x(f10);
        Renderer.a e10 = g10.e();
        e10.f60066b = true;
        e10.f60067c = true;
        e10.f60065a = background;
        g10.r(e10);
        if (C14331a.d()) {
            for (int i10 = 0; i10 < controller.f79250n.N(); i10++) {
                Component L10 = controller.f79250n.L(i10);
                if ((L10 instanceof UIBasePostProcessing) && L10.isHierarchyActive()) {
                    ((UIBasePostProcessing) L10).applyBeforeRender(controller, frameBuffer);
                }
            }
        }
        Qb.a.o(h10);
        frameBuffer.z();
        if (C14331a.d()) {
            for (int i11 = 0; i11 < controller.f79250n.N(); i11++) {
                Component L11 = controller.f79250n.L(i11);
                if ((L11 instanceof UIBasePostProcessing) && L11.isHierarchyActive()) {
                    ((UIBasePostProcessing) L11).applyAfterRender(controller, frameBuffer, controller.getCacheBuffer());
                }
            }
        }
        controller.afterRender();
    }
}
