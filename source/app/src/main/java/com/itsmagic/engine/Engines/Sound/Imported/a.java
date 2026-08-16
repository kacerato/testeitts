package com.itsmagic.engine.Engines.Sound.Imported;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public final class a {

    public static final short f81439a = 8;

    public static boolean a(short sample) {
        return Math.abs((int) sample) > 8;
    }

    public static void b(BufferedInputStream input, long bytesToSkip) throws IOException {
        long j10 = 0;
        while (j10 < bytesToSkip) {
            long skip = input.skip(bytesToSkip - j10);
            if (skip <= 0) {
                if (input.read() < 0) {
                    return;
                } else {
                    skip = 1;
                }
            }
            j10 += skip;
        }
    }

    public static short c(byte low, byte high) {
        return (short) ((low & 255) | ((high & 255) << 8));
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long d(File pcmFile) throws IOException {
        boolean z10;
        boolean z11;
        Throwable th2;
        long length = pcmFile.length() / 2;
        if (length <= 0) {
            return 0L;
        }
        byte[] bArr = new byte[16384];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(pcmFile));
        long j10 = -1;
        long j11 = 0;
        long j12 = -1;
        int i10 = 0;
        while (true) {
            try {
                int read = bufferedInputStream.read(bArr, i10, 16384 - i10);
                if (read < 0) {
                    break;
                }
                int i11 = read + i10;
                int i12 = i11 - (i11 % 2);
                for (int i13 = 0; i13 < i12; i13 += 2) {
                    if (a(c(bArr[i13], bArr[i13 + 1]))) {
                        if (j10 < 0) {
                            j10 = j11;
                        }
                        j12 = j11;
                    }
                    j11++;
                }
                if ((i11 & 1) != 0) {
                    bArr[0] = bArr[i11 - 1];
                    i10 = 1;
                } else {
                    i10 = 0;
                }
            } finally {
            }
        }
        bufferedInputStream.close();
        if (j10 < 0 || j12 < j10) {
            return length;
        }
        long j13 = (j12 - j10) + 1;
        if (j10 == 0 && j13 == length) {
            return length;
        }
        File file = new File(pcmFile.getAbsolutePath() + ".trim.tmp");
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(pcmFile));
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                try {
                    b(bufferedInputStream2, j10 * 2);
                    long j14 = 2 * j13;
                    while (j14 > 0) {
                        z11 = false;
                        try {
                            int read2 = bufferedInputStream2.read(bArr, 0, (int) Math.min(16384, j14));
                            if (read2 < 0) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, read2);
                            j14 -= read2;
                        } catch (Throwable th3) {
                            th = th3;
                            Throwable th4 = th;
                            try {
                                try {
                                    bufferedOutputStream.close();
                                    throw th4;
                                } catch (Throwable th5) {
                                    th4.addSuppressed(th5);
                                    throw th4;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                th2 = th;
                                z10 = z11;
                                try {
                                    try {
                                        bufferedInputStream2.close();
                                        throw th2;
                                    } catch (Throwable th7) {
                                        th2.addSuppressed(th7);
                                        throw th2;
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    if (!z10) {
                                    }
                                    throw th;
                                }
                            }
                        }
                    }
                    try {
                        bufferedOutputStream.close();
                        try {
                            bufferedInputStream2.close();
                            if (pcmFile.exists() && !pcmFile.delete()) {
                                throw new IOException("Failed to replace trimmed pcm file");
                            }
                            if (file.renameTo(pcmFile)) {
                                return j13;
                            }
                            throw new IOException("Failed to finalize trimmed pcm file");
                        } catch (Throwable th9) {
                            th = th9;
                            z10 = true;
                            if (!z10) {
                                if (pcmFile.exists() && !pcmFile.delete()) {
                                    throw new IOException("Failed to replace trimmed pcm file");
                                }
                                if (!file.renameTo(pcmFile)) {
                                    throw new IOException("Failed to finalize trimmed pcm file");
                                }
                            } else if (file.exists() && !file.delete()) {
                                file.deleteOnExit();
                            }
                            throw th;
                        }
                    } catch (Throwable th10) {
                        th2 = th10;
                        z10 = true;
                        bufferedInputStream2.close();
                        throw th2;
                    }
                } catch (Throwable th11) {
                    th = th11;
                    z11 = false;
                }
            } catch (Throwable th12) {
                th = th12;
                z11 = false;
            }
        } catch (Throwable th13) {
            th = th13;
            z10 = false;
        }
    }
}
