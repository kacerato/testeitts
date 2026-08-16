package com.android.tools.r8.position;

public class TextRange implements Position {

    private final TextPosition f56167a;

    private final TextPosition f56168b;

    public TextRange(TextPosition textPosition, TextPosition textPosition2) {
        this.f56167a = textPosition;
        this.f56168b = textPosition2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TextRange textRange = (TextRange) obj;
            if (this.f56167a.equals(textRange.getStart()) && this.f56168b.equals(textRange.getEnd())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String getDescription() {
        return this.f56167a.getDescription();
    }

    public TextPosition getEnd() {
        return this.f56168b;
    }

    public TextPosition getStart() {
        return this.f56167a;
    }

    public int hashCode() {
        return this.f56167a.hashCode() ^ this.f56168b.hashCode();
    }

    public String toString() {
        return "Text range from: '" + ((Object) getStart()) + "', to: '" + ((Object) getEnd()) + "'";
    }
}
