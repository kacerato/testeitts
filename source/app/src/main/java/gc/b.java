package Gc;

import android.content.res.AssetFileDescriptor;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Sound.Native.AudioUtils;
import com.itsmagic.engine.Engines.Sound.Native.NativeSoundEmitter;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

public class b {

    public static final float f7764a = 3.0517578E-5f;

    public static int f7765b = 0;

    public static int f7766c = 1;

    public static class a {

        public NativeFloatBuffer f7767a;

        public int f7768b;

        public a(NativeFloatBuffer left, int sampleRate) {
            this.f7767a = left;
            this.f7768b = sampleRate;
        }

        public NativeFloatBuffer a() {
            return this.f7767a;
        }

        public int b() {
            return this.f7768b;
        }
    }

    public static class C0151b {

        public float[] f7769a;

        public int f7770b;

        public C0151b(short[] data, int channelCount) {
            channelCount = channelCount <= 0 ? 1 : channelCount;
            if (channelCount == 1) {
                int length = data.length;
                this.f7770b = length;
                this.f7769a = new float[length];
                for (int i10 = 0; i10 < data.length; i10++) {
                    this.f7769a[i10] = data[i10] * 3.0517578E-5f;
                }
                return;
            }
            int length2 = data.length / channelCount;
            this.f7770b = length2;
            this.f7769a = new float[length2];
            float f10 = 1.0f / channelCount;
            int i11 = 0;
            int i12 = 0;
            while (i11 < length2) {
                int i13 = i11 * channelCount;
                int i14 = 0;
                for (int i15 = 0; i15 < channelCount; i15++) {
                    i14 += data[i13 + i15];
                }
                this.f7769a[i12] = i14 * f10 * 3.0517578E-5f;
                i11++;
                i12++;
            }
        }
    }

    public interface c {
        void a();

        int b(NativeFloatBuffer leftData);

        void c(int sampleRate);

        void d(float[] leftData, int tries);

        void onFinish();
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x009f A[FINALLY_INSNS] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static a a(Gc.a decoder) {
        int c10 = decoder.c();
        SteppedArrayList<NativeFloatBuffer> steppedArrayList = new SteppedArrayList();
        int i10 = 0;
        while (true) {
            try {
                short[] f10 = decoder.f();
                if (f10 == null) {
                    break;
                }
                try {
                    C0151b c0151b = new C0151b(f10, decoder.b());
                    float[] fArr = c0151b.f7769a;
                    if (fArr != null && fArr.length > 0) {
                        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(c0151b.f7769a);
                        nativeFloatBuffer.position(0);
                        steppedArrayList.add(nativeFloatBuffer);
                        i10 += nativeFloatBuffer.capacity();
                    }
                } catch (ArrayIndexOutOfBoundsException e10) {
                    e10.printStackTrace();
                }
            } finally {
                while (r0.hasNext()) {
                }
            }
            for (NativeFloatBuffer nativeFloatBuffer2 : steppedArrayList) {
                if (nativeFloatBuffer2 != null && !nativeFloatBuffer2.isGarbage()) {
                    nativeFloatBuffer2.destroyImmediate();
                }
            }
        }
        NativeFloatBuffer nativeFloatBuffer3 = new NativeFloatBuffer(i10);
        try {
            try {
                nativeFloatBuffer3.position(0);
                Iterator<T> it = steppedArrayList.iterator();
                while (it.hasNext()) {
                    nativeFloatBuffer3.put((NativeFloatBuffer) it.next());
                }
                nativeFloatBuffer3.position(0);
                NativeFloatBuffer e11 = e(nativeFloatBuffer3, c10);
                if (e11 != nativeFloatBuffer3) {
                    nativeFloatBuffer3.destroyImmediate();
                }
                return new a(e11, d(c10));
            } catch (Error e12) {
                nativeFloatBuffer3.destroyImmediate();
                throw e12;
            }
        } catch (RuntimeException e13) {
            nativeFloatBuffer3.destroyImmediate();
            throw e13;
        }
    }

    public static a b(AssetFileDescriptor assetFileDescriptor) throws IOException {
        Gc.a aVar = new Gc.a(assetFileDescriptor);
        try {
            return a(aVar);
        } finally {
            aVar.g();
        }
    }

    public static a c(File file) throws IOException {
        Gc.a aVar = new Gc.a(file);
        try {
            return a(aVar);
        } finally {
            aVar.g();
        }
    }

    public static int d(int inputSampleRate) {
        int D10;
        return (inputSampleRate > 0 && inputSampleRate != (D10 = NativeSoundEmitter.D())) ? D10 : inputSampleRate;
    }

    public static NativeFloatBuffer e(NativeFloatBuffer input, int inputSampleRate) {
        int D10;
        return (inputSampleRate > 0 && inputSampleRate != (D10 = NativeSoundEmitter.D())) ? AudioUtils.b(input, inputSampleRate, D10) : input;
    }

    public static void f(Gc.a decoder, c listener) {
        C0151b c0151b;
        int c10 = decoder.c();
        listener.c(d(c10));
        while (true) {
            short[] f10 = decoder.f();
            if (f10 == null) {
                listener.onFinish();
                return;
            }
            try {
                c0151b = new C0151b(f10, decoder.b());
                try {
                    float[] fArr = c0151b.f7769a;
                    if (fArr != null && fArr.length > 0) {
                        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(c0151b.f7769a);
                        nativeFloatBuffer.position(0);
                        NativeFloatBuffer e10 = e(nativeFloatBuffer, c10);
                        if (e10 != nativeFloatBuffer) {
                            nativeFloatBuffer.destroyImmediate();
                        }
                        if (listener.b(e10) == f7766c) {
                            listener.a();
                            return;
                        }
                        continue;
                    }
                } catch (Exception e11) {
                    e = e11;
                    listener.d(c0151b != null ? c0151b.f7769a : null, 1);
                    e.printStackTrace();
                }
            } catch (Exception e12) {
                e = e12;
                c0151b = null;
            }
        }
    }

    public static void g(AssetFileDescriptor assetFileDescriptor, c listener) throws IOException {
        Gc.a aVar = new Gc.a(assetFileDescriptor);
        try {
            f(aVar, listener);
        } finally {
            aVar.g();
        }
    }

    public static void h(File file, c listener) throws IOException {
        Gc.a aVar = new Gc.a(file);
        try {
            f(aVar, listener);
        } finally {
            aVar.g();
        }
    }
}
