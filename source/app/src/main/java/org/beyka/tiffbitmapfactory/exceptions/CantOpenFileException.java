package org.beyka.tiffbitmapfactory.exceptions;

public class CantOpenFileException extends RuntimeException {
    private int fileDescriptor;
    private String fileName;

    public CantOpenFileException(String str) {
        super("Can't open file " + str);
        this.fileDescriptor = -1;
        this.fileName = str;
    }

    public int getFileDescriptor() {
        return this.fileDescriptor;
    }

    public String getFileName() {
        return this.fileName;
    }

    public CantOpenFileException(int i10) {
        super("Can't open file with file descriptor " + i10);
        this.fileDescriptor = i10;
    }
}
