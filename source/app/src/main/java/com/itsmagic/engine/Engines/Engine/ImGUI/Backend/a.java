package com.itsmagic.engine.Engines.Engine.ImGUI.Backend;

import android.opengl.Matrix;
import com.google.android.filament.Box;
import com.google.android.filament.Engine;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Texture;
import com.google.android.filament.TransformManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.View;
import com.itsmagic.engine.Engines.Engine.ImGUI.Backend.ImguiBackend;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.List;
import yb.C16164a;

public class a {

    public static final int f77952m = 20;

    public static final int f77953n = 0;

    public static final int f77954o = 8;

    public static final int f77955p = 16;

    public static final int f77956q = 0;

    public FilamentView f77957a;

    public FilamentScene f77958b;

    public FilamentCamera f77959c;

    public e f77962f;

    public final float[] f77960d = new float[16];

    public boolean f77961e = false;

    public final c f77963g = new c();

    public final d f77964h = new d();

    public final f f77965i = new f();

    public final SteppedArrayList<C1303a> f77966j = new SteppedArrayList<>();

    public int f77967k = -1;

    public int f77968l = -1;

    public static class C1303a {

        public FilamentVertexBuffer f77969a;

        public int f77970b = 0;

        public void a(Engine engine, int neededVertexCount) {
            if (this.f77969a == null || neededVertexCount > this.f77970b) {
                this.f77970b = (int) (neededVertexCount * 1.2f);
                VertexBuffer.b c10 = new VertexBuffer.b().h(this.f77970b).c(1);
                VertexBuffer.c cVar = VertexBuffer.c.POSITION;
                VertexBuffer.a aVar = VertexBuffer.a.FLOAT2;
                VertexBuffer.b b10 = c10.b(cVar, 0, aVar, 0, 20).b(VertexBuffer.c.UV0, 0, aVar, 8, 20);
                VertexBuffer.c cVar2 = VertexBuffer.c.COLOR;
                this.f77969a = new FilamentVertexBuffer(b10.b(cVar2, 0, VertexBuffer.a.UBYTE4, 16, 20).f(cVar2));
            }
        }
    }

    public static class b {

        public FilamentRenderable f77972b;

        public FilamentMaterial f77973c;

        public Rb.d f77974d;

        public final Rb.c f77971a = new Rb.c();

        public int f77975e = 0;

        public boolean f77976f = false;

        public void a(Engine engine, FilamentVertexBuffer vb2, Rb.d ib2, FilamentMaterial mi2) {
            this.f77972b = new FilamentRenderable(new RenderableManager.a(1).d(false).y(false).f(false), mi2, this.f77971a, vb2, ib2, RenderableManager.b.TRIANGLES, new Box(new float[]{0.0f, 0.0f, -1.0f}, new float[]{1.0f, 1.0f, 1.0f}));
            d(false);
            this.f77973c = mi2;
        }

        public int b(TransformManager tm2) {
            if (!tm2.o(this.f77971a.getId())) {
                tm2.b(this.f77971a.getId());
            }
            return tm2.h(this.f77971a.getId());
        }

        public boolean c() {
            return this.f77972b != null;
        }

        public void d(boolean v10) {
            FilamentRenderable filamentRenderable = this.f77972b;
            if (filamentRenderable != null) {
                if (v10) {
                    filamentRenderable.showAllLayers();
                } else {
                    filamentRenderable.hideFromAllLayers();
                }
            }
        }
    }

    public static class c {

        public final SteppedArrayList<b> f77977a = new SteppedArrayList<>();

        public int f77978b = 0;

        public List<b> a(int needed) {
            this.f77978b = 0;
            if (needed > this.f77977a.size()) {
                int max = Math.max(16, needed - this.f77977a.size());
                for (int i10 = 0; i10 < max; i10++) {
                    b bVar = new b();
                    bVar.d(false);
                    this.f77977a.add(bVar);
                    FilamentRenderable filamentRenderable = bVar.f77972b;
                    if (filamentRenderable != null) {
                        filamentRenderable.removeMaterialInstanceAt(0);
                    }
                }
            }
            return this.f77977a;
        }

        public void b(FilamentScene scene, e miPool, d ibPool) {
            for (int i10 = 0; i10 < this.f77978b; i10++) {
                b bVar = this.f77977a.get(i10);
                Rb.d dVar = bVar.f77974d;
                if (dVar != null) {
                    ibPool.d(bVar.f77975e, dVar);
                    bVar.f77974d = null;
                    bVar.f77975e = 0;
                }
                FilamentMaterial filamentMaterial = bVar.f77973c;
                if (filamentMaterial != null) {
                    miPool.c(filamentMaterial);
                    bVar.f77973c = null;
                }
            }
        }

        public void c(FilamentScene scene, e miPool, d ibPool) {
            for (int i10 = this.f77978b; i10 < this.f77977a.size(); i10++) {
                b bVar = this.f77977a.get(i10);
                bVar.d(false);
                Rb.d dVar = bVar.f77974d;
                if (dVar != null) {
                    ibPool.d(bVar.f77975e, dVar);
                    bVar.f77974d = null;
                    bVar.f77975e = 0;
                }
                FilamentMaterial filamentMaterial = bVar.f77973c;
                if (filamentMaterial != null) {
                    miPool.c(filamentMaterial);
                    bVar.f77973c = null;
                }
                FilamentRenderable filamentRenderable = bVar.f77972b;
                if (filamentRenderable != null) {
                    filamentRenderable.removeMaterialInstanceAt(0);
                }
            }
        }

        public void d(int n10) {
            this.f77978b = n10;
        }
    }

    public static class d {

        public final SteppedArrayList<C1304a> f77979a = new SteppedArrayList<>();

        public static class C1304a {

            public final int f77980a;

            public final ArrayDeque<Rb.d> f77981b = new ArrayDeque<>();

            public C1304a(int count) {
                this.f77980a = count;
            }
        }

        public Rb.d a(int indexCount, Engine engine) {
            Rb.d pollFirst = b(indexCount).f77981b.pollFirst();
            return pollFirst != null ? pollFirst : new Rb.d(new IndexBuffer.a().c(indexCount).a(IndexBuffer.a.b.USHORT));
        }

        public final C1304a b(int indexCount) {
            for (int i10 = 0; i10 < this.f77979a.size(); i10++) {
                if (this.f77979a.get(i10).f77980a == indexCount) {
                    return this.f77979a.get(i10);
                }
            }
            C1304a c1304a = new C1304a(indexCount);
            this.f77979a.add(c1304a);
            return c1304a;
        }

        public void c(Engine engine) {
            this.f77979a.clear();
        }

        public void d(int indexCount, Rb.d ib2) {
            b(indexCount).f77981b.addLast(ib2);
        }
    }

    public static class e {

        public final FilamentMaterialTemplate f77982a;

        public final ArrayDeque<FilamentMaterial> f77983b = new ArrayDeque<>();

        public e(FilamentMaterialTemplate template) {
            this.f77982a = template;
        }

        public FilamentMaterial a() {
            FilamentMaterial pollFirst = this.f77983b.pollFirst();
            return pollFirst == null ? this.f77982a.e() : pollFirst;
        }

        public void b(Engine engine) {
            this.f77983b.clear();
        }

        public void c(FilamentMaterial mi2) {
            if (mi2 != null) {
                this.f77983b.addLast(mi2);
            }
        }

        public void d(int keep) {
            while (this.f77983b.size() > keep) {
                this.f77983b.removeFirst();
            }
        }
    }

    public static class f {

        public static final int f77984d = 3;

        public final SteppedArrayList<ByteBuffer> f77985a = new SteppedArrayList<>(2000);

        public final SteppedArrayList<ByteBuffer>[] f77986b = new SteppedArrayList[3];

        public int f77987c = 0;

        public f() {
            for (int i10 = 0; i10 < 3; i10++) {
                this.f77986b[i10] = new SteppedArrayList<>(2000);
            }
        }

        public static int d(int x10) {
            int i10 = 1;
            while (i10 < x10) {
                i10 <<= 1;
            }
            return i10;
        }

        public ByteBuffer a(int minBytes) {
            ByteBuffer byteBuffer;
            int i10 = 0;
            while (true) {
                if (i10 >= this.f77985a.size()) {
                    byteBuffer = null;
                    break;
                }
                byteBuffer = this.f77985a.get(i10);
                if (byteBuffer.capacity() >= minBytes) {
                    this.f77985a.remove(i10);
                    break;
                }
                i10++;
            }
            if (byteBuffer == null) {
                byteBuffer = ByteBuffer.allocateDirect(d(minBytes)).order(ByteOrder.nativeOrder());
            }
            this.f77986b[this.f77987c].add(byteBuffer);
            return byteBuffer;
        }

        public void b() {
            this.f77985a.clear();
            for (int i10 = 0; i10 < 3; i10++) {
                this.f77986b[i10].clear();
            }
        }

        public void c() {
            int i10 = (this.f77987c + 1) % 3;
            this.f77987c = i10;
            SteppedArrayList<ByteBuffer> steppedArrayList = this.f77986b[i10];
            this.f77985a.addAll(steppedArrayList);
            steppedArrayList.clear();
        }
    }

    public void a() {
        this.f77963g.b(this.f77958b, this.f77962f, this.f77964h);
        this.f77965i.c();
        this.f77962f.d(100);
    }

    public void b() {
        FilamentCamera filamentCamera;
        FilamentScene filamentScene;
        Qb.a.d();
        Engine f10 = Qb.a.f();
        if (f10 == null) {
            return;
        }
        c cVar = this.f77963g;
        if (cVar != null) {
            Iterator<b> it = cVar.f77977a.iterator();
            while (it.hasNext()) {
                b next = it.next();
                next.f77971a.getId();
                if (next.f77976f && (filamentScene = this.f77958b) != null) {
                    try {
                        filamentScene.s(next.f77971a);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                    next.f77976f = false;
                }
            }
            this.f77963g.f77977a.clear();
            this.f77963g.f77978b = 0;
        }
        SteppedArrayList<C1303a> steppedArrayList = this.f77966j;
        if (steppedArrayList != null) {
            Iterator<C1303a> it2 = steppedArrayList.iterator();
            while (it2.hasNext()) {
                C1303a next2 = it2.next();
                if (next2 != null && next2.f77969a != null) {
                    next2.f77969a = null;
                    next2.f77970b = 0;
                }
            }
            this.f77966j.clear();
        }
        d dVar = this.f77964h;
        if (dVar != null) {
            try {
                dVar.c(f10);
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
        }
        e eVar = this.f77962f;
        if (eVar != null) {
            try {
                eVar.b(f10);
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
        }
        f fVar = this.f77965i;
        if (fVar != null) {
            fVar.b();
        }
        FilamentScene filamentScene2 = this.f77958b;
        if (filamentScene2 != null && (filamentCamera = this.f77959c) != null) {
            try {
                filamentScene2.s(filamentCamera.f());
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
            this.f77959c = null;
        }
        FilamentView filamentView = this.f77957a;
        if (filamentView != null) {
            try {
                filamentView.C(null);
            } catch (Throwable th6) {
                th6.printStackTrace();
            }
            this.f77957a = null;
        }
        this.f77958b = null;
        this.f77968l = -1;
        this.f77967k = -1;
        this.f77961e = false;
    }

    public final void c() {
        FilamentCamera filamentCamera = new FilamentCamera();
        this.f77959c = filamentCamera;
        this.f77958b.j(filamentCamera.f());
        double[] dArr = new double[16];
        for (int i10 = 0; i10 < 16; i10++) {
            dArr[i10] = i10 % 5 == 0 ? 1.0d : 0.0d;
        }
        this.f77959c.k(dArr);
        j(1, 1);
    }

    public final C1303a d(int drawListIndex, Engine engine, int neededVertexCount) {
        while (this.f77966j.size() <= drawListIndex) {
            this.f77966j.add(null);
        }
        C1303a c1303a = this.f77966j.get(drawListIndex);
        if (c1303a == null) {
            c1303a = new C1303a();
            this.f77966j.set(drawListIndex, c1303a);
        }
        c1303a.a(engine, neededVertexCount);
        return c1303a;
    }

    public void e(ImguiBackend.DrawData drawData) {
        List<b> list;
        int i10;
        ImguiBackend.DrawList drawList;
        ShortBuffer shortBuffer;
        int i11;
        int i12;
        boolean z10;
        ImguiBackend.DrawData drawData2 = drawData;
        K8.a.G();
        Qb.a.d();
        int i13 = drawData2.fbWidth;
        if (i13 != this.f77967k || drawData2.fbHeight != this.f77968l) {
            j(Math.max(1, i13), Math.max(1, drawData2.fbHeight));
            this.f77967k = drawData2.fbWidth;
            this.f77968l = drawData2.fbHeight;
        }
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < drawData2.drawLists.size(); i16++) {
            i15 += drawData2.drawLists.get(i16).commands.size();
        }
        List<b> a10 = this.f77963g.a(i15);
        Engine f10 = Qb.a.f();
        TransformManager j02 = f10.j0();
        int i17 = 0;
        int i18 = 0;
        while (i17 < drawData2.drawLists.size()) {
            ImguiBackend.DrawList drawList2 = drawData2.drawLists.get(i17);
            ByteBuffer byteBuffer = drawList2.vertexBuffer;
            if (byteBuffer != null) {
                int remaining = byteBuffer.remaining() / 20;
                ByteBuffer a11 = this.f77965i.a(byteBuffer.remaining());
                a11.clear();
                a11.put(byteBuffer);
                a11.flip();
                C1303a d10 = d(i17, f10, remaining);
                d10.f77969a.q(i14, a11);
                ShortBuffer indexBufferAsShort = drawList2.getIndexBufferAsShort();
                if (indexBufferAsShort == null) {
                    System.out.println("ibShorts NULL");
                } else {
                    int i19 = i14;
                    while (i19 < drawList2.commands.size()) {
                        ImguiBackend.DrawCmd drawCmd = drawList2.commands.get(i19);
                        if (drawCmd == null || drawCmd.elemCount <= 0) {
                            list = a10;
                            i10 = i17;
                            drawList = drawList2;
                            shortBuffer = indexBufferAsShort;
                            i11 = i14;
                            System.out.println("COMAND ELEM COUNT 0 OR NULL");
                        } else {
                            FilamentTexture b10 = C16164a.b(drawCmd.textureId);
                            if (b10 == null) {
                                System.out.println("TEX IS NULL");
                                list = a10;
                                i10 = i17;
                                drawList = drawList2;
                                shortBuffer = indexBufferAsShort;
                                i11 = i14;
                            } else {
                                ByteBuffer a12 = this.f77965i.a(drawCmd.elemCount * 2);
                                a12.clear();
                                a12.order(ByteOrder.nativeOrder());
                                int position = indexBufferAsShort.position();
                                indexBufferAsShort.position(drawCmd.indexOffset);
                                for (int i20 = 0; i20 < drawCmd.elemCount; i20++) {
                                    a12.putShort(indexBufferAsShort.get());
                                }
                                indexBufferAsShort.position(position);
                                a12.flip();
                                Rb.d a13 = this.f77964h.a(drawCmd.elemCount, f10);
                                a13.r(a12);
                                int i21 = i18 + 1;
                                b bVar = a10.get(i18);
                                if (bVar.f77976f) {
                                    i12 = i21;
                                    z10 = true;
                                } else {
                                    i12 = i21;
                                    this.f77958b.j(bVar.f77971a);
                                    z10 = true;
                                    bVar.f77976f = true;
                                }
                                bVar.d(z10);
                                FilamentMaterial a14 = this.f77962f.a();
                                list = a10;
                                a14.q("albedo", b10, b10.B());
                                a14.w("isR8", b10.z() == Texture.e.R ? 1.0f : 0.0f);
                                float f11 = drawCmd.clipX;
                                float f12 = drawCmd.clipY;
                                float f13 = drawCmd.clipZ;
                                drawList = drawList2;
                                float f14 = drawCmd.clipW;
                                shortBuffer = indexBufferAsShort;
                                int i22 = this.f77968l;
                                i10 = i17;
                                a14.E("clipRect", f11, i22 - f14, f13, i22 - f12);
                                if (bVar.c()) {
                                    bVar.f77972b.setGeometryAt(0, RenderableManager.b.TRIANGLES, d10.f77969a, a13);
                                    bVar.f77972b.setMaterialInstanceAt(0, a14);
                                } else {
                                    bVar.a(f10, d10.f77969a, a13, a14);
                                }
                                bVar.f77973c = a14;
                                bVar.f77972b.setPriority((i18 >>> 13) & 7);
                                i11 = 0;
                                bVar.f77972b.setBlendOrderAt(0, 65535 & i18);
                                Matrix.setIdentityM(this.f77960d, 0);
                                j02.u(bVar.b(j02), this.f77960d);
                                bVar.f77974d = a13;
                                bVar.f77975e = drawCmd.elemCount;
                                i18 = i12;
                            }
                        }
                        i19++;
                        i14 = i11;
                        a10 = list;
                        drawList2 = drawList;
                        indexBufferAsShort = shortBuffer;
                        i17 = i10;
                    }
                }
            }
            i14 = i14;
            a10 = a10;
            i17++;
            drawData2 = drawData;
        }
        this.f77963g.d(i18);
        this.f77963g.c(this.f77958b, this.f77962f, this.f77964h);
    }

    public FilamentCamera f() {
        return this.f77959c;
    }

    public FilamentScene g() {
        return this.f77958b;
    }

    public FilamentView h() {
        return this.f77957a;
    }

    public void i(FilamentMaterialTemplate materialTemplate) {
        if (this.f77961e) {
            return;
        }
        this.f77961e = true;
        this.f77962f = new e(materialTemplate);
        this.f77958b = new FilamentScene();
        FilamentView filamentView = new FilamentView();
        this.f77957a = filamentView;
        filamentView.C(this.f77958b);
        this.f77957a.z(false);
        this.f77957a.w(View.d.TRANSLUCENT);
        c();
    }

    public final void j(int w10, int h10) {
        Matrix.orthoM(new float[16], 0, 0.0f, w10, h10, 0.0f, -1.0f, 1.0f);
        double[] dArr = new double[16];
        for (int i10 = 0; i10 < 16; i10++) {
            dArr[i10] = r9[i10];
        }
        this.f77959c.j(dArr, -1.0f, 1.0f);
    }
}
