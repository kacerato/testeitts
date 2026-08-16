package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;

public class DocumentAdapter extends Document {
    private IBuffer buffer;

    public DocumentAdapter(IBuffer iBuffer) {
        super(iBuffer.getContents());
        this.buffer = iBuffer;
    }

    public void replace(int i10, int i11, String str) throws BadLocationException {
        super.replace(i10, i11, str);
        this.buffer.replace(i10, i11, str);
    }

    public void set(String str) {
        super.set(str);
        this.buffer.setContents(str);
    }
}
