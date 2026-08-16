package java.lang;

import java.io.DataInputStream;
import java.lang.ref.SoftReference;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.zip.InflaterInputStream;
import jdk.internal.util.ArraysSupport;
import sun.nio.cs.ISO_8859_1;

public class CharacterName {
    private static SoftReference<CharacterName> refCharName;
    private final byte[] strPool;
    private final int[] lookup;
    private final int[] bkIndices;
    private final int[] cpEntries;
    private final int[] hsIndices;

    private CharacterName() {
        try {
            DataInputStream dis = new DataInputStream(new InflaterInputStream(CharacterName.class.getResourceAsStream("uniName.dat")));
            try {
                int total = dis.readInt();
                int bkNum = dis.readInt();
                int cpNum = dis.readInt();
                int cpEnd = dis.readInt();
                byte[] ba2 = new byte[cpEnd];
                this.lookup = new int[bkNum * 256];
                this.bkIndices = new int[4352];
                this.strPool = new byte[total - cpEnd];
                this.cpEntries = new int[cpNum * 3];
                this.hsIndices = new int[(cpNum / 2) | 1];
                Arrays.fill(this.bkIndices, -1);
                Arrays.fill(this.hsIndices, -1);
                dis.readFully(ba2);
                dis.readFully(this.strPool);
                int nameOff = 0;
                int cpOff = 0;
                int cp = 0;
                int bk2 = -1;
                int prevBk = -1;
                int idx = 0;
                do {
                    int i10 = cpOff;
                    cpOff++;
                    int len = ba2[i10] & 255;
                    if (len == 0) {
                        int cpOff2 = cpOff + 1;
                        len = ba2[cpOff] & 255;
                        int cpOff3 = cpOff2 + 1;
                        int i11 = (ba2[cpOff2] & 255) << 16;
                        int cpOff4 = cpOff3 + 1;
                        int i12 = i11 | ((ba2[cpOff3] & 255) << 8);
                        cpOff = cpOff4 + 1;
                        cp = i12 | (ba2[cpOff4] & 255);
                    } else {
                        cp++;
                    }
                    int hi2 = cp >> 8;
                    if (prevBk != hi2) {
                        bk2++;
                        this.bkIndices[hi2] = bk2;
                        prevBk = hi2;
                    }
                    this.lookup[(bk2 << 8) + (cp & 255)] = (nameOff << 8) | len;
                    int hash = hashN(this.strPool, nameOff, len);
                    int hsh = (hash & Integer.MAX_VALUE) % this.hsIndices.length;
                    int next = this.hsIndices[hsh];
                    this.hsIndices[hsh] = idx;
                    idx = addCp(idx, hash, next, cp);
                    nameOff += len;
                } while (cpOff < cpEnd);
                dis.close();
            } finally {
            }
        } catch (Exception x10) {
            throw new InternalError(x10.getMessage(), x10);
        }
    }

    private static int hashN(byte[] a10, int off, int len) {
        return ArraysSupport.hashCode(a10, off, len, 1);
    }

    private int addCp(int idx, int hash, int next, int cp) {
        int idx2 = idx + 1;
        this.cpEntries[idx] = hash;
        int idx3 = idx2 + 1;
        this.cpEntries[idx2] = next;
        int idx4 = idx3 + 1;
        this.cpEntries[idx3] = cp;
        return idx4;
    }

    private int getCpHash(int idx) {
        return this.cpEntries[idx];
    }

    private int getCpNext(int idx) {
        return this.cpEntries[idx + 1];
    }

    private int getCp(int idx) {
        return this.cpEntries[idx + 2];
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0011, code lost:
    
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CharacterName getInstance() {
        CharacterName cname;
        SoftReference<CharacterName> ref = refCharName;
        if (ref != null) {
            CharacterName characterName = ref.get();
            cname = characterName;
        }
        cname = new CharacterName();
        refCharName = new SoftReference<>(cname);
        return cname;
    }

    public String getName(int cp) {
        int off;
        int bk2 = this.bkIndices[cp >> 8];
        if (bk2 == -1 || (off = this.lookup[(bk2 << 8) + (cp & 255)]) == 0) {
            return null;
        }
        String result = new String(this.strPool, 0, off >>> 8, off & 255);
        return result;
    }

    public int getCodePoint(String name) {
        int off;
        byte[] bname = name.getBytes((Charset) ISO_8859_1.INSTANCE);
        int hsh = hashN(bname, 0, bname.length);
        int i10 = this.hsIndices[(hsh & Integer.MAX_VALUE) % this.hsIndices.length];
        while (true) {
            int idx = i10;
            if (idx != -1) {
                if (getCpHash(idx) == hsh) {
                    int cp = getCp(idx);
                    int bk2 = this.bkIndices[cp >> 8];
                    if (bk2 != -1 && (off = this.lookup[(bk2 << 8) + (cp & 255)]) != 0) {
                        int len = off & 255;
                        int off2 = off >>> 8;
                        if (bname.length == len) {
                            int i11 = 0;
                            while (i11 < len) {
                                int i12 = off2;
                                off2++;
                                if (bname[i11] != this.strPool[i12]) {
                                    break;
                                }
                                i11++;
                            }
                            if (i11 == len) {
                                return cp;
                            }
                        } else {
                            continue;
                        }
                    }
                }
                i10 = getCpNext(idx);
            } else {
                return -1;
            }
        }
    }
}
