package Cg;

import net.lingala.zip4j.exception.ZipException;

public enum d {
    STORE(0),
    DEFLATE(8),
    AES_INTERNAL_ONLY(99);

    private int code;

    d(int i10) {
        this.code = i10;
    }

    public static d b(int i10) throws ZipException {
        for (d dVar : values()) {
            if (dVar.a() == i10) {
                return dVar;
            }
        }
        throw new ZipException("Unknown compression method", ZipException.a.UNKNOWN_COMPRESSION_METHOD);
    }

    public int a() {
        return this.code;
    }
}
