package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.ArrayList;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.text.edits.ISourceModifier;
import org.eclipse.text.edits.ReplaceEdit;

public class SourceModifier implements ISourceModifier {
    private final String destinationIndent;
    private final int indentWidth;
    private final int sourceIndentLevel;
    private final int tabWidth;

    public SourceModifier(int i10, String str, int i11, int i12) {
        this.destinationIndent = str;
        this.sourceIndentLevel = i10;
        this.tabWidth = i11;
        this.indentWidth = i12;
    }

    public ISourceModifier copy() {
        return this;
    }

    public ReplaceEdit[] getModifications(String str) {
        ArrayList arrayList = new ArrayList();
        int measureIndentUnits = IndentManipulation.measureIndentUnits(this.destinationIndent, this.tabWidth, this.indentWidth);
        int i10 = this.sourceIndentLevel;
        return measureIndentUnits == i10 ? (ReplaceEdit[]) arrayList.toArray(new ReplaceEdit[arrayList.size()]) : IndentManipulation.getChangeIndentEdits(str, i10, this.tabWidth, this.indentWidth, this.destinationIndent);
    }
}
