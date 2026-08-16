package org.beyka.tiffbitmapfactory.exceptions;

public class NotEnoughtMemoryException extends RuntimeException {
    private int availableMemory;
    private int needMemory;

    public NotEnoughtMemoryException(int i10, int i11) {
        super("Available memory is not enought to decode image. Available " + i10 + " bytes. Need " + i11 + " bytes.");
        this.availableMemory = i10;
        this.needMemory = i11;
    }

    public int getAvailableMemory() {
        return this.availableMemory;
    }

    public int getNeedMemory() {
        return this.needMemory;
    }
}
