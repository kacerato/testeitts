package org.eclipse.jdt.internal.compiler;

import android.bluetooth.BluetoothClass;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public class SourceJavadocParser extends JavadocParser {
    char[][] categories;
    int categoriesPtr;

    public SourceJavadocParser(Parser parser) {
        super(parser);
        this.categoriesPtr = -1;
        this.categories = CharOperation.NO_CHAR_CHAR;
        this.kind = BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY;
    }

    @Override
    public boolean checkDeprecation(int i10) {
        this.categoriesPtr = -1;
        boolean checkDeprecation = super.checkDeprecation(i10);
        int i11 = this.categoriesPtr;
        if (i11 > -1) {
            char[][] cArr = this.categories;
            char[][] cArr2 = new char[i11 + 1];
            this.categories = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, i11 + 1);
        } else {
            this.categories = CharOperation.NO_CHAR_CHAR;
        }
        return checkDeprecation;
    }

    @Override
    public boolean parseIdentifierTag(boolean z10) {
        char c10;
        int i10 = this.lineEnd + 1;
        if (!super.parseIdentifierTag(z10) || this.index > i10) {
            return false;
        }
        if (this.tagValue == 11) {
            char[][] cArr = this.categories;
            int length = cArr.length;
            int i11 = this.categoriesPtr + 1;
            this.categoriesPtr = i11;
            if (i11 >= length) {
                int i12 = length + 5;
                char[][] cArr2 = new char[i12];
                this.categories = cArr2;
                System.arraycopy(cArr, 0, cArr2, 0, length);
                length = i12;
            }
            char[][] cArr3 = this.categories;
            int i13 = this.categoriesPtr;
            char[][] cArr4 = this.identifierStack;
            int i14 = this.identifierPtr;
            this.identifierPtr = i14 - 1;
            cArr3[i13] = cArr4[i14];
            consumeToken();
            while (this.index < i10 && readTokenSafely() == 22 && (((c10 = this.scanner.currentCharacter) == ' ' || ScannerHelper.isWhitespace(c10)) && this.index <= this.lineEnd + 1)) {
                int i15 = this.categoriesPtr + 1;
                this.categoriesPtr = i15;
                if (i15 >= length) {
                    char[][] cArr5 = this.categories;
                    int i16 = length + 5;
                    char[][] cArr6 = new char[i16];
                    this.categories = cArr6;
                    System.arraycopy(cArr5, 0, cArr6, 0, length);
                    length = i16;
                }
                this.categories[this.categoriesPtr] = this.scanner.getCurrentIdentifierSource();
                consumeToken();
            }
            this.index = i10;
            this.scanner.currentPosition = i10;
            consumeToken();
        }
        return true;
    }

    @Override
    public void parseSimpleTag() {
        int i10;
        char c10;
        char[] cArr = this.source;
        int i11 = this.index;
        int i12 = i11 + 1;
        this.index = i12;
        char c11 = cArr[i11];
        if (c11 == '\\' && cArr[i12] == 'u') {
            this.index = i11 + 2;
            while (true) {
                char[] cArr2 = this.source;
                i10 = this.index;
                c10 = cArr2[i10];
                if (c10 != 'u') {
                    break;
                } else {
                    this.index = i10 + 1;
                }
            }
            this.index = i10 + 1;
            int hexadecimalValue = ScannerHelper.getHexadecimalValue(c10);
            if (hexadecimalValue <= 15 && hexadecimalValue >= 0) {
                char[] cArr3 = this.source;
                int i13 = this.index;
                this.index = i13 + 1;
                int hexadecimalValue2 = ScannerHelper.getHexadecimalValue(cArr3[i13]);
                if (hexadecimalValue2 <= 15 && hexadecimalValue2 >= 0) {
                    char[] cArr4 = this.source;
                    int i14 = this.index;
                    this.index = i14 + 1;
                    int hexadecimalValue3 = ScannerHelper.getHexadecimalValue(cArr4[i14]);
                    if (hexadecimalValue3 <= 15 && hexadecimalValue3 >= 0) {
                        char[] cArr5 = this.source;
                        int i15 = this.index;
                        this.index = i15 + 1;
                        int hexadecimalValue4 = ScannerHelper.getHexadecimalValue(cArr5[i15]);
                        if (hexadecimalValue4 <= 15 && hexadecimalValue4 >= 0) {
                            c11 = (char) ((((((hexadecimalValue * 16) + hexadecimalValue2) * 16) + hexadecimalValue3) * 16) + hexadecimalValue4);
                        }
                    }
                }
            }
            this.index = i12;
        }
        if (c11 != 'c') {
            if (c11 == 'd' && readChar() == 'e' && readChar() == 'p' && readChar() == 'r' && readChar() == 'e' && readChar() == 'c' && readChar() == 'a' && readChar() == 't' && readChar() == 'e' && readChar() == 'd') {
                char readChar = readChar();
                if (ScannerHelper.isWhitespace(readChar) || readChar == '*') {
                    this.tagValue = 1;
                    this.deprecated = true;
                    return;
                }
                return;
            }
            return;
        }
        if (readChar() == 'a' && readChar() == 't' && readChar() == 'e' && readChar() == 'g' && readChar() == 'o' && readChar() == 'r' && readChar() == 'y') {
            char readChar2 = readChar();
            if (ScannerHelper.isWhitespace(readChar2) || readChar2 == '*') {
                this.tagValue = 11;
                Scanner scanner = this.scanner;
                if (scanner.source == null) {
                    scanner.setSource(this.source);
                }
                Scanner scanner2 = this.scanner;
                scanner2.resetTo(this.index, scanner2.eofPosition);
                parseIdentifierTag(false);
            }
        }
    }
}
