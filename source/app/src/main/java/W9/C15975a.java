package w9;

import Nc.b;
import b3.s;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Layer.TerrainLayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native.NativeTerrainDataFile;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import sb.C15269a;
import vc.C15829e;
import x9.C16061a;
import z9.C16278e;

public class C15975a {

    public C16278e f127349a;

    public C16278e f127350b;

    public final List<C16061a> f127351c = new SteppedArrayList();

    public final List<C16061a> f127352d = new SteppedArrayList();

    public class C2191a implements C15269a.b {

        public NativeFloatBuffer f127353a;

        public C16278e f127354b;

        public C15829e f127355c;

        public int f127356d;

        public C2191a() {
        }

        @Override
        public void a(float value, int count) {
            this.f127353a.putFill(value, count);
        }

        @Override
        public void b() {
            if (this.f127354b != null && this.f127355c != null) {
                for (int i10 = 0; i10 < this.f127354b.g(); i10++) {
                    for (int i11 = 0; i11 < this.f127354b.g(); i11++) {
                        this.f127354b.i(i10, i11, this.f127355c.w(i10, i11));
                    }
                }
            }
            this.f127355c = null;
            this.f127354b = null;
            this.f127353a = null;
        }

        @Override
        public void c(float value) {
            this.f127353a.put(value);
        }

        @Override
        public void d(int value) {
        }

        @Override
        public void e(int value, int count) {
        }

        @Override
        public boolean f(String bufferName, C15269a.EnumC2004a bufferType, int capacity) {
            if (bufferName.equalsIgnoreCase("table")) {
                if (bufferType != C15269a.EnumC2004a.Float) {
                    throw new RuntimeException("terrain table serialized with wrong data type " + ((Object) bufferType));
                }
                int r12 = b.r1(capacity);
                this.f127356d = capacity;
                C15829e c15829e = new C15829e(r12, r12);
                this.f127355c = c15829e;
                C15975a.this.f127349a = new C16278e(r12);
                this.f127354b = C15975a.this.f127349a;
                NativeFloatBuffer g10 = c15829e.g();
                this.f127353a = g10;
                g10.position(0);
                return true;
            }
            if (!bufferName.startsWith("layer")) {
                return false;
            }
            String substring = bufferName.substring(bufferName.indexOf(s.f32937c) + 1);
            if (bufferType != C15269a.EnumC2004a.Float) {
                throw new RuntimeException("terrain layer serialized with wrong data type " + ((Object) bufferType));
            }
            int r13 = b.r1(capacity);
            this.f127356d = capacity;
            C15829e c15829e2 = new C15829e(r13, r13);
            this.f127355c = c15829e2;
            C16278e c16278e = new C16278e(r13);
            this.f127354b = c16278e;
            C15975a.this.f127351c.add(new C16061a(substring, c16278e));
            NativeFloatBuffer g11 = c15829e2.g();
            this.f127353a = g11;
            g11.position(0);
            return true;
        }

        @Override
        public void g() {
        }

        @Override
        public void h() {
        }

        @Override
        public void i(String comment, int line) {
        }
    }

    public static C15975a d() {
        C15975a c15975a = new C15975a();
        C16278e c16278e = new C16278e(1);
        c15975a.f127349a = c16278e;
        c16278e.i(0, 0, 0.15f);
        C16061a c16061a = new C16061a("GrassLayer");
        c16061a.i(1);
        c16061a.h(0, 0, 1.0f);
        c15975a.f127351c.add(c16061a);
        C16061a c16061a2 = new C16061a("RockLayer");
        c16061a2.i(1);
        c16061a2.h(0, 0, 0.0f);
        c15975a.f127351c.add(c16061a2);
        return c15975a;
    }

    public static C15975a e(File file) {
        FileInputStream fileInputStream;
        byte[] bArr;
        if (!file.exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                bArr = new byte[4];
            } finally {
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        if (fileInputStream.read(bArr) == 4 && NativeTerrainDataFile.hasBinaryHeader(bArr)) {
            C15975a i10 = i(NativeTerrainDataFile.read(file));
            fileInputStream.close();
            return i10;
        }
        fileInputStream.close();
        try {
            fileInputStream = new FileInputStream(file);
            try {
                C15975a h10 = h(fileInputStream);
                fileInputStream.close();
                return h10;
            } finally {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static C15975a f(FileInputStream file) {
        return g(file);
    }

    public static C15975a g(InputStream file) {
        try {
            byte[] readAllBytes = NativeTerrainDataFile.readAllBytes(file);
            return NativeTerrainDataFile.hasBinaryHeader(readAllBytes) ? i(NativeTerrainDataFile.read(readAllBytes)) : h(new ByteArrayInputStream(readAllBytes));
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static C15975a h(InputStream file) {
        C15975a c15975a = new C15975a();
        C15269a c15269a = new C15269a();
        if (!c15269a.c(file, l(c15975a))) {
            return null;
        }
        c15269a.d();
        return c15975a;
    }

    public static C15975a i(NativeTerrainDataFile.LoadedData loadedData) {
        NativeFloatBuffer[] nativeFloatBufferArr;
        if (loadedData == null) {
            return null;
        }
        C15975a c15975a = new C15975a();
        NativeFloatBuffer nativeFloatBuffer = loadedData.heightBuffer;
        if (nativeFloatBuffer != null) {
            c15975a.f127349a = p(nativeFloatBuffer);
        }
        String[] strArr = loadedData.layerGuids;
        if (strArr != null && (nativeFloatBufferArr = loadedData.layerBuffers) != null) {
            int min = Math.min(strArr.length, nativeFloatBufferArr.length);
            for (int i10 = 0; i10 < min; i10++) {
                NativeFloatBuffer nativeFloatBuffer2 = loadedData.layerBuffers[i10];
                if (nativeFloatBuffer2 != null) {
                    c15975a.f127351c.add(new C16061a(loadedData.layerGuids[i10], p(nativeFloatBuffer2)));
                }
            }
        }
        return c15975a;
    }

    public static C15269a.b l(C15975a data) {
        return new C2191a();
    }

    public static C16278e p(NativeFloatBuffer buffer) {
        if (buffer == null) {
            throw new NullPointerException("buffer can't be null");
        }
        int capacity = buffer.capacity();
        int r12 = b.r1(capacity);
        if (r12 * r12 == capacity) {
            buffer.position(0);
            return new C16278e(new C15829e(buffer, r12, r12), r12);
        }
        throw new RuntimeException("terrain table buffer capacity is not a perfect square: " + capacity);
    }

    public C16278e j() {
        return this.f127349a;
    }

    public C16278e k() {
        return this.f127350b;
    }

    public C16061a m(int i10) {
        C16061a c16061a;
        synchronized (this.f127351c) {
            c16061a = this.f127351c.get(i10);
        }
        return c16061a;
    }

    public C16061a n(TerrainLayer layer) {
        synchronized (this.f127351c) {
            for (int i10 = 0; i10 < this.f127351c.size(); i10++) {
                try {
                    C16061a c16061a = this.f127351c.get(i10);
                    if (c16061a.a(layer.j())) {
                        return c16061a;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return null;
        }
    }

    public boolean o(File file) {
        C16278e c16278e = this.f127349a;
        NativeFloatBuffer c10 = c16278e != null ? c16278e.c() : null;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f127351c.size(); i10++) {
            C16061a c16061a = this.f127351c.get(i10);
            NativeFloatBuffer c11 = c16061a.c();
            if (c11 != null) {
                steppedArrayList.add(c16061a.d().toString());
                steppedArrayList2.add(c11);
            }
        }
        return NativeTerrainDataFile.write(file, c10, (String[]) steppedArrayList.toArray(new String[0]), (NativeFloatBuffer[]) steppedArrayList2.toArray(new NativeFloatBuffer[0]));
    }

    public boolean q(int resolution) {
        C16278e c16278e = this.f127349a;
        if (c16278e != null && c16278e.g() == resolution) {
            return false;
        }
        this.f127349a = C16278e.j(this.f127349a, resolution);
        return true;
    }

    public boolean r(List<TerrainLayer> layers, int resolution) {
        boolean z10 = false;
        for (int i10 = 0; i10 < layers.size(); i10++) {
            TerrainLayer terrainLayer = layers.get(i10);
            int i11 = 0;
            while (true) {
                if (i11 >= this.f127351c.size()) {
                    this.f127351c.add(new C16061a(terrainLayer.j()));
                    z10 = true;
                    break;
                }
                if (this.f127351c.get(i11).a(terrainLayer.j())) {
                    break;
                }
                i11++;
            }
        }
        for (int i12 = 0; i12 < this.f127351c.size(); i12++) {
            C16061a c16061a = this.f127351c.get(i12);
            int i13 = 0;
            while (true) {
                if (i13 >= layers.size()) {
                    this.f127352d.add(c16061a);
                    break;
                }
                if (layers.get(i13).c(c16061a.d())) {
                    break;
                }
                i13++;
            }
        }
        int i14 = 0;
        while (i14 < this.f127352d.size()) {
            this.f127352d.get(i14).b();
            i14++;
            z10 = true;
        }
        this.f127351c.removeAll(this.f127352d);
        this.f127352d.clear();
        for (int i15 = 0; i15 < this.f127351c.size(); i15++) {
            if (this.f127351c.get(i15).i(resolution)) {
                z10 = true;
            }
        }
        return z10;
    }

    public boolean s(int resolution) {
        C16278e c16278e = this.f127350b;
        if (c16278e != null && c16278e.g() == resolution) {
            return false;
        }
        this.f127350b = C16278e.j(this.f127350b, resolution);
        return true;
    }
}
