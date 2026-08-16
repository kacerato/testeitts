package org.eclipse.jdt.internal.core.index;

import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.util.SimpleWordSet;

public class MemoryIndex {
    String lastDocumentName;
    HashtableOfObject lastReferenceTable;
    public int NUM_CHANGES = 100;
    SimpleLookupTable docsToReferences = new SimpleLookupTable(7);
    SimpleWordSet allWords = new SimpleWordSet(7);

    public void addDocumentNames(String str, SimpleSet simpleSet) {
        SimpleLookupTable simpleLookupTable = this.docsToReferences;
        Object[] objArr = simpleLookupTable.keyTable;
        Object[] objArr2 = simpleLookupTable.valueTable;
        if (str == null) {
            int length = objArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (objArr2[i10] != null) {
                    simpleSet.add(objArr[i10]);
                }
            }
            return;
        }
        int length2 = objArr2.length;
        for (int i11 = 0; i11 < length2; i11++) {
            if (objArr2[i11] != null && ((String) objArr[i11]).startsWith(str, 0)) {
                simpleSet.add(objArr[i11]);
            }
        }
    }

    public void addIndexEntry(char[] cArr, char[] cArr2, String str) {
        HashtableOfObject hashtableOfObject;
        if (str.equals(this.lastDocumentName)) {
            hashtableOfObject = this.lastReferenceTable;
        } else {
            HashtableOfObject hashtableOfObject2 = (HashtableOfObject) this.docsToReferences.get(str);
            if (hashtableOfObject2 == null) {
                SimpleLookupTable simpleLookupTable = this.docsToReferences;
                HashtableOfObject hashtableOfObject3 = new HashtableOfObject(3);
                simpleLookupTable.put(str, hashtableOfObject3);
                hashtableOfObject2 = hashtableOfObject3;
            }
            this.lastDocumentName = str;
            this.lastReferenceTable = hashtableOfObject2;
            hashtableOfObject = hashtableOfObject2;
        }
        SimpleWordSet simpleWordSet = (SimpleWordSet) hashtableOfObject.get(cArr);
        if (simpleWordSet == null) {
            simpleWordSet = new SimpleWordSet(1);
            hashtableOfObject.put(cArr, simpleWordSet);
        }
        simpleWordSet.add(this.allWords.add(cArr2));
    }

    public HashtableOfObject addQueryResults(char[][] cArr, char[] cArr2, int i10, HashtableOfObject hashtableOfObject) {
        Object obj;
        EntryResult entryResult;
        char[][] cArr3 = cArr;
        char[] cArr4 = cArr2;
        SimpleLookupTable simpleLookupTable = this.docsToReferences;
        Object[] objArr = simpleLookupTable.keyTable;
        Object[] objArr2 = simpleLookupTable.valueTable;
        Object obj2 = null;
        if (i10 == 8 && cArr4 != null) {
            int length = objArr2.length;
            HashtableOfObject hashtableOfObject2 = hashtableOfObject;
            for (int i11 = 0; i11 < length; i11++) {
                HashtableOfObject hashtableOfObject3 = (HashtableOfObject) objArr2[i11];
                if (hashtableOfObject3 != null) {
                    int length2 = cArr3.length;
                    int i12 = 0;
                    while (true) {
                        if (i12 < length2) {
                            SimpleWordSet simpleWordSet = (SimpleWordSet) hashtableOfObject3.get(cArr3[i12]);
                            if (simpleWordSet == null || !simpleWordSet.includes(cArr4)) {
                                i12++;
                            } else {
                                if (hashtableOfObject2 == null) {
                                    hashtableOfObject2 = new HashtableOfObject(13);
                                }
                                EntryResult entryResult2 = (EntryResult) hashtableOfObject2.get(cArr4);
                                if (entryResult2 == null) {
                                    entryResult2 = new EntryResult(cArr4, null);
                                    hashtableOfObject2.put(cArr4, entryResult2);
                                }
                                entryResult2.addDocumentName((String) objArr[i11]);
                            }
                        }
                    }
                }
            }
            return hashtableOfObject2;
        }
        int length3 = objArr2.length;
        HashtableOfObject hashtableOfObject4 = hashtableOfObject;
        int i13 = 0;
        while (i13 < length3) {
            HashtableOfObject hashtableOfObject5 = (HashtableOfObject) objArr2[i13];
            if (hashtableOfObject5 != null) {
                int length4 = cArr3.length;
                int i14 = 0;
                while (i14 < length4) {
                    SimpleWordSet simpleWordSet2 = (SimpleWordSet) hashtableOfObject5.get(cArr3[i14]);
                    if (simpleWordSet2 != null) {
                        char[][] cArr5 = simpleWordSet2.words;
                        int length5 = cArr5.length;
                        int i15 = 0;
                        while (i15 < length5) {
                            char[] cArr6 = cArr5[i15];
                            if (cArr6 != null && Index.isMatch(cArr4, cArr6, i10)) {
                                if (hashtableOfObject4 == null) {
                                    hashtableOfObject4 = new HashtableOfObject(13);
                                }
                                EntryResult entryResult3 = (EntryResult) hashtableOfObject4.get(cArr6);
                                if (entryResult3 == null) {
                                    entryResult = new EntryResult(cArr6, null);
                                    hashtableOfObject4.put(cArr6, entryResult);
                                } else {
                                    entryResult = entryResult3;
                                }
                                entryResult.addDocumentName((String) objArr[i13]);
                            }
                            i15++;
                            cArr4 = cArr2;
                        }
                        obj = null;
                    } else {
                        obj = obj2;
                    }
                    i14++;
                    cArr3 = cArr;
                    obj2 = obj;
                    cArr4 = cArr2;
                }
            }
            i13++;
            cArr3 = cArr;
            obj2 = obj2;
            cArr4 = cArr2;
        }
        return hashtableOfObject4;
    }

    public boolean hasChanged() {
        return this.docsToReferences.elementSize > 0;
    }

    public void remove(String str) {
        if (str.equals(this.lastDocumentName)) {
            this.lastDocumentName = null;
            this.lastReferenceTable = null;
        }
        this.docsToReferences.put(str, null);
    }

    public boolean shouldMerge() {
        return this.docsToReferences.elementSize >= this.NUM_CHANGES;
    }
}
