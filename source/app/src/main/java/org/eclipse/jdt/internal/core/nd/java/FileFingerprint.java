package org.eclipse.jdt.internal.core.nd.java;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.internal.core.nd.StreamHasher;

public class FileFingerprint {
    private static final FileFingerprint EMPTY = new FileFingerprint(0, 0, 0);
    public static final long NEVER_MODIFIED = 0;
    public static final long UNKNOWN = 1;
    private static final long WORST_FILESYSTEM_TIMESTAMP_ACCURACY_MS = 2000;
    private long hash;
    private long size;
    private long time;

    public static class FingerprintTestResult {
        private boolean matches;
        private boolean needsNewFingerprint;
        private FileFingerprint newFingerprint;

        public FingerprintTestResult(boolean z10, boolean z11, FileFingerprint fileFingerprint) {
            this.matches = z10;
            this.newFingerprint = fileFingerprint;
            this.needsNewFingerprint = z11;
        }

        public FileFingerprint getNewFingerprint() {
            return this.newFingerprint;
        }

        public boolean matches() {
            return this.matches;
        }

        public boolean needsNewFingerprint() {
            return this.needsNewFingerprint;
        }

        public String toString() {
            return "FingerprintTestResult [matches=" + this.matches + ", needsNewFingerprint=" + this.needsNewFingerprint + ", newFingerprint=" + ((Object) this.newFingerprint) + "]";
        }
    }

    public FileFingerprint(long j10, long j11, long j12) {
        this.time = j10;
        this.size = j11;
        this.hash = j12;
    }

    private long computeHashCode(File file, long j10, IProgressMonitor iProgressMonitor) throws IOException {
        char[] cArr = new char[2048];
        byte[] bArr = new byte[4096];
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, (int) (j10 / 4096));
        StreamHasher streamHasher = new StreamHasher();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                try {
                    convert.split(1);
                    int readUntilBufferFull = readUntilBufferFull(fileInputStream, bArr);
                    if (readUntilBufferFull < 4096) {
                        char[] cArr2 = new char[(readUntilBufferFull + 1) / 2];
                        copyByteArrayToCharArray(cArr2, bArr, readUntilBufferFull);
                        streamHasher.addChunk(cArr2);
                        return streamHasher.computeHash();
                    }
                    copyByteArrayToCharArray(cArr, bArr, readUntilBufferFull);
                    streamHasher.addChunk(cArr);
                } finally {
                    fileInputStream.close();
                }
            }
        } catch (FileNotFoundException unused) {
            return 0L;
        }
    }

    private void copyByteArrayToCharArray(char[] cArr, byte[] bArr, int i10) {
        int i11;
        int i12 = 0;
        while (true) {
            i11 = i10 / 2;
            if (i12 >= i11) {
                break;
            }
            int i13 = i12 * 2;
            cArr[i12] = (char) (bArr[i13] + bArr[i13 + 1]);
            i12++;
        }
        if (i10 % 2 != 0) {
            cArr[i11] = (char) bArr[i10 - 1];
        }
    }

    public static final FileFingerprint create(IPath iPath, IProgressMonitor iProgressMonitor) throws CoreException {
        return getEmpty().test(iPath, iProgressMonitor).getNewFingerprint();
    }

    public static final FileFingerprint getEmpty() {
        return EMPTY;
    }

    private static String getTimeString(long j10) {
        return j10 == 1 ? "UNKNOWN" : j10 == 0 ? "NEVER_MODIFIED" : Long.toString(j10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FileFingerprint fileFingerprint = (FileFingerprint) obj;
        return this.hash == fileFingerprint.hash && this.size == fileFingerprint.size && this.time == fileFingerprint.time;
    }

    public boolean fileExists() {
        return !equals(EMPTY);
    }

    public long getHash() {
        return this.hash;
    }

    public long getSize() {
        return this.size;
    }

    public long getTime() {
        return this.time;
    }

    public int hashCode() {
        long j10 = this.hash;
        long j11 = this.size;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) + 31) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.time;
        return i10 + ((int) ((j12 >>> 32) ^ j12));
    }

    public int readUntilBufferFull(InputStream inputStream, byte[] bArr) throws IOException {
        int read;
        int i10 = 0;
        while (i10 < bArr.length && (read = inputStream.read(bArr, i10, bArr.length - i10)) != -1) {
            i10 += read;
        }
        return i10;
    }

    public FingerprintTestResult test(IPath iPath, IProgressMonitor iProgressMonitor) throws CoreException {
        long computeHashCode;
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, 100);
        long currentTimeMillis = System.currentTimeMillis();
        IFileInfo fetchInfo = EFS.getLocalFileSystem().getStore(iPath).fetchInfo();
        long lastModified = fetchInfo.getLastModified();
        long j10 = Math.abs(currentTimeMillis - lastModified) < 2000 ? 1L : lastModified;
        convert.split(5);
        long length = fetchInfo.getLength();
        convert.split(5);
        boolean z10 = false;
        if (j10 != 1 && j10 == this.time && length == this.size) {
            return new FingerprintTestResult(true, false, this);
        }
        if (length == 0) {
            computeHashCode = 0;
        } else {
            try {
                computeHashCode = computeHashCode(iPath.toFile(), length, convert.split(90));
            } catch (IOException e10) {
                throw new CoreException(Package.createStatus("An error occurred computing a hash code", e10));
            }
        }
        if (computeHashCode == this.hash && length == this.size) {
            z10 = true;
        }
        FileFingerprint fileFingerprint = new FileFingerprint(j10, length, computeHashCode);
        return new FingerprintTestResult(z10, true ^ equals(fileFingerprint), fileFingerprint);
    }

    public String toString() {
        return "FileFingerprint [time=" + getTimeString(this.time) + ", size=" + this.size + ", hash=" + this.hash + "]";
    }
}
