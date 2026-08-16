package vb;

import Bb.e;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.itsmagic.engine.Engines.Engine.Texture.Array.NativeArrayTextureRGBA8;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.ASTCEncoderNative;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.ASTCTextureData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureFileNotFoundException;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureNeedsImport;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.b;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class C15823b extends AbstractC15822a {

    public final int f121413a;

    public final int f121414b;

    public FilamentTexture f121418f;

    public ASTCTextureData.a[] f121419g;

    public NativeByteBuffer[] f121420h;

    public volatile Texture.f f121422j;

    public volatile Texture.b f121423k;

    public final List<String> f121415c = new SteppedArrayList();

    public final List<e> f121416d = new SteppedArrayList();

    public final Object f121417e = new Object();

    public volatile int f121421i = -1;

    public volatile int f121424l = 0;

    public volatile int f121425m = 0;

    public volatile boolean f121426n = false;

    public volatile int f121427o = 0;

    public volatile boolean f121428p = false;

    public class a implements Runnable {

        public final int f121429b;

        public final int f121430c;

        public a(final int val$sessionId, final int val$finalLayer) {
            this.f121429b = val$sessionId;
            this.f121430c = val$finalLayer;
        }

        @Override
        public void run() {
            C15823b.this.E(this.f121429b, this.f121430c);
        }
    }

    public class RunnableC2070b implements Runnable {

        public final int f121432b;

        public final int f121433c;

        public RunnableC2070b(final int val$sessionId, final int val$finalLayer) {
            this.f121432b = val$sessionId;
            this.f121433c = val$finalLayer;
        }

        @Override
        public void run() {
            C15823b.this.E(this.f121432b, this.f121433c);
        }
    }

    public static final class c {

        public final b.d f121435a;

        public final TextureConfig f121436b;

        public final boolean f121437c;

        public c(b.d dVar, TextureConfig textureConfig, boolean z10, a aVar) {
            this(dVar, textureConfig, z10);
        }

        public c(b.d state, TextureConfig config, boolean missing) {
            this.f121435a = state;
            this.f121436b = config;
            this.f121437c = missing;
        }
    }

    public C15823b(int width, int height) {
        if (width <= 0 || height <= 0) {
            throw new IllegalArgumentException("Width and height must be greater than zero");
        }
        this.f121413a = width;
        this.f121414b = height;
    }

    public final ASTCTextureData.a A(c layer, TextureConfig whiteReferenceConfig) {
        try {
            if (layer.f121437c) {
                if (this.f121428p) {
                    return k(whiteReferenceConfig);
                }
                throw new IllegalStateException("Texture file can't be found");
            }
            b.d dVar = layer.f121435a;
            TextureConfig textureConfig = layer.f121436b;
            if (textureConfig == null) {
                textureConfig = new TextureConfig();
            }
            int L10 = L(textureConfig.k());
            if (dVar.f79822c) {
                com.itsmagic.engine.Engines.Engine.Texture.Utils.a.a(dVar);
            }
            String str = dVar.f79821b;
            NativeByteBuffer nativeByteBuffer = null;
            ASTCTextureData.a d10 = (str == null || str.isEmpty()) ? null : ASTCTextureData.d(new File(dVar.f79821b), textureConfig);
            if (d10 != null) {
                if (d10.f79785a == this.f121413a && d10.f79786b == this.f121414b) {
                    return d10;
                }
                d10.a();
            }
            NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(this.f121413a * this.f121414b * 4);
            try {
                if (!NativeArrayTextureRGBA8.b(dVar.f79820a, nativeByteBuffer2, this.f121413a, this.f121414b, L10)) {
                    NativeArrayTextureRGBA8.a(nativeByteBuffer2);
                }
                TextureConfig a10 = textureConfig.a();
                a10.p0(false);
                a10.w0(0);
                nativeByteBuffer = ASTCEncoderNative.c(nativeByteBuffer2, this.f121413a, this.f121414b, a10);
                ASTCTextureData.a c10 = ASTCTextureData.c(nativeByteBuffer, a10);
                if (c10 == null) {
                    throw new IllegalStateException("Failed to load ASTC data from encoded buffer");
                }
                if (nativeByteBuffer != null && !nativeByteBuffer.isGarbage()) {
                    nativeByteBuffer.destroyImmediate();
                }
                if (!nativeByteBuffer2.isGarbage()) {
                    nativeByteBuffer2.destroyImmediate();
                }
                return c10;
            } catch (Throwable th2) {
                if (nativeByteBuffer != null && !nativeByteBuffer.isGarbage()) {
                    nativeByteBuffer.destroyImmediate();
                }
                if (!nativeByteBuffer2.isGarbage()) {
                    nativeByteBuffer2.destroyImmediate();
                }
                throw th2;
            }
        } catch (RuntimeException e10) {
            e10.printStackTrace();
            throw e10;
        }
    }

    public final void B(ASTCTextureData.a[] data, List<c> layers, int referenceLayerIndex, TextureConfig whiteReferenceConfig) {
        for (int i10 = 0; i10 < data.length; i10++) {
            if (i10 != referenceLayerIndex) {
                data[i10] = A(layers.get(i10), whiteReferenceConfig);
            }
        }
    }

    public final void C() {
        this.f121424l = 0;
    }

    public void D() {
        synchronized (this.f121416d) {
            for (int i10 = 0; i10 < this.f121416d.size(); i10++) {
                try {
                    e eVar = this.f121416d.get(i10);
                    if (eVar != null) {
                        eVar.b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void E(int sessionId, int layer) {
        synchronized (this.f121417e) {
            try {
                if (sessionId != this.f121427o) {
                    return;
                }
                ASTCTextureData.a[] aVarArr = this.f121419g;
                if (aVarArr != null && layer >= 0 && layer < aVarArr.length) {
                    ASTCTextureData.a aVar = aVarArr[layer];
                    if (aVar != null) {
                        aVar.a();
                    }
                    this.f121419g[layer] = null;
                }
                NativeByteBuffer[] nativeByteBufferArr = this.f121420h;
                if (nativeByteBufferArr != null && layer >= 0 && layer < nativeByteBufferArr.length) {
                    NativeByteBuffer nativeByteBuffer = nativeByteBufferArr[layer];
                    if (nativeByteBuffer != null && !nativeByteBuffer.isGarbage()) {
                        nativeByteBuffer.destroyImmediate();
                    }
                    this.f121420h[layer] = null;
                }
                boolean z10 = true;
                this.f121424l++;
                this.f121425m--;
                if (this.f121425m <= 0) {
                    this.f121426n = false;
                    this.f121425m = 0;
                    this.f121419g = null;
                    this.f121420h = null;
                } else {
                    z10 = false;
                }
                if (z10) {
                    D();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void F() {
        G(this.f121420h);
        this.f121420h = null;
    }

    public final void G(NativeByteBuffer[] data) {
        if (data == null) {
            return;
        }
        for (int i10 = 0; i10 < data.length; i10++) {
            NativeByteBuffer nativeByteBuffer = data[i10];
            if (nativeByteBuffer != null && !nativeByteBuffer.isGarbage()) {
                nativeByteBuffer.destroyImmediate();
            }
            data[i10] = null;
        }
    }

    public final void H() {
        I(this.f121419g);
        this.f121419g = null;
    }

    public final void I(ASTCTextureData.a[] data) {
        if (data == null) {
            return;
        }
        for (int i10 = 0; i10 < data.length; i10++) {
            ASTCTextureData.a aVar = data[i10];
            if (aVar != null) {
                aVar.a();
                data[i10] = null;
            }
        }
    }

    public void J(e listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        synchronized (this.f121416d) {
            this.f121416d.remove(listener);
        }
    }

    public void K(int i10) {
        n();
        this.f121415c.remove(i10);
        C();
    }

    public final int L(TextureConfig.c filter) {
        return filter == TextureConfig.c.Nearest ? 0 : 1;
    }

    public final b.d M(String path) {
        b.d dVar = new b.d();
        try {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(N7.c.t(), path, dVar);
        } catch (TextureNeedsImport unused) {
            com.itsmagic.engine.Engines.Engine.Texture.Utils.b.g(N7.c.t(), dVar, new b.C1370b().a(b.c.ONLY_TEXTURE).b(false));
            com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(N7.c.t(), path, dVar);
        }
        return dVar;
    }

    public void N(boolean replaceMissingTexturesWithWhite) {
        this.f121428p = replaceMissingTexturesWithWhite;
    }

    public void O(int i10, String ipp) {
        n();
        while (this.f121415c.size() <= i10) {
            this.f121415c.add(null);
        }
        this.f121415c.set(i10, ipp);
        C();
    }

    public String P(int i10) {
        return this.f121415c.get(i10);
    }

    public int Q() {
        return this.f121415c.size();
    }

    public final void R(ASTCTextureData.a[] data, int sessionId) {
        NativeByteBuffer nativeByteBuffer;
        ASTCTextureData.b[] bVarArr;
        if (this.f121418f == null) {
            throw new IllegalStateException("filamentTexture is null");
        }
        int i10 = 0;
        while (i10 < data.length) {
            ASTCTextureData.a aVar = data[i10];
            if (aVar == null || (nativeByteBuffer = aVar.f79792h) == null || (bVarArr = aVar.f79791g) == null || bVarArr.length == 0) {
                o();
                throw new IllegalStateException("ASTC layer data is missing");
            }
            try {
                int i11 = i10;
                this.f121418f.F(0, 0, 0, i10, this.f121413a, this.f121414b, 1, nativeByteBuffer, r4.f79795c, aVar.f79789e, bVarArr[0].f79796d, new a(sessionId, i10));
                i10 = i11 + 1;
            } catch (RuntimeException e10) {
                o();
                throw e10;
            }
        }
    }

    public final void S(NativeByteBuffer[] data, int sessionId) {
        if (this.f121418f == null) {
            throw new IllegalStateException("filamentTexture is null");
        }
        for (int i10 = 0; i10 < data.length; i10++) {
            NativeByteBuffer nativeByteBuffer = data[i10];
            if (nativeByteBuffer == null) {
                o();
                throw new IllegalStateException("RGBA layer data is missing");
            }
            try {
                this.f121418f.K(0, 0, 0, i10, this.f121413a, this.f121414b, 1, nativeByteBuffer, new RunnableC2070b(sessionId, i10));
            } catch (RuntimeException e10) {
                o();
                throw e10;
            }
        }
    }

    public final void T(ASTCTextureData.a[] data) {
        ASTCTextureData.b[] bVarArr;
        ASTCTextureData.b[] bVarArr2;
        if (data == null || data.length == 0) {
            throw new IllegalStateException("ASTC upload data is empty");
        }
        ASTCTextureData.a aVar = data[0];
        if (aVar == null || (bVarArr = aVar.f79791g) == null || bVarArr.length == 0) {
            throw new IllegalStateException("ASTC base layer is invalid");
        }
        if (aVar.f79785a != this.f121413a || aVar.f79786b != this.f121414b) {
            throw new IllegalStateException("ASTC base layer resolution does not match the array texture resolution");
        }
        for (int i10 = 1; i10 < data.length; i10++) {
            ASTCTextureData.a aVar2 = data[i10];
            if (aVar2 == null || (bVarArr2 = aVar2.f79791g) == null || bVarArr2.length == 0) {
                throw new IllegalStateException("ASTC layer " + i10 + " is invalid");
            }
            if (aVar2.f79785a != this.f121413a || aVar2.f79786b != this.f121414b) {
                throw new IllegalStateException("ASTC layer " + i10 + " resolution does not match the array texture resolution");
            }
            if (aVar2.f79790f != aVar.f79790f) {
                throw new IllegalStateException("All array texture layers must use the same ASTC internal format");
            }
            if (aVar2.f79789e != aVar.f79789e) {
                throw new IllegalStateException("All array texture layers must use the same ASTC compressed format");
            }
        }
    }

    @Override
    public void a(FilamentMaterial m10, String attributeName) {
        if (!u()) {
            throw new RuntimeException("Texture is not renderable");
        }
        FilamentTexture filamentTexture = this.f121418f;
        m10.q(attributeName, filamentTexture, filamentTexture.B());
    }

    @Override
    public FilamentTexture b() {
        return this.f121418f;
    }

    public void d(e listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        synchronized (this.f121416d) {
            try {
                if (!this.f121416d.contains(listener)) {
                    this.f121416d.add(listener);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(String ipp) {
        n();
        this.f121415c.add(ipp);
        C();
    }

    public void f() {
        int i10;
        int i11;
        int i12;
        Qb.a.d();
        K8.a.G();
        if (this.f121426n) {
            throw new IllegalStateException("ArrayTexture is already uploading");
        }
        List<c> h10 = h();
        int size = h10.size();
        if (size <= 0) {
            m();
            this.f121421i = 0;
            this.f121424l = 0;
            this.f121425m = 0;
            H();
            F();
            D();
            return;
        }
        this.f121426n = true;
        this.f121424l = 0;
        this.f121425m = size;
        int i13 = this.f121427o + 1;
        this.f121427o = i13;
        try {
            int q10 = q(h10);
            if (q10 < 0) {
                if (!this.f121428p) {
                    throw new IllegalStateException("ASTC layer data is missing");
                }
                this.f121420h = i(size);
                if (this.f121418f != null && this.f121421i == size && this.f121422j == Texture.f.RGBA8) {
                    i12 = i13;
                    S(this.f121420h, i12);
                    return;
                }
                m();
                TextureSampler textureSampler = new TextureSampler(TextureSampler.e.LINEAR, TextureSampler.d.LINEAR, TextureSampler.f.CLAMP_TO_EDGE);
                int i14 = this.f121413a;
                int i15 = this.f121414b;
                Texture.e eVar = Texture.e.RGBA;
                Texture.k kVar = Texture.k.UBYTE;
                Texture.f fVar = Texture.f.RGBA8;
                i12 = i13;
                this.f121418f = new FilamentTexture(i14, i15, eVar, kVar, fVar, new Texture.a().d(fVar).b(size), textureSampler, 0, 24, g(), size, false);
                this.f121421i = size;
                this.f121422j = fVar;
                this.f121423k = null;
                S(this.f121420h, i12);
                return;
            }
            c cVar = h10.get(q10);
            TextureConfig textureConfig = cVar.f121436b;
            ASTCTextureData.a A10 = A(cVar, textureConfig);
            if (A10 == null) {
                throw new IllegalStateException("ASTC layer data is missing");
            }
            if (Texture.A(Qb.a.f(), A10.f79790f)) {
                ASTCTextureData.a[] j10 = j(size);
                this.f121419g = j10;
                j10[q10] = A10;
                B(j10, h10, q10, textureConfig);
                T(this.f121419g);
                if (this.f121418f != null && this.f121421i == size && this.f121422j == A10.f79790f) {
                    i10 = i13;
                    R(this.f121419g, i10);
                    return;
                }
                m();
                i10 = i13;
                this.f121418f = new FilamentTexture(this.f121413a, this.f121414b, Texture.e.RGBA, Texture.k.COMPRESSED, A10.f79790f, new Texture.a().d(A10.f79790f).b(size), new TextureSampler(TextureSampler.e.LINEAR, TextureSampler.d.LINEAR, TextureSampler.f.CLAMP_TO_EDGE), 0, 24, g(), size, false);
                this.f121421i = size;
                this.f121422j = A10.f79790f;
                this.f121423k = A10.f79789e;
                R(this.f121419g, i10);
                return;
            }
            boolean w10 = w(A10.f79790f);
            Texture.f fVar2 = w10 ? Texture.f.SRGB8_A8 : Texture.f.RGBA8;
            H();
            NativeByteBuffer[] i16 = i(size);
            this.f121420h = i16;
            y(i16, w10, h10);
            if (this.f121418f != null && this.f121421i == size && this.f121422j == fVar2) {
                i11 = i13;
                S(this.f121420h, i11);
            }
            m();
            i11 = i13;
            this.f121418f = new FilamentTexture(this.f121413a, this.f121414b, Texture.e.RGBA, Texture.k.UBYTE, fVar2, new Texture.a().d(fVar2).b(size), new TextureSampler(TextureSampler.e.LINEAR, TextureSampler.d.LINEAR, TextureSampler.f.CLAMP_TO_EDGE), 0, 24, g(), size, false);
            this.f121421i = size;
            this.f121422j = fVar2;
            this.f121423k = null;
            S(this.f121420h, i11);
        } catch (RuntimeException e10) {
            o();
            throw e10;
        }
    }

    public final Texture.i g() {
        try {
            return Texture.i.valueOf("SAMPLER_2D_ARRAY");
        } catch (IllegalArgumentException e10) {
            throw new IllegalStateException("Filament does not support 2D array textures in this runtime", e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List<c> h() {
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f121415c.size(); i10++) {
            String str = this.f121415c.get(i10);
            boolean z11 = true;
            a aVar = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            Object[] objArr5 = 0;
            Object[] objArr6 = 0;
            if (str == null || str.isEmpty()) {
                if (!this.f121428p) {
                    throw new IllegalStateException("Texture file can't be null or empty");
                }
                arrayList.add(new c(objArr3 == true ? 1 : 0, objArr2 == true ? 1 : 0, z11, objArr == true ? 1 : 0));
            } else {
                try {
                    b.d M10 = M(str);
                    TextureConfig q10 = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.q(M10.f79823d, N7.c.t(), false);
                    if (q10 == null) {
                        q10 = new TextureConfig();
                    }
                    arrayList.add(new c(M10, q10, z10, aVar));
                } catch (RuntimeException e10) {
                    if (!this.f121428p || !(e10 instanceof TextureFileNotFoundException)) {
                        throw e10;
                    }
                    arrayList.add(new c(objArr6 == true ? 1 : 0, objArr5 == true ? 1 : 0, z11, objArr4 == true ? 1 : 0));
                }
            }
        }
        return arrayList;
    }

    public final NativeByteBuffer[] i(int textureCount) {
        return new NativeByteBuffer[textureCount];
    }

    public final ASTCTextureData.a[] j(int textureCount) {
        return new ASTCTextureData.a[textureCount];
    }

    public final ASTCTextureData.a k(TextureConfig referenceConfig) {
        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(this.f121413a * this.f121414b * 4);
        NativeByteBuffer nativeByteBuffer2 = null;
        try {
            p(nativeByteBuffer);
            TextureConfig a10 = referenceConfig != null ? referenceConfig.a() : new TextureConfig();
            a10.p0(false);
            a10.w0(0);
            nativeByteBuffer2 = ASTCEncoderNative.c(nativeByteBuffer, this.f121413a, this.f121414b, a10);
            ASTCTextureData.a c10 = ASTCTextureData.c(nativeByteBuffer2, a10);
            if (c10 == null) {
                throw new IllegalStateException("Failed to load white ASTC data from encoded buffer");
            }
            if (nativeByteBuffer2 != null && !nativeByteBuffer2.isGarbage()) {
                nativeByteBuffer2.destroyImmediate();
            }
            if (!nativeByteBuffer.isGarbage()) {
                nativeByteBuffer.destroyImmediate();
            }
            return c10;
        } catch (Throwable th2) {
            if (nativeByteBuffer2 != null && !nativeByteBuffer2.isGarbage()) {
                nativeByteBuffer2.destroyImmediate();
            }
            if (!nativeByteBuffer.isGarbage()) {
                nativeByteBuffer.destroyImmediate();
            }
            throw th2;
        }
    }

    public void l() {
        Qb.a.d();
        K8.a.G();
        if (this.f121426n) {
            throw new IllegalStateException("ArrayTexture is uploading");
        }
        m();
        this.f121421i = -1;
        this.f121424l = 0;
        this.f121425m = 0;
        H();
        F();
    }

    public final void m() {
        FilamentTexture filamentTexture = this.f121418f;
        if (filamentTexture != null) {
            filamentTexture.destroyImmediate();
            this.f121418f = null;
        }
        this.f121422j = null;
        this.f121423k = null;
        this.f121421i = -1;
    }

    public final void n() {
        if (this.f121426n) {
            throw new IllegalStateException("ArrayTexture is uploading");
        }
    }

    public final void o() {
        this.f121424l = 0;
        this.f121425m = 0;
        this.f121426n = false;
        this.f121427o++;
        this.f121421i = -1;
        H();
        F();
        try {
            m();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void p(NativeByteBuffer buffer) {
        int i10 = this.f121413a * this.f121414b * 4;
        for (int i11 = 0; i11 < i10; i11 += 4) {
            buffer.set(i11, (byte) -1);
            buffer.set(i11 + 1, (byte) -1);
            buffer.set(i11 + 2, (byte) -1);
            buffer.set(i11 + 3, (byte) -1);
        }
    }

    public final int q(List<c> layers) {
        for (int i10 = 0; i10 < layers.size(); i10++) {
            if (!layers.get(i10).f121437c) {
                return i10;
            }
        }
        return -1;
    }

    public int r() {
        return this.f121414b;
    }

    public FilamentTexture s() {
        return this.f121418f;
    }

    public int t() {
        return this.f121413a;
    }

    public boolean u() {
        FilamentTexture filamentTexture = this.f121418f;
        return (filamentTexture == null || !filamentTexture.D() || this.f121426n || this.f121415c.isEmpty() || this.f121424l != this.f121415c.size()) ? false : true;
    }

    public boolean v() {
        return this.f121428p;
    }

    public final boolean w(Texture.f format) {
        return format == Texture.f.SRGB8_ALPHA8_ASTC_4x4 || format == Texture.f.SRGB8_ALPHA8_ASTC_6x6 || format == Texture.f.SRGB8_ALPHA8_ASTC_8x8 || format == Texture.f.SRGB8_ALPHA8_ASTC_10x10 || format == Texture.f.SRGB8_ALPHA8_ASTC_12x12;
    }

    public boolean x() {
        return this.f121426n;
    }

    public final void y(NativeByteBuffer[] data, boolean srgb, List<c> layers) {
        for (int i10 = 0; i10 < data.length; i10++) {
            data[i10] = z(layers.get(i10), srgb);
        }
    }

    public final NativeByteBuffer z(c layer, boolean srgb) {
        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(this.f121413a * this.f121414b * 4);
        try {
            if (layer.f121437c) {
                if (!this.f121428p) {
                    throw new IllegalStateException("Texture file can't be found");
                }
                p(nativeByteBuffer);
                return nativeByteBuffer;
            }
            b.d dVar = layer.f121435a;
            TextureConfig textureConfig = layer.f121436b;
            if (textureConfig == null) {
                textureConfig = new TextureConfig();
            }
            if (textureConfig.gammaCorrection != srgb) {
                throw new IllegalStateException("All array texture layers must use the same color space");
            }
            int L10 = L(textureConfig.k());
            if (dVar.f79822c) {
                com.itsmagic.engine.Engines.Engine.Texture.Utils.a.a(dVar);
            }
            if (!NativeArrayTextureRGBA8.b(dVar.f79820a, nativeByteBuffer, this.f121413a, this.f121414b, L10)) {
                NativeArrayTextureRGBA8.a(nativeByteBuffer);
            }
            return nativeByteBuffer;
        } catch (RuntimeException e10) {
            if (!nativeByteBuffer.isGarbage()) {
                nativeByteBuffer.destroyImmediate();
            }
            throw e10;
        }
    }
}
