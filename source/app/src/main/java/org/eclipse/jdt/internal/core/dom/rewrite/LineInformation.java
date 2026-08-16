package org.eclipse.jdt.internal.core.dom.rewrite;

import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;

public abstract class LineInformation {
    public static LineInformation create(final IDocument iDocument) {
        return new LineInformation() {
            @Override
            public int getLineOfOffset(int i10) {
                try {
                    return iDocument.getLineOfOffset(i10);
                } catch (BadLocationException unused) {
                    return -1;
                }
            }

            @Override
            public int getLineOffset(int i10) {
                try {
                    return iDocument.getLineOffset(i10);
                } catch (BadLocationException unused) {
                    return -1;
                }
            }
        };
    }

    public abstract int getLineOfOffset(int i10);

    public abstract int getLineOffset(int i10);

    public static LineInformation create(final CompilationUnit compilationUnit) {
        return new LineInformation() {
            @Override
            public int getLineOfOffset(int i10) {
                return CompilationUnit.this.getLineNumber(i10) - 1;
            }

            @Override
            public int getLineOffset(int i10) {
                return CompilationUnit.this.getPosition(i10 + 1, 0);
            }
        };
    }
}
