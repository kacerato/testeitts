package org.eclipse.jdt.internal.core.index;

import java.io.IOException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;

public class EntryResult {
    private SimpleSet documentNames;
    private Object[] documentTables;
    private char[] word;

    public EntryResult(char[] cArr, Object obj) {
        this.word = cArr;
        if (obj != null) {
            this.documentTables = new Object[]{obj};
        }
    }

    public void addDocumentName(String str) {
        if (this.documentNames == null) {
            this.documentNames = new SimpleSet(3);
        }
        this.documentNames.add(str);
    }

    public void addDocumentTable(Object obj) {
        Object[] objArr = this.documentTables;
        if (objArr == null) {
            this.documentTables = new Object[]{obj};
            return;
        }
        int length = objArr.length;
        Object[] objArr2 = new Object[length + 1];
        this.documentTables = objArr2;
        System.arraycopy(objArr, 0, objArr2, 0, length);
        this.documentTables[length] = obj;
    }

    public String[] getDocumentNames(Index index) throws IOException {
        Object[] objArr = this.documentTables;
        int i10 = 0;
        if (objArr != null) {
            int length = objArr.length;
            if (length == 1 && this.documentNames == null) {
                int[] readDocumentNumbers = index.diskIndex.readDocumentNumbers(objArr[0]);
                String[] strArr = new String[readDocumentNumbers.length];
                int length2 = readDocumentNumbers.length;
                while (i10 < length2) {
                    strArr[i10] = index.diskIndex.readDocumentName(readDocumentNumbers[i10]);
                    i10++;
                }
                return strArr;
            }
            for (int i11 = 0; i11 < length; i11++) {
                for (int i12 : index.diskIndex.readDocumentNumbers(this.documentTables[i11])) {
                    addDocumentName(index.diskIndex.readDocumentName(i12));
                }
            }
        }
        SimpleSet simpleSet = this.documentNames;
        if (simpleSet == null) {
            return CharOperation.NO_STRINGS;
        }
        String[] strArr2 = new String[simpleSet.elementSize];
        Object[] objArr2 = simpleSet.values;
        int length3 = objArr2.length;
        int i13 = 0;
        while (i10 < length3) {
            Object obj = objArr2[i10];
            if (obj != null) {
                strArr2[i13] = (String) obj;
                i13++;
            }
            i10++;
        }
        return strArr2;
    }

    public char[] getWord() {
        return this.word;
    }

    public boolean isEmpty() {
        return this.documentTables == null && this.documentNames == null;
    }
}
