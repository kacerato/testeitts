package org.eclipse.jdt.core;

public final class SourceRange implements ISourceRange {
    private int length;
    private int offset;

    public SourceRange(int i10, int i11) {
        this.offset = i10;
        this.length = i11;
    }

    public static boolean isAvailable(ISourceRange iSourceRange) {
        return (iSourceRange == null || iSourceRange.getOffset() == -1) ? false : true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ISourceRange)) {
            return false;
        }
        ISourceRange iSourceRange = (ISourceRange) obj;
        return iSourceRange.getOffset() == this.offset && iSourceRange.getLength() == this.length;
    }

    @Override
    public int getLength() {
        return this.length;
    }

    @Override
    public int getOffset() {
        return this.offset;
    }

    public int hashCode() {
        return this.length ^ this.offset;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[offset=");
        stringBuffer.append(this.offset);
        stringBuffer.append(", length=");
        stringBuffer.append(this.length);
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
