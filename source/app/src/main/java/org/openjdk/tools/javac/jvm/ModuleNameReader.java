package org.openjdk.tools.javac.jvm;

import java.io.IOException;
import java.io.InputStream;
import java.lang.classfile.Attributes;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import org.openjdk.javax.tools.JavaFileObject;

public class ModuleNameReader {
    private static final int INITIAL_BUFFER_SIZE = 65520;
    private int bp;
    private byte[] buf = new byte[65520];
    private int[] poolIdx;

    public static class BadClassFile extends Exception {
        private static final long serialVersionUID = 0;

        public BadClassFile(String str) {
            super(str);
        }
    }

    private static byte[] ensureCapacity(byte[] bArr, int i10) {
        if (bArr.length > i10) {
            return bArr;
        }
        byte[] bArr2 = new byte[Integer.highestOneBit(i10) << 1];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private static byte[] readInputStream(byte[] bArr, InputStream inputStream) throws IOException {
        try {
            byte[] ensureCapacity = ensureCapacity(bArr, inputStream.available());
            int read = inputStream.read(ensureCapacity);
            int i10 = 0;
            while (read != -1) {
                i10 += read;
                ensureCapacity = ensureCapacity(ensureCapacity, i10);
                read = inputStream.read(ensureCapacity, i10, ensureCapacity.length - i10);
            }
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            return ensureCapacity;
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
            throw th2;
        }
    }

    public void checkZero(int i10, String str) throws BadClassFile {
        if (i10 == 0) {
            return;
        }
        throw new BadClassFile("invalid " + str + " for module: " + i10);
    }

    public char getChar(int i10) {
        byte[] bArr = this.buf;
        return (char) (((bArr[i10] & 255) << 8) + (bArr[i10 + 1] & 255));
    }

    public String getModuleName(int i10) throws BadClassFile {
        int i11 = this.poolIdx[i10];
        if (this.buf[i11] == 19) {
            return getUtf8Value(getChar(i11 + 1), true);
        }
        throw new BadClassFile("bad module name at index " + i10);
    }

    public String getUtf8Value(int i10, boolean z10) throws BadClassFile {
        int i11 = this.poolIdx[i10];
        if (this.buf[i11] == 1) {
            char c10 = getChar(i11 + 1);
            int i12 = i11 + 3;
            return z10 ? new String(ClassFile.internalize(this.buf, i12, c10)) : new String(this.buf, i12, (int) c10);
        }
        throw new BadClassFile("bad name at index " + i10);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001c. Please report as an issue. */
    public void indexPool() throws BadClassFile {
        this.poolIdx = new int[nextChar()];
        int i10 = 1;
        while (true) {
            int[] iArr = this.poolIdx;
            if (i10 >= iArr.length) {
                return;
            }
            int i11 = i10 + 1;
            int i12 = this.bp;
            iArr[i10] = i12;
            byte[] bArr = this.buf;
            this.bp = i12 + 1;
            switch (bArr[i12]) {
                case 1:
                case 2:
                    this.bp += nextChar();
                    i10 = i11;
                case 3:
                case 4:
                case 9:
                case 10:
                case 11:
                case 12:
                case 18:
                    this.bp = i12 + 5;
                    i10 = i11;
                case 5:
                case 6:
                    this.bp = i12 + 9;
                    i10 += 2;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    this.bp = i12 + 3;
                    i10 = i11;
                case 13:
                case 14:
                case 17:
                default:
                    throw new BadClassFile("malformed constant pool");
                case 15:
                    this.bp = i12 + 4;
                    i10 = i11;
            }
        }
    }

    public char nextChar() {
        byte[] bArr = this.buf;
        int i10 = this.bp;
        int i11 = i10 + 1;
        this.bp = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.bp = i10 + 2;
        return (char) (i12 + (bArr[i11] & 255));
    }

    public int nextInt() {
        byte[] bArr = this.buf;
        int i10 = this.bp;
        int i11 = i10 + 1;
        this.bp = i11;
        int i12 = (bArr[i10] & 255) << 24;
        int i13 = i10 + 2;
        this.bp = i13;
        int i14 = i12 + ((bArr[i11] & 255) << 16);
        int i15 = i10 + 3;
        this.bp = i15;
        int i16 = i14 + ((bArr[i13] & 255) << 8);
        this.bp = i10 + 4;
        return i16 + (bArr[i15] & 255);
    }

    public String readModuleName(Path path) throws IOException, BadClassFile {
        InputStream newInputStream = Files.newInputStream(path, new OpenOption[0]);
        try {
            String readModuleName = readModuleName(newInputStream);
            if (newInputStream != null) {
                newInputStream.close();
            }
            return readModuleName;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                if (newInputStream != null) {
                    try {
                        newInputStream.close();
                    } catch (Throwable th4) {
                        th2.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        }
    }

    public String readModuleName(JavaFileObject javaFileObject) throws IOException, BadClassFile {
        InputStream openInputStream = javaFileObject.openInputStream();
        try {
            String readModuleName = readModuleName(openInputStream);
            if (openInputStream != null) {
                openInputStream.close();
            }
            return readModuleName;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                    } catch (Throwable th4) {
                        th2.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        }
    }

    public String readModuleName(InputStream inputStream) throws IOException, BadClassFile {
        this.bp = 0;
        this.buf = readInputStream(this.buf, inputStream);
        if (nextInt() == -889275714) {
            nextChar();
            char nextChar = nextChar();
            if (nextChar >= '5') {
                indexPool();
                char nextChar2 = nextChar();
                if (nextChar2 == '\u8000') {
                    nextChar();
                    checkZero(nextChar(), "super_class");
                    checkZero(nextChar(), "interface_count");
                    checkZero(nextChar(), "fields_count");
                    checkZero(nextChar(), "methods_count");
                    char nextChar3 = nextChar();
                    for (int i10 = 0; i10 < nextChar3; i10++) {
                        char nextChar4 = nextChar();
                        int nextInt = nextInt();
                        if (getUtf8Value(nextChar4, false).equals(Attributes.NAME_MODULE) && nextInt > 2) {
                            return getModuleName(nextChar());
                        }
                        this.bp += nextInt;
                    }
                    throw new BadClassFile("no Module attribute");
                }
                throw new BadClassFile("invalid access flags for module: 0x" + Integer.toHexString(nextChar2));
            }
            throw new BadClassFile("bad major version number for module: " + ((int) nextChar));
        }
        throw new BadClassFile("illegal.start.of.class.file");
    }
}
