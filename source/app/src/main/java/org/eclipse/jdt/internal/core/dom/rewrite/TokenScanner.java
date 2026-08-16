package org.eclipse.jdt.internal.core.dom.rewrite;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class TokenScanner {
    public static final int DOCUMENT_ERROR = 20003;
    public static final int END_OF_FILE = 20001;
    public static final int LEXICAL_ERROR = 20002;
    private final int endPosition;
    private final Scanner scanner;

    public TokenScanner(Scanner scanner) {
        this.scanner = scanner;
        this.endPosition = scanner.getSource().length - 1;
    }

    public static IStatus createError(int i10, String str, Throwable th2) {
        return new Status(4, JavaCore.PLUGIN_ID, i10, str, th2);
    }

    public static boolean isComment(int i10) {
        return i10 == 1002 || i10 == 1003 || i10 == 1001;
    }

    public static boolean isModifier(int i10) {
        switch (i10) {
            case 48:
            case 50:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
                return true;
            case 49:
            case 51:
            default:
                return false;
        }
    }

    public int getCurrentEndOffset() {
        return this.scanner.getCurrentTokenEndPosition() + 1;
    }

    public int getCurrentLength() {
        return getCurrentEndOffset() - getCurrentStartOffset();
    }

    public int getCurrentStartOffset() {
        return this.scanner.getCurrentTokenStartPosition();
    }

    public int getNextEndOffset(int i10, boolean z10) throws CoreException {
        readNext(i10, z10);
        return getCurrentEndOffset();
    }

    public int getNextStartOffset(int i10, boolean z10) throws CoreException {
        readNext(i10, z10);
        return getCurrentStartOffset();
    }

    public int getPreviousTokenEndOffset(int i10, int i11) throws CoreException {
        setOffset(i11);
        int readNext = readNext(false);
        while (readNext != i10) {
            i11 = getCurrentEndOffset();
            readNext = readNext(false);
        }
        return i11;
    }

    public Scanner getScanner() {
        return this.scanner;
    }

    public int getTokenEndOffset(int i10, int i11) throws CoreException {
        readToToken(i10, i11);
        return getCurrentEndOffset();
    }

    public int getTokenStartOffset(int i10, int i11) throws CoreException {
        readToToken(i10, i11);
        return getCurrentStartOffset();
    }

    public int readNext(boolean z10) throws CoreException {
        int nextToken;
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    throw new CoreException(createError(20001, "End Of File", null));
                }
                if (!z10) {
                    break;
                }
            } catch (InvalidInputException e10) {
                throw new CoreException(createError(20002, e10.getMessage(), e10));
            }
        } while (isComment(nextToken));
        return nextToken;
    }

    public void readToToken(int i10) throws CoreException {
        do {
        } while (readNext(false) != i10);
    }

    public void setOffset(int i10) {
        this.scanner.resetTo(i10, this.endPosition);
    }

    public void readToToken(int i10, int i11) throws CoreException {
        setOffset(i11);
        readToToken(i10);
    }

    public int readNext(int i10, boolean z10) throws CoreException {
        setOffset(i10);
        return readNext(z10);
    }
}
