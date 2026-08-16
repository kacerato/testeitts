package org.eclipse.jdt.internal.core.index;

import java.io.File;
import java.io.IOException;
import java.util.regex.Pattern;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;

public class Index {
    static final char DEFAULT_SEPARATOR = '/';
    static final char JAR_SEPARATOR = "|".charAt(0);
    static final int MATCH_RULE_INDEX_MASK = 399;
    public String containerPath;
    protected DiskIndex diskIndex;
    public char separator;
    public ReadWriteMonitor monitor = new ReadWriteMonitor();
    protected MemoryIndex memoryIndex = new MemoryIndex();

    public Index(IndexLocation indexLocation, String str, boolean z10) throws IOException {
        this.separator = '/';
        this.containerPath = str;
        DiskIndex diskIndex = new DiskIndex(indexLocation);
        this.diskIndex = diskIndex;
        diskIndex.initialize(z10);
        if (z10) {
            this.separator = this.diskIndex.separator;
        }
    }

    public static boolean isMatch(char[] cArr, char[] cArr2, int i10) {
        if (cArr == null) {
            return true;
        }
        int length = cArr.length;
        int length2 = cArr2.length;
        if (length == 0) {
            return i10 != 0;
        }
        if (length2 == 0) {
            return (i10 & 2) != 0 && length == 1 && cArr[0] == '*';
        }
        int i11 = i10 & MATCH_RULE_INDEX_MASK;
        if (i11 == 0) {
            return length == length2 && CharOperation.equals(cArr, cArr2, false);
        }
        if (i11 == 1) {
            return length <= length2 && CharOperation.prefixEquals(cArr, cArr2, false);
        }
        if (i11 == 2) {
            return CharOperation.match(cArr, cArr2, false);
        }
        if (i11 == 4) {
            return Pattern.compile(new String(cArr)).matcher(new String(cArr2)).matches();
        }
        if (i11 != 128) {
            if (i11 != 136) {
                if (i11 != 256) {
                    if (i11 != 264) {
                        switch (i11) {
                            case 8:
                                return cArr[0] == cArr2[0] && length == length2 && CharOperation.equals(cArr, cArr2);
                            case 9:
                                return cArr[0] == cArr2[0] && length <= length2 && CharOperation.prefixEquals(cArr, cArr2);
                            case 10:
                                return CharOperation.match(cArr, cArr2, true);
                            default:
                                return false;
                        }
                    }
                }
            }
            return cArr[0] == cArr2[0] && CharOperation.camelCaseMatch(cArr, cArr2, false);
        }
        if (CharOperation.camelCaseMatch(cArr, cArr2, false)) {
            return true;
        }
        return length <= length2 && CharOperation.prefixEquals(cArr, cArr2, false);
    }

    public void addIndexEntry(char[] cArr, char[] cArr2, String str) {
        this.memoryIndex.addIndexEntry(cArr, cArr2, str);
    }

    public String containerRelativePath(String str) {
        int indexOf = str.indexOf("|");
        if (indexOf != -1 || str.length() > (indexOf = this.containerPath.length())) {
            return str.substring(indexOf + 1);
        }
        throw new IllegalArgumentException("Document path " + str + " must be relative to " + this.containerPath);
    }

    public File getIndexFile() {
        DiskIndex diskIndex = this.diskIndex;
        if (diskIndex == null) {
            return null;
        }
        return diskIndex.indexLocation.getIndexFile();
    }

    public long getIndexLastModified() {
        DiskIndex diskIndex = this.diskIndex;
        if (diskIndex == null) {
            return -1L;
        }
        return diskIndex.indexLocation.lastModified();
    }

    public IndexLocation getIndexLocation() {
        DiskIndex diskIndex = this.diskIndex;
        if (diskIndex == null) {
            return null;
        }
        return diskIndex.indexLocation;
    }

    public boolean hasChanged() {
        return this.memoryIndex.hasChanged();
    }

    public boolean isIndexForJar() {
        return this.separator == JAR_SEPARATOR;
    }

    public EntryResult[] query(char[][] cArr, char[] cArr2, int i10) throws IOException {
        if (this.memoryIndex.shouldMerge() && this.monitor.exitReadEnterWrite()) {
            try {
                save();
            } finally {
                this.monitor.exitWriteEnterRead();
            }
        }
        int i11 = i10 & MATCH_RULE_INDEX_MASK;
        HashtableOfObject addQueryResults = this.memoryIndex.hasChanged() ? this.memoryIndex.addQueryResults(cArr, cArr2, i11, this.diskIndex.addQueryResults(cArr, cArr2, i11, this.memoryIndex)) : this.diskIndex.addQueryResults(cArr, cArr2, i11, null);
        if (addQueryResults == null) {
            return null;
        }
        EntryResult[] entryResultArr = new EntryResult[addQueryResults.elementSize];
        int i12 = 0;
        for (Object obj : addQueryResults.valueTable) {
            EntryResult entryResult = (EntryResult) obj;
            if (entryResult != null) {
                entryResultArr[i12] = entryResult;
                i12++;
            }
        }
        return entryResultArr;
    }

    public String[] queryDocumentNames(String str) throws IOException {
        SimpleSet addDocumentNames;
        if (this.memoryIndex.hasChanged()) {
            addDocumentNames = this.diskIndex.addDocumentNames(str, this.memoryIndex);
            this.memoryIndex.addDocumentNames(str, addDocumentNames);
        } else {
            addDocumentNames = this.diskIndex.addDocumentNames(str, null);
        }
        int i10 = addDocumentNames.elementSize;
        if (i10 == 0) {
            return null;
        }
        String[] strArr = new String[i10];
        int i11 = 0;
        for (Object obj : addDocumentNames.values) {
            if (obj != null) {
                strArr[i11] = (String) obj;
                i11++;
            }
        }
        return strArr;
    }

    public void remove(String str) {
        this.memoryIndex.remove(str);
    }

    public void reset() throws IOException {
        this.memoryIndex = new MemoryIndex();
        DiskIndex diskIndex = new DiskIndex(this.diskIndex.indexLocation);
        this.diskIndex = diskIndex;
        diskIndex.initialize(false);
    }

    public void save() throws IOException {
        if (hasChanged()) {
            DiskIndex diskIndex = this.diskIndex;
            diskIndex.separator = this.separator;
            this.diskIndex = diskIndex.mergeWith(this.memoryIndex);
            this.memoryIndex = new MemoryIndex();
        }
    }

    public void startQuery() {
        DiskIndex diskIndex = this.diskIndex;
        if (diskIndex != null) {
            diskIndex.startQuery();
        }
    }

    public void stopQuery() {
        DiskIndex diskIndex = this.diskIndex;
        if (diskIndex != null) {
            diskIndex.stopQuery();
        }
    }

    public String toString() {
        return "Index for " + this.containerPath;
    }
}
