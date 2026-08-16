package Gc;

import android.content.res.AssetFileDescriptor;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.view.Surface;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Arrays;

public class a {

    public final MediaExtractor f7753a;

    public MediaCodec f7754b;

    public MediaFormat f7755c;

    public ByteBuffer[] f7756d;

    public boolean f7757e;

    public ByteBuffer[] f7758f;

    public int f7759g;

    public boolean f7760h;

    public C0150a f7761i;

    public static final class C0150a {

        public short[] f7762a = new short[0];

        public int f7763b;
    }

    public a(File file) throws IOException {
        this(file.getAbsolutePath());
    }

    public final C0150a a(C0150a reuse, int requiredCount) {
        if (reuse == null) {
            if (this.f7761i == null) {
                this.f7761i = new C0150a();
            }
            reuse = this.f7761i;
        }
        short[] sArr = reuse.f7762a;
        if (sArr == null || sArr.length < requiredCount) {
            reuse.f7762a = new short[requiredCount];
        }
        return reuse;
    }

    public int b() {
        return this.f7755c.getInteger(MediaFormat.KEY_CHANNEL_COUNT);
    }

    public int c() {
        return this.f7755c.getInteger(MediaFormat.KEY_SAMPLE_RATE);
    }

    public final ByteBuffer d(MediaCodec.BufferInfo info) {
        int dequeueInputBuffer;
        if (this.f7754b != null && !this.f7760h) {
            while (true) {
                if (!this.f7757e && (dequeueInputBuffer = this.f7754b.dequeueInputBuffer(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER)) >= 0) {
                    ByteBuffer byteBuffer = this.f7756d[dequeueInputBuffer];
                    byteBuffer.clear();
                    int readSampleData = this.f7753a.readSampleData(byteBuffer, 0);
                    if (readSampleData < 0) {
                        this.f7754b.queueInputBuffer(dequeueInputBuffer, 0, 0, 0L, 4);
                        this.f7757e = true;
                    } else {
                        this.f7754b.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, this.f7753a.getSampleTime(), 0);
                        this.f7753a.advance();
                    }
                }
                int dequeueOutputBuffer = this.f7754b.dequeueOutputBuffer(info, FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
                this.f7759g = dequeueOutputBuffer;
                if (dequeueOutputBuffer < 0) {
                    if (dequeueOutputBuffer != -3) {
                        if (dequeueOutputBuffer != -2) {
                            if (dequeueOutputBuffer == -1 && this.f7757e) {
                                break;
                            }
                        } else {
                            this.f7755c = this.f7754b.getOutputFormat();
                        }
                    } else {
                        this.f7758f = this.f7754b.getOutputBuffers();
                    }
                } else {
                    if ((info.flags & 4) != 0) {
                        if (info.size == 0) {
                            this.f7754b.releaseOutputBuffer(dequeueOutputBuffer, false);
                            this.f7759g = -1;
                            this.f7760h = true;
                            return null;
                        }
                        this.f7760h = true;
                    }
                    return this.f7758f[dequeueOutputBuffer];
                }
            }
        }
        return null;
    }

    public C0150a e(C0150a reuse) {
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            ByteBuffer d10 = d(bufferInfo);
            if (d10 == null) {
                return null;
            }
            if (bufferInfo.size <= 0) {
                this.f7754b.releaseOutputBuffer(this.f7759g, false);
                this.f7759g = -1;
                C0150a a10 = a(reuse, 0);
                a10.f7763b = 0;
                return a10;
            }
            d10.position(bufferInfo.offset);
            d10.limit(bufferInfo.offset + bufferInfo.size);
            ShortBuffer asShortBuffer = d10.order(ByteOrder.LITTLE_ENDIAN).asShortBuffer();
            int remaining = asShortBuffer.remaining();
            C0150a a11 = a(reuse, remaining);
            asShortBuffer.get(a11.f7762a, 0, remaining);
            this.f7754b.releaseOutputBuffer(this.f7759g, false);
            this.f7759g = -1;
            a11.f7763b = remaining;
            return a11;
        } catch (Exception unused) {
            return null;
        }
    }

    public short[] f() {
        C0150a e10 = e(null);
        if (e10 == null) {
            return null;
        }
        int i10 = e10.f7763b;
        return i10 == 0 ? new short[0] : Arrays.copyOf(e10.f7762a, i10);
    }

    public void g() {
        try {
            MediaCodec mediaCodec = this.f7754b;
            if (mediaCodec != null) {
                try {
                    mediaCodec.stop();
                } catch (Exception unused) {
                }
                try {
                    this.f7754b.release();
                } catch (Exception unused2) {
                }
            }
            try {
                this.f7753a.release();
            } catch (Exception unused3) {
            }
            this.f7754b = null;
        } catch (Throwable th2) {
            try {
                this.f7753a.release();
            } catch (Exception unused4) {
            }
            this.f7754b = null;
            throw th2;
        }
    }

    public final void h() throws IOException {
        int trackCount = this.f7753a.getTrackCount();
        int i10 = 0;
        while (true) {
            if (i10 < trackCount) {
                MediaFormat trackFormat = this.f7753a.getTrackFormat(i10);
                String string = trackFormat.getString(MediaFormat.KEY_MIME);
                if (string != null && string.startsWith("audio/")) {
                    this.f7753a.selectTrack(i10);
                    MediaCodec createDecoderByType = MediaCodec.createDecoderByType(string);
                    this.f7754b = createDecoderByType;
                    createDecoderByType.configure(trackFormat, (Surface) null, (MediaCrypto) null, 0);
                    this.f7755c = trackFormat;
                    break;
                }
                i10++;
            } else {
                break;
            }
        }
        MediaCodec mediaCodec = this.f7754b;
        if (mediaCodec == null) {
            this.f7753a.release();
            throw new IllegalArgumentException("No decoder for file format");
        }
        mediaCodec.start();
        this.f7756d = this.f7754b.getInputBuffers();
        this.f7758f = this.f7754b.getOutputBuffers();
        this.f7757e = false;
        this.f7760h = false;
    }

    public a(String inputFilename) throws IOException {
        MediaExtractor mediaExtractor = new MediaExtractor();
        this.f7753a = mediaExtractor;
        this.f7759g = -1;
        this.f7760h = false;
        mediaExtractor.setDataSource(inputFilename);
        h();
    }

    public a(AssetFileDescriptor afd) throws IOException {
        MediaExtractor mediaExtractor = new MediaExtractor();
        this.f7753a = mediaExtractor;
        this.f7759g = -1;
        this.f7760h = false;
        if (afd.getDeclaredLength() < 0) {
            mediaExtractor.setDataSource(afd.getFileDescriptor());
        } else {
            mediaExtractor.setDataSource(afd.getFileDescriptor(), afd.getStartOffset(), afd.getDeclaredLength());
        }
        h();
    }
}
