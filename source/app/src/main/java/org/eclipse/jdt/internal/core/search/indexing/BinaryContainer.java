package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public abstract class BinaryContainer extends IndexRequest {
    Scanner scanner;

    public BinaryContainer(IPath iPath, IndexManager indexManager) {
        super(iPath, indexManager);
    }

    private boolean isIdentifier() throws InvalidInputException {
        int scanIdentifier = this.scanner.scanIdentifier();
        return scanIdentifier == 22 || scanIdentifier == 71 || scanIdentifier == 76;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
    
        if (isIdentifier() != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
    
        r14 = r13.scanner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004d, code lost:
    
        if (r14.eofPosition > r14.currentPosition) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0056, code lost:
    
        if (r14.getNextChar() != 47) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0058, code lost:
    
        r14 = r13.scanner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
    
        if (r14.eofPosition > r14.currentPosition) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
    
        if (isIdentifier() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isValidPackageNameForClassOrisModule(String str) {
        int length = str.length();
        char[] cArr = SuffixConstants.SUFFIX_CLASS;
        if (str.substring(0, length - cArr.length).equals(new String(IIndexConstants.MODULE_INFO))) {
            return true;
        }
        char[] charArray = str.toCharArray();
        if (this.scanner == null) {
            this.scanner = new Scanner(false, true, false, ClassFileConstants.JDK1_7, null, null, true);
        }
        this.scanner.setSource(charArray);
        this.scanner.eofPosition = charArray.length - cArr.length;
        return false;
    }
}
