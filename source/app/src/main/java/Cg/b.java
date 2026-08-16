package Cg;

import net.lingala.zip4j.exception.ZipException;

public enum b {
    ONE(1),
    TWO(2);

    private int versionNumber;

    b(int i10) {
        this.versionNumber = i10;
    }

    public static b a(int i10) throws ZipException {
        for (b bVar : values()) {
            if (bVar.versionNumber == i10) {
                return bVar;
            }
        }
        throw new ZipException("Unsupported Aes version");
    }

    public int b() {
        return this.versionNumber;
    }
}
