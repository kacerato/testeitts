package org.beyka.tiffbitmapfactory.exceptions;

public class DecodeTiffException extends RuntimeException {
    private String aditionalInfo;
    private int fileDescriptor;
    private String fileName;

    public DecodeTiffException(String str) {
        super("Could not decode tiff file " + str);
        this.fileDescriptor = -1;
        this.fileName = str;
    }

    public String getAditionalInfo() {
        return this.aditionalInfo;
    }

    public int getFileDescriptor() {
        return this.fileDescriptor;
    }

    public String getFileName() {
        return this.fileName;
    }

    public DecodeTiffException(int i10) {
        super("Could not decode tiff file with file descriptor " + i10);
        this.fileDescriptor = i10;
    }

    public DecodeTiffException(String str, String str2) {
        super("Could not decode tiff file " + str + "\n" + str2);
        this.fileDescriptor = -1;
        this.fileName = str;
        this.aditionalInfo = str2;
    }

    public DecodeTiffException(int i10, String str) {
        super("Could not decode tiff file with file descriptor" + i10 + "\n" + str);
        this.fileDescriptor = i10;
        this.aditionalInfo = str;
    }
}
