package com.itsmagic.engine.Engines.Sound.Imported;

import com.google.gson.Gson;
import com.itsmagic.engine.Engines.Sound.Imported.d;
import com.itsmagic.engine.Engines.Sound.Imported.e;
import com.itsmagic.engine.Engines.Sound.Native.NativeSoundEmitter;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.r0;

public final class d {

    public static final String f81445a = "SND1";

    public static final Gson f81446b = new Gson();

    public static final class b {

        public final com.itsmagic.engine.Engines.Sound.Imported.b f81447a;

        public final ImportedAudioHeader f81448b;

        public final int f81449c;

        public b(com.itsmagic.engine.Engines.Sound.Imported.b file, ImportedAudioHeader header, int pcmOffsetBytes) {
            this.f81447a = file;
            this.f81448b = header;
            this.f81449c = pcmOffsetBytes;
        }
    }

    public interface c {
        void a(short[] data, int count) throws IOException;
    }

    public static final class C1493d {

        public final double f81450a;

        public double f81451b;

        public long f81452c;

        public short f81453d;

        public boolean f81454e;

        public short[] f81455f;

        public final void c(c consumer) throws IOException {
            if (this.f81454e) {
                int i10 = 0;
                while (this.f81451b <= this.f81452c - 1) {
                    short[] sArr = this.f81455f;
                    if (i10 >= sArr.length) {
                        consumer.a(sArr, i10);
                        i10 = 0;
                    }
                    this.f81455f[i10] = this.f81453d;
                    this.f81451b += this.f81450a;
                    i10++;
                }
                if (i10 > 0) {
                    consumer.a(this.f81455f, i10);
                }
            }
        }

        public final short d(short a10, short b10, double fraction) {
            int round = (int) Math.round((a10 * (1.0d - fraction)) + (b10 * fraction));
            return round > 32767 ? r0.f95770c : round < -32768 ? r0.f95769b : (short) round;
        }

        public final void e(short[] monoFrames, int frames, c consumer) throws IOException {
            short s10;
            short s11;
            if (frames <= 0) {
                return;
            }
            long j10 = this.f81452c;
            long j11 = frames;
            long j12 = j10 + j11;
            char c10 = 0;
            int i10 = 0;
            while (true) {
                double d10 = this.f81451b;
                if (d10 >= j12 - 1) {
                    break;
                }
                double d11 = d10 - j10;
                int floor = (int) Math.floor(d11);
                double d12 = d11 - floor;
                if (floor >= 0) {
                    short s12 = monoFrames[floor];
                    s10 = monoFrames[floor + 1];
                    s11 = s12;
                } else {
                    if (!this.f81454e) {
                        break;
                    }
                    s11 = this.f81453d;
                    s10 = monoFrames[c10];
                }
                short[] sArr = this.f81455f;
                if (i10 >= sArr.length) {
                    consumer.a(sArr, i10);
                    i10 = 0;
                }
                this.f81455f[i10] = d(s11, s10, d12);
                this.f81451b += this.f81450a;
                i10++;
                c10 = 0;
            }
            if (i10 > 0) {
                consumer.a(this.f81455f, i10);
            }
            this.f81453d = monoFrames[frames - 1];
            this.f81454e = true;
            this.f81452c += j11;
        }

        public C1493d(int inputSampleRate, int outputSampleRate) {
            this.f81455f = new short[4096];
            if (inputSampleRate > 0 && outputSampleRate > 0) {
                this.f81450a = inputSampleRate / outputSampleRate;
            } else {
                this.f81450a = 1.0d;
            }
        }
    }

    public static final class e implements AutoCloseable {

        public final BufferedOutputStream f81456b;

        public final byte[] f81457c;

        public long f81458d;

        public long c() {
            return this.f81458d;
        }

        @Override
        public void close() throws IOException {
            this.f81456b.close();
        }

        public void d(short[] data, int count) throws IOException {
            int i10 = 0;
            while (i10 < count) {
                int min = Math.min(this.f81457c.length / 2, count - i10);
                int i11 = 0;
                for (int i12 = 0; i12 < min; i12++) {
                    short s10 = data[i10 + i12];
                    byte[] bArr = this.f81457c;
                    int i13 = i11 + 1;
                    bArr[i11] = (byte) (s10 & 255);
                    i11 += 2;
                    bArr[i13] = (byte) ((s10 >> 8) & 255);
                }
                this.f81456b.write(this.f81457c, 0, i11);
                i10 += min;
                this.f81458d += min;
            }
        }

        public e(File file) throws IOException {
            this.f81457c = new byte[16384];
            this.f81456b = new BufferedOutputStream(new FileOutputStream(file));
        }
    }

    public static int a(int headerLength) {
        return 10 + headerLength;
    }

    public static b b(com.itsmagic.engine.Engines.Sound.Imported.b importedAudioFile) throws IOException {
        if (importedAudioFile == null) {
            throw new NullPointerException("importedAudioFile can't be null");
        }
        File b10 = importedAudioFile.b();
        if (!importedAudioFile.f()) {
            AudioConfig e10 = AudioConfig.e(importedAudioFile.d());
            if (b10.exists()) {
                b j10 = j(importedAudioFile);
                if (f(j10.f81448b, importedAudioFile.d(), e10)) {
                    return j10;
                }
            }
            e(importedAudioFile, e10);
        }
        return j(importedAudioFile);
    }

    public static b c(File ioFile) throws IOException {
        return b(com.itsmagic.engine.Engines.Sound.Imported.b.g(ioFile));
    }

    public static b d(String logicalPath) throws IOException {
        return b(com.itsmagic.engine.Engines.Sound.Imported.b.h(logicalPath));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e(com.itsmagic.engine.Engines.Sound.Imported.b bVar, AudioConfig audioConfig) throws IOException {
        int i10;
        File d10 = bVar.d();
        File b10 = bVar.b();
        File parentFile = b10.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        File file = new File(b10.getAbsolutePath() + ".pcm.tmp");
        File file2 = new File(b10.getAbsolutePath() + ".tmp");
        ImportedAudioHeader importedAudioHeader = new ImportedAudioHeader();
        importedAudioHeader.sourceLastModified = d10.lastModified();
        importedAudioHeader.sourceLength = d10.length();
        importedAudioHeader.pcmSampleRate = NativeSoundEmitter.D();
        importedAudioHeader.trimSilenceFromBeginEnd = audioConfig != null && audioConfig.c();
        try {
            com.itsmagic.engine.Engines.Sound.Imported.e eVar = new com.itsmagic.engine.Engines.Sound.Imported.e(d10);
            try {
                e.a aVar = null;
                Object[] objArr = 0;
                final e eVar2 = new e(file);
                try {
                    int max = Math.max(1, eVar.d());
                    int max2 = Math.max(1, eVar.c());
                    C1493d c1493d = new C1493d(max, importedAudioHeader.pcmSampleRate);
                    short[] sArr = new short[0];
                    while (true) {
                        aVar = eVar.e(aVar);
                        if (aVar == null) {
                            break;
                        }
                        int i11 = aVar.f81461b;
                        if (i11 > 0 && (i10 = i11 / max2) > 0) {
                            if (sArr.length < i10) {
                                sArr = new short[i10];
                            }
                            g(aVar.f81460a, i11, max2, sArr, i10);
                            importedAudioHeader.sourceFrames += i10;
                            c1493d.e(sArr, i10, new c() {
                                @Override
                                public final void a(short[] sArr2, int i12) {
                                    d.e.this.d(sArr2, i12);
                                }
                            });
                        }
                    }
                    c1493d.c(new c() {
                        @Override
                        public final void a(short[] sArr2, int i12) {
                            d.e.this.d(sArr2, i12);
                        }
                    });
                    long c10 = eVar2.c();
                    eVar2.close();
                    eVar.close();
                    if (importedAudioHeader.trimSilenceFromBeginEnd) {
                        c10 = com.itsmagic.engine.Engines.Sound.Imported.a.d(file);
                    }
                    importedAudioHeader.pcmFrames = (int) c10;
                    int i12 = importedAudioHeader.pcmSampleRate;
                    importedAudioHeader.durationSeconds = i12 > 0 ? ((float) c10) / i12 : 0.0f;
                    o(file2, file, importedAudioHeader);
                    if (b10.exists() && !b10.delete()) {
                        throw new IOException("Failed to replace imported audio file");
                    }
                    if (!file2.renameTo(b10)) {
                        throw new IOException("Failed to finalize imported audio file");
                    }
                    if (!file.exists() || file.delete()) {
                        return;
                    }
                    file.deleteOnExit();
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    eVar.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            if (file.exists() && !file.delete()) {
                file.deleteOnExit();
            }
            if (file2.exists() && !file2.delete()) {
                file2.deleteOnExit();
            }
            throw th4;
        }
    }

    public static boolean f(ImportedAudioHeader header, File sourceFile, AudioConfig config) {
        if (header != null && sourceFile != null && sourceFile.exists() && header.version == 3 && header.pcmSampleRate == NativeSoundEmitter.D() && header.sourceLastModified == sourceFile.lastModified() && header.sourceLength == sourceFile.length()) {
            return header.trimSilenceFromBeginEnd == (config != null && config.c());
        }
        return false;
    }

    public static void g(short[] input, int inputCount, int channels, short[] output, int frames) {
        if (channels <= 1) {
            System.arraycopy(input, 0, output, 0, frames);
            return;
        }
        for (int i10 = 0; i10 < frames; i10++) {
            int i11 = i10 * channels;
            if (i11 >= inputCount) {
                output[i10] = 0;
            } else {
                int i12 = 0;
                int i13 = 0;
                for (int i14 = 0; i14 < channels; i14++) {
                    int i15 = i11 + i14;
                    if (i15 >= inputCount) {
                        break;
                    }
                    i12 += input[i15];
                    i13++;
                }
                output[i10] = i13 > 0 ? (short) (i12 / i13) : (short) 0;
            }
        }
    }

    public static boolean h(File sourceFile) {
        if (sourceFile == null || !sourceFile.exists()) {
            return false;
        }
        File file = new File(n(sourceFile.getAbsolutePath()) + ".sound");
        AudioConfig e10 = AudioConfig.e(sourceFile);
        if (!file.exists()) {
            return true;
        }
        try {
            return !f(j(new com.itsmagic.engine.Engines.Sound.Imported.b(sourceFile.getAbsolutePath(), sourceFile, file, false)).f81448b, sourceFile, e10);
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean i(File sourceFile) {
        if (sourceFile == null || !sourceFile.exists()) {
            return false;
        }
        return !new File(n(sourceFile.getAbsolutePath()) + ".sound").exists();
    }

    public static b j(com.itsmagic.engine.Engines.Sound.Imported.b importedAudioFile) throws IOException {
        File b10 = importedAudioFile.b();
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(b10)));
        try {
            if (!f81445a.equals(dataInputStream.readUTF())) {
                throw new IOException("Invalid imported audio magic: " + b10.getAbsolutePath());
            }
            int readInt = dataInputStream.readInt();
            if (readInt <= 0) {
                throw new IOException("Invalid imported audio header length");
            }
            byte[] bArr = new byte[readInt];
            dataInputStream.readFully(bArr);
            ImportedAudioHeader importedAudioHeader = (ImportedAudioHeader) f81446b.fromJson(new String(bArr, StandardCharsets.UTF_8), ImportedAudioHeader.class);
            if (importedAudioHeader == null) {
                throw new IOException("Failed to deserialize imported audio header");
            }
            b bVar = new b(importedAudioFile, importedAudioHeader, a(readInt));
            dataInputStream.close();
            return bVar;
        } catch (Throwable th2) {
            try {
                dataInputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static b k(com.itsmagic.engine.Engines.Sound.Imported.b importedAudioFile) throws IOException {
        if (importedAudioFile == null) {
            throw new NullPointerException("importedAudioFile can't be null");
        }
        if (importedAudioFile.f()) {
            throw new IOException("Can't reimport a direct imported audio without the source file");
        }
        e(importedAudioFile, AudioConfig.e(importedAudioFile.d()));
        return j(importedAudioFile);
    }

    public static b l(File ioFile) throws IOException {
        return k(com.itsmagic.engine.Engines.Sound.Imported.b.g(ioFile));
    }

    public static b m(String logicalPath) throws IOException {
        return k(com.itsmagic.engine.Engines.Sound.Imported.b.h(logicalPath));
    }

    public static String n(String path) {
        int lastIndexOf = path.lastIndexOf(46);
        return lastIndexOf <= 0 ? path : path.substring(0, lastIndexOf);
    }

    public static void o(File outputFile, File pcmFile, ImportedAudioHeader header) throws IOException {
        byte[] bytes = f81446b.toJson(header).getBytes(StandardCharsets.UTF_8);
        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(outputFile)));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(pcmFile));
            try {
                dataOutputStream.writeUTF(f81445a);
                dataOutputStream.writeInt(bytes.length);
                dataOutputStream.write(bytes);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read < 0) {
                        bufferedInputStream.close();
                        dataOutputStream.close();
                        return;
                    } else if (read > 0) {
                        dataOutputStream.write(bArr, 0, read);
                    }
                }
            } catch (Throwable th2) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            try {
                dataOutputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }
}
