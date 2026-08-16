package org.eclipse.jdt.core.dom;

public class Message {
    private int length;
    private String message;
    private int startPosition;

    public Message(String str, int i10) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (i10 >= -1) {
            this.message = str;
            this.startPosition = i10;
            this.length = 0;
            return;
        }
        throw new IllegalArgumentException();
    }

    public int getLength() {
        return this.length;
    }

    public String getMessage() {
        return this.message;
    }

    public int getSourcePosition() {
        return getStartPosition();
    }

    public int getStartPosition() {
        return this.startPosition;
    }

    public Message(String str, int i10, int i11) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (i10 >= -1) {
            this.message = str;
            this.startPosition = i10;
            if (i11 <= 0) {
                this.length = 0;
                return;
            } else {
                this.length = i11;
                return;
            }
        }
        throw new IllegalArgumentException();
    }
}
