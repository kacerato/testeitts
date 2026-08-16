package com.itsmagic.engine.Engines.Engine.ComponentsV2.VideoPlayer;

import B9.c;
import android.content.Context;
import android.media.Image;
import android.media.ImageReader;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.net.Uri;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VideoPlayer.VideoFramePullDecoder;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;

public class VideoFramePullDecoder {

    public int f77593A;

    public int f77594B;

    public int f77595C;

    public int f77596D;

    public final Object f77597E;

    public volatile boolean f77598F;

    public volatile long f77599G;

    public volatile boolean f77600H;

    public final Object f77601I;

    public a[] f77602J;

    public final Context f77603a;

    public final Uri f77604b;

    public final int f77605c;

    public final int f77606d;

    public final int f77607e;

    public final boolean f77608f;

    public final int f77609g;

    public final int f77610h;

    public final int f77611i;

    public final float f77612j;

    public final int f77613k;

    public MediaExtractor f77614l;

    public MediaCodec f77615m;

    public ImageReader f77616n;

    public final Object f77617o;

    public volatile boolean f77618p;

    public volatile boolean f77619q;

    public volatile boolean f77620r;

    public volatile boolean f77621s;

    public boolean f77622t;

    public boolean f77623u;

    public Thread f77624v;

    public final Object f77625w;

    public c f77626x;

    public volatile long f77627y;

    public volatile long f77628z;

    public static class a {

        public final NativeByteBuffer f77629a;

        public boolean f77630b = false;

        public a(int size) {
            this.f77629a = new NativeByteBuffer(size);
        }
    }

    static {
        System.loadLibrary("native-video-frame-pull-decoder");
    }

    public VideoFramePullDecoder(Context context, Uri videoUri) {
        this(context, videoUri, 0, 0, 4, false, 0, 255, 0, 0.0f);
    }

    private static native void nativeConvertYuv420888ToRgb(ByteBuffer yBuffer, ByteBuffer uBuffer, ByteBuffer vBuffer, int yRowStride, int yPixelStride, int uRowStride, int uPixelStride, int vRowStride, int vPixelStride, int srcWidth, int srcHeight, long outBufferPointer, int outWidth, int outHeight, boolean chromaKeyEnabled, int chromaKeyRed, int chromaKeyGreen, int chromaKeyBlue, float chromaKeyTolerance, int outputChannels);

    public final void A(long presentationTimeUs) {
        while (!this.f77620r && !this.f77619q && !m()) {
            long nanoTime = presentationTimeUs - ((System.nanoTime() - this.f77627y) / 1000);
            if (nanoTime <= 0) {
                return;
            } else {
                try {
                    Thread.sleep(nanoTime / 1000, ((int) (nanoTime % 1000)) * 1000);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public final a b() {
        synchronized (this.f77601I) {
            try {
                a[] aVarArr = this.f77602J;
                if (aVarArr == null) {
                    return null;
                }
                for (a aVar : aVarArr) {
                    if (!aVar.f77630b) {
                        aVar.f77630b = true;
                        return aVar;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c() {
        NativeByteBuffer nativeByteBuffer;
        synchronized (this.f77625w) {
            try {
                c cVar = this.f77626x;
                nativeByteBuffer = null;
                if (cVar != null) {
                    NativeByteBuffer nativeByteBuffer2 = cVar.f1601a;
                    this.f77626x = null;
                    nativeByteBuffer = nativeByteBuffer2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (nativeByteBuffer != null) {
            s(nativeByteBuffer);
        }
    }

    public final void d(Image image, NativeByteBuffer outBuffer, int outWidth, int outHeight) {
        if (image.getFormat() != 35) {
            throw new IllegalArgumentException("Formato inv\u00e1lido: " + image.getFormat());
        }
        int width = image.getWidth();
        int height = image.getHeight();
        Image.Plane[] planes = image.getPlanes();
        ByteBuffer buffer = planes[0].getBuffer();
        ByteBuffer buffer2 = planes[1].getBuffer();
        ByteBuffer buffer3 = planes[2].getBuffer();
        int rowStride = planes[0].getRowStride();
        int pixelStride = planes[0].getPixelStride();
        int rowStride2 = planes[1].getRowStride();
        int pixelStride2 = planes[1].getPixelStride();
        int rowStride3 = planes[2].getRowStride();
        int pixelStride3 = planes[2].getPixelStride();
        buffer.position(0);
        buffer2.position(0);
        buffer3.position(0);
        nativeConvertYuv420888ToRgb(buffer, buffer2, buffer3, rowStride, pixelStride, rowStride2, pixelStride2, rowStride3, pixelStride3, width, height, NativeByteBuffer.getCriticalDirectCppPointer(outBuffer, 0L), outWidth, outHeight, this.f77608f, this.f77609g, this.f77610h, this.f77611i, this.f77612j, this.f77613k);
    }

    public final void e() {
        while (!this.f77620r) {
            if (q()) {
                w(1L);
            } else if (!this.f77618p || this.f77619q) {
                w(5L);
            } else {
                c f10 = f();
                if (f10 == null) {
                    w(2L);
                } else {
                    A(f10.f1604d);
                    if (this.f77620r || this.f77619q) {
                        s(f10.f1601a);
                    } else {
                        g(f10);
                    }
                }
            }
        }
    }

    public final c f() {
        Image image;
        int dequeueInputBuffer;
        ByteBuffer inputBuffer;
        if (this.f77618p && !this.f77619q && !this.f77620r) {
            if (this.f77623u) {
                if (!this.f77621s) {
                    return null;
                }
                p(0L);
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            while (!this.f77620r && !this.f77619q && !this.f77623u && !m()) {
                if (!this.f77622t && (dequeueInputBuffer = this.f77615m.dequeueInputBuffer(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER)) >= 0 && (inputBuffer = this.f77615m.getInputBuffer(dequeueInputBuffer)) != null) {
                    int readSampleData = this.f77614l.readSampleData(inputBuffer, 0);
                    if (readSampleData < 0) {
                        this.f77615m.queueInputBuffer(dequeueInputBuffer, 0, 0, 0L, 4);
                        this.f77622t = true;
                    } else {
                        this.f77615m.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, this.f77614l.getSampleTime(), 0);
                        this.f77614l.advance();
                    }
                }
                int dequeueOutputBuffer = this.f77615m.dequeueOutputBuffer(bufferInfo, FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
                if (dequeueOutputBuffer != -1 && dequeueOutputBuffer != -2 && dequeueOutputBuffer >= 0) {
                    boolean z10 = bufferInfo.size > 0;
                    this.f77628z = bufferInfo.presentationTimeUs;
                    this.f77615m.releaseOutputBuffer(dequeueOutputBuffer, z10);
                    if ((bufferInfo.flags & 4) != 0) {
                        this.f77623u = true;
                        if (!z10) {
                            return null;
                        }
                    }
                    if (z10) {
                        try {
                            image = this.f77616n.acquireNextImage();
                        } catch (IllegalStateException unused) {
                            if (this.f77623u) {
                                return null;
                            }
                            image = null;
                        }
                        if (image != null) {
                            a b10 = b();
                            if (b10 == null) {
                                image.close();
                                return null;
                            }
                            NativeByteBuffer nativeByteBuffer = b10.f77629a;
                            d(image, nativeByteBuffer, this.f77595C, this.f77596D);
                            image.close();
                            nativeByteBuffer.position(0);
                            return new c(nativeByteBuffer, this.f77595C, this.f77596D, this.f77628z);
                        }
                        if (this.f77623u) {
                            return null;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return null;
        }
        return null;
    }

    public final void g(c frame) {
        NativeByteBuffer nativeByteBuffer;
        synchronized (this.f77625w) {
            try {
                c cVar = this.f77626x;
                nativeByteBuffer = cVar != null ? cVar.f1601a : null;
                this.f77626x = frame;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (nativeByteBuffer != null) {
            s(nativeByteBuffer);
        }
    }

    public final void h() {
        Thread thread = this.f77624v;
        if (thread == null || !thread.isAlive()) {
            Thread thread2 = new Thread(new Runnable() {
                @Override
                public final void run() {
                    VideoFramePullDecoder.this.e();
                }
            }, "VideoFramePullDecoder");
            this.f77624v = thread2;
            thread2.setPriority(1);
            this.f77624v.start();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
    
        r5 = r4.getName().toLowerCase();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
    
        if (r5.contains("google") != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
    
        if (r5.contains("c2.android") != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
    
        if (r5.contains("android") == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
    
        return r4.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004f, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String i(String mime) {
        try {
            MediaCodecInfo[] codecInfos = new MediaCodecList(0).getCodecInfos();
            int length = codecInfos.length;
            for (int i10 = 0; i10 < length; i10++) {
                MediaCodecInfo mediaCodecInfo = codecInfos[i10];
                if (!mediaCodecInfo.isEncoder()) {
                    String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
                    int length2 = supportedTypes.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length2) {
                            break;
                        }
                        if (supportedTypes[i11].equalsIgnoreCase(mime)) {
                            break;
                        }
                        i11++;
                    }
                }
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public c j() {
        c cVar;
        if (!this.f77618p) {
            throw new IllegalStateException("Voc\u00ea precisa chamar start() antes de getAvailableFrame()");
        }
        if (this.f77619q) {
            return null;
        }
        synchronized (this.f77625w) {
            cVar = this.f77626x;
            this.f77626x = null;
        }
        return cVar;
    }

    public int k() {
        return this.f77596D;
    }

    public int l() {
        return this.f77595C;
    }

    public final boolean m() {
        return this.f77600H || this.f77598F;
    }

    public final void n() {
        int i10 = this.f77595C * this.f77596D * this.f77613k;
        a[] aVarArr = new a[this.f77607e];
        for (int i11 = 0; i11 < this.f77607e; i11++) {
            aVarArr[i11] = new a(i10);
        }
        synchronized (this.f77601I) {
            this.f77602J = aVarArr;
        }
    }

    public void o() {
        if (this.f77618p) {
            this.f77619q = true;
        }
    }

    public final void p(long timeUs) {
        c();
        MediaExtractor mediaExtractor = this.f77614l;
        if (mediaExtractor != null) {
            try {
                mediaExtractor.seekTo(timeUs, 2);
            } catch (Exception unused) {
            }
        }
        MediaCodec mediaCodec = this.f77615m;
        if (mediaCodec != null) {
            try {
                mediaCodec.flush();
            } catch (Exception unused2) {
            }
        }
        this.f77622t = false;
        this.f77623u = false;
        z(timeUs);
    }

    public final boolean q() {
        boolean z10;
        boolean z11;
        long j10;
        synchronized (this.f77597E) {
            z10 = this.f77600H;
            z11 = this.f77598F;
            j10 = this.f77599G;
            this.f77600H = false;
            this.f77598F = false;
        }
        if (z10) {
            p(0L);
            this.f77628z = 0L;
            this.f77619q = true;
            return true;
        }
        if (!z11) {
            return false;
        }
        p(j10);
        this.f77628z = j10;
        return true;
    }

    public void r() {
        synchronized (this.f77617o) {
            try {
                if (this.f77618p || this.f77624v != null) {
                    this.f77620r = true;
                    this.f77619q = true;
                    Thread thread = this.f77624v;
                    if (thread != null) {
                        try {
                            thread.interrupt();
                            thread.join();
                        } catch (InterruptedException unused) {
                        }
                    }
                    synchronized (this.f77617o) {
                        this.f77624v = null;
                        this.f77618p = false;
                        c();
                        MediaCodec mediaCodec = this.f77615m;
                        if (mediaCodec != null) {
                            try {
                                mediaCodec.stop();
                            } catch (Exception unused2) {
                            }
                            try {
                                this.f77615m.release();
                            } catch (Exception unused3) {
                            }
                            this.f77615m = null;
                        }
                        MediaExtractor mediaExtractor = this.f77614l;
                        if (mediaExtractor != null) {
                            try {
                                mediaExtractor.release();
                            } catch (Exception unused4) {
                            }
                            this.f77614l = null;
                        }
                        ImageReader imageReader = this.f77616n;
                        if (imageReader != null) {
                            try {
                                imageReader.close();
                            } catch (Exception unused5) {
                            }
                            this.f77616n = null;
                        }
                        synchronized (this.f77601I) {
                            this.f77602J = null;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void s(NativeByteBuffer buffer) {
        if (buffer == null) {
            return;
        }
        synchronized (this.f77601I) {
            try {
                a[] aVarArr = this.f77602J;
                if (aVarArr == null) {
                    return;
                }
                for (a aVar : aVarArr) {
                    if (aVar.f77629a == buffer) {
                        aVar.f77630b = false;
                        return;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void t(int msec) {
        if (!this.f77618p) {
            throw new IllegalStateException("Decoder not started");
        }
        long max = Math.max(0L, msec) * 1000;
        synchronized (this.f77597E) {
            this.f77599G = max;
            this.f77598F = true;
            this.f77600H = false;
        }
    }

    public final int u(MediaExtractor extractor) {
        for (int i10 = 0; i10 < extractor.getTrackCount(); i10++) {
            String string = extractor.getTrackFormat(i10).getString(MediaFormat.KEY_MIME);
            if (string != null && string.startsWith("video/")) {
                return i10;
            }
        }
        return -1;
    }

    public void v(boolean looping) {
        this.f77621s = looping;
    }

    public final void w(long millis) {
        try {
            Thread.sleep(millis);
        } catch (InterruptedException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0084 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0003, B:6:0x0008, B:7:0x0012, B:10:0x0017, B:12:0x002e, B:14:0x004d, B:17:0x0052, B:18:0x006b, B:20:0x0084, B:21:0x0091, B:22:0x00ba, B:26:0x00c0, B:27:0x00c3, B:32:0x00c7, B:33:0x008b, B:34:0x0065, B:35:0x00c8, B:36:0x00cf, B:24:0x00bb, B:25:0x00bf), top: B:3:0x0003, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008b A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0003, B:6:0x0008, B:7:0x0012, B:10:0x0017, B:12:0x002e, B:14:0x004d, B:17:0x0052, B:18:0x006b, B:20:0x0084, B:21:0x0091, B:22:0x00ba, B:26:0x00c0, B:27:0x00c3, B:32:0x00c7, B:33:0x008b, B:34:0x0065, B:35:0x00c8, B:36:0x00cf, B:24:0x00bb, B:25:0x00bf), top: B:3:0x0003, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void x() throws IOException {
        String i10;
        synchronized (this.f77617o) {
            try {
                if (this.f77618p) {
                    this.f77619q = false;
                    z(this.f77628z);
                    h();
                    return;
                }
                MediaExtractor mediaExtractor = new MediaExtractor();
                this.f77614l = mediaExtractor;
                mediaExtractor.setDataSource(this.f77603a, this.f77604b, (Map<String, String>) null);
                int u10 = u(this.f77614l);
                if (u10 < 0) {
                    throw new IllegalStateException("Nenhuma track de v\u00eddeo encontrada");
                }
                this.f77614l.selectTrack(u10);
                MediaFormat trackFormat = this.f77614l.getTrackFormat(u10);
                this.f77593A = trackFormat.getInteger("width");
                int integer = trackFormat.getInteger("height");
                this.f77594B = integer;
                int i11 = this.f77605c;
                if (i11 > 0 && this.f77606d > 0) {
                    this.f77595C = Math.min(i11, this.f77593A);
                    this.f77596D = Math.min(this.f77606d, this.f77594B);
                    this.f77616n = ImageReader.newInstance(this.f77593A, this.f77594B, 35, 1);
                    String string = trackFormat.getString(MediaFormat.KEY_MIME);
                    i10 = i(string);
                    if (i10 == null) {
                        this.f77615m = MediaCodec.createByCodecName(i10);
                    } else {
                        this.f77615m = MediaCodec.createDecoderByType(string);
                    }
                    this.f77615m.configure(trackFormat, this.f77616n.getSurface(), (MediaCrypto) null, 0);
                    this.f77615m.start();
                    n();
                    this.f77618p = true;
                    this.f77619q = false;
                    this.f77620r = false;
                    this.f77622t = false;
                    this.f77623u = false;
                    this.f77628z = 0L;
                    c();
                    z(0L);
                    synchronized (this.f77597E) {
                        this.f77598F = false;
                        this.f77600H = false;
                    }
                    h();
                    return;
                }
                this.f77595C = this.f77593A;
                this.f77596D = integer;
                this.f77616n = ImageReader.newInstance(this.f77593A, this.f77594B, 35, 1);
                String string2 = trackFormat.getString(MediaFormat.KEY_MIME);
                i10 = i(string2);
                if (i10 == null) {
                }
                this.f77615m.configure(trackFormat, this.f77616n.getSurface(), (MediaCrypto) null, 0);
                this.f77615m.start();
                n();
                this.f77618p = true;
                this.f77619q = false;
                this.f77620r = false;
                this.f77622t = false;
                this.f77623u = false;
                this.f77628z = 0L;
                c();
                z(0L);
                synchronized (this.f77597E) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void y() {
        if (this.f77618p) {
            this.f77619q = true;
            synchronized (this.f77597E) {
                this.f77600H = true;
                this.f77598F = false;
            }
        }
    }

    public final void z(long presentationTimeUs) {
        this.f77627y = System.nanoTime() - (presentationTimeUs * 1000);
    }

    public VideoFramePullDecoder(Context context, Uri videoUri, int outputWidth, int outputHeight, int ringSize) {
        this(context, videoUri, outputWidth, outputHeight, ringSize, false, 0, 255, 0, 0.0f);
    }

    public VideoFramePullDecoder(Context context, Uri videoUri, int outputWidth, int outputHeight, int ringSize, boolean chromaKeyEnabled, int chromaKeyRed, int chromaKeyGreen, int chromaKeyBlue, float chromaKeyTolerance) {
        this.f77617o = new Object();
        this.f77618p = false;
        this.f77619q = false;
        this.f77620r = false;
        this.f77621s = false;
        this.f77622t = false;
        this.f77623u = false;
        this.f77625w = new Object();
        this.f77627y = 0L;
        this.f77628z = 0L;
        this.f77597E = new Object();
        this.f77598F = false;
        this.f77599G = 0L;
        this.f77600H = false;
        this.f77601I = new Object();
        this.f77602J = null;
        this.f77603a = context.getApplicationContext();
        this.f77604b = videoUri;
        this.f77605c = outputWidth;
        this.f77606d = outputHeight;
        this.f77607e = Math.max(2, ringSize);
        this.f77608f = chromaKeyEnabled;
        this.f77609g = chromaKeyRed;
        this.f77610h = chromaKeyGreen;
        this.f77611i = chromaKeyBlue;
        this.f77612j = chromaKeyTolerance;
        this.f77613k = chromaKeyEnabled ? 4 : 3;
    }
}
