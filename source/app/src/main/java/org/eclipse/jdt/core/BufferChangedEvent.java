package org.eclipse.jdt.core;

import java.util.EventObject;

public class BufferChangedEvent extends EventObject {
    private static final long serialVersionUID = 655379473891745999L;
    private int length;
    private int offset;
    private String text;

    public BufferChangedEvent(IBuffer iBuffer, int i10, int i11, String str) {
        super(iBuffer);
        this.offset = i10;
        this.length = i11;
        this.text = str;
    }

    public IBuffer getBuffer() {
        return (IBuffer) this.source;
    }

    public int getLength() {
        return this.length;
    }

    public int getOffset() {
        return this.offset;
    }

    public String getText() {
        return this.text;
    }
}
