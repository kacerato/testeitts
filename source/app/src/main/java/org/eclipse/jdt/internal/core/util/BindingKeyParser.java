package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;

public class BindingKeyParser {
    static final char C_THROWN = '|';
    private boolean hasModuleName;
    private boolean hasTypeName;
    private boolean isMalformed;
    private boolean isParsingThrownExceptions;
    int keyStart;
    private boolean parsingPaused;
    private Scanner scanner;

    public static class Scanner {
        static final int ARRAY = 4;
        static final int BASE_TYPE = 10;
        static final int CAPTURE = 8;
        static final int CAPTURE18 = 9;
        static final int END = 12;
        static final int FIELD = 2;
        static final int FLAGS = 6;
        static final int LOCAL_VAR = 5;
        static final int METHOD = 3;
        static final int MODULE = 11;
        static final int PACKAGE = 0;
        static final int START = -1;
        static final int TYPE = 1;
        static final int WILDCARD = 7;
        char[] source;
        int start;
        int index = 0;
        int token = -1;

        public Scanner(char[] cArr) {
            this.source = cArr;
        }

        public char[] getTokenSource() {
            int i10 = this.index;
            int i11 = this.start;
            int i12 = i10 - i11;
            char[] cArr = new char[i12];
            System.arraycopy(this.source, i11, cArr, 0, i12);
            return cArr;
        }

        public boolean isAtAnnotationStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '@';
        }

        public boolean isAtCapture18Start() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '^';
        }

        public boolean isAtCaptureStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '!';
        }

        public boolean isAtFieldOrMethodStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '.';
        }

        public boolean isAtLocalVariableStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '#';
        }

        public boolean isAtMemberTypeStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            if (i10 >= cArr.length) {
                return false;
            }
            char c10 = cArr[i10];
            return c10 == '$' || (c10 == '.' && cArr[i10 - 1] == '>');
        }

        public boolean isAtModuleStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '\"';
        }

        public boolean isAtParametersEnd() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '>';
        }

        public boolean isAtParametersStart() {
            int i10 = this.index;
            if (i10 <= 0) {
                return false;
            }
            char[] cArr = this.source;
            if (i10 >= cArr.length) {
                return false;
            }
            char c10 = cArr[i10];
            return c10 == '<' || c10 == '%';
        }

        public boolean isAtRawTypeEnd() {
            int i10 = this.index;
            if (i10 <= 0) {
                return false;
            }
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '>';
        }

        public boolean isAtSecondaryTypeStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '~';
        }

        public boolean isAtThrownStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '|';
        }

        public boolean isAtTypeArgumentStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && "LIZVCDBFJS[!".indexOf(cArr[i10]) != -1;
        }

        public boolean isAtTypeParameterStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == 'T';
        }

        public boolean isAtTypeVariableStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == ':';
        }

        public boolean isAtTypeWithCaptureStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '&';
        }

        public boolean isAtWildcardStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            return i10 < cArr.length && cArr[i10] == '{';
        }

        /* JADX WARN: Code restructure failed: missing block: B:143:0x0135, code lost:
        
            r15.index = r4 + 1;
            r15.token = 10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:144:0x013c, code lost:
        
            return 10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0143, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x00fe, code lost:
        
            r15.index = r4 + 1;
            r15.token = 7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0103, code lost:
        
            return 7;
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:41:0x0064. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:42:0x0067. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:43:0x006a. Please report as an issue. */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int nextToken() {
            int i10 = this.index;
            this.start = i10;
            int length = this.source.length;
            int i11 = -1;
            while (true) {
                int i12 = this.index;
                if (i12 > length) {
                    this.token = 12;
                    return 12;
                }
                char c10 = i12 == length ? (char) 0 : this.source[i12];
                if (c10 == 0) {
                    int i13 = this.token;
                    if (i13 == -1) {
                        this.token = 0;
                    } else if (i13 == 1) {
                        int i14 = this.start;
                        if (i12 <= i14 || this.source[i14 - 1] != '.') {
                            this.token = 12;
                        } else {
                            this.token = 2;
                        }
                    } else if (i13 == 3 || i13 == 5) {
                        this.token = 5;
                    } else if (i13 != 7) {
                        this.token = 12;
                    } else {
                        this.token = 1;
                    }
                    return this.token;
                }
                if (c10 != '>' && c10 != '@') {
                    if (c10 != 'F') {
                        if (c10 != 'L') {
                            if (c10 != 'N' && c10 != 'V') {
                                if (c10 == '^') {
                                    this.index = i12 + 1;
                                    this.token = 9;
                                    return 9;
                                }
                                if (c10 != '~') {
                                    if (c10 != '-') {
                                        if (c10 != '.') {
                                            if (c10 != 'I' && c10 != 'J' && c10 != 'S') {
                                                if (c10 != 'T') {
                                                    if (c10 != 'Z') {
                                                        if (c10 == '[') {
                                                            while (true) {
                                                                int i15 = this.index;
                                                                if (i15 < length && this.source[i15] == '[') {
                                                                    this.index = i15 + 1;
                                                                }
                                                            }
                                                            this.token = 4;
                                                            return 4;
                                                        }
                                                        switch (c10) {
                                                            case '!':
                                                            case '&':
                                                                this.index = i12 + 1;
                                                                this.token = 8;
                                                                return 8;
                                                            case '\"':
                                                                this.index = i12 + 1;
                                                                this.token = 11;
                                                                return 11;
                                                            case '#':
                                                                if (i12 != i10) {
                                                                    this.token = 5;
                                                                    return 5;
                                                                }
                                                                i10 = i12 + 1;
                                                                this.start = i10;
                                                                break;
                                                            case '$':
                                                                if (i12 == i10) {
                                                                    this.start = i12 + 1;
                                                                    break;
                                                                } else {
                                                                    if (i11 != -1) {
                                                                        this.index = i11;
                                                                        this.token = 1;
                                                                        return 1;
                                                                    }
                                                                    i11 = i12;
                                                                    this.index = i12 + 1;
                                                                }
                                                            default:
                                                                switch (c10) {
                                                                    case '(':
                                                                        this.token = 3;
                                                                        return 3;
                                                                    case ')':
                                                                        if (this.token != 1) {
                                                                            i10 = i12 + 1;
                                                                            this.start = i10;
                                                                            break;
                                                                        } else {
                                                                            this.token = 2;
                                                                            return 2;
                                                                        }
                                                                    case '*':
                                                                    case '+':
                                                                        break;
                                                                    default:
                                                                        switch (c10) {
                                                                            case ':':
                                                                                break;
                                                                            case ';':
                                                                                if (i12 != i10) {
                                                                                    if (i11 != -1) {
                                                                                        this.index = i11;
                                                                                    }
                                                                                    this.token = 1;
                                                                                    return 1;
                                                                                }
                                                                                i10 = i12 + 1;
                                                                                this.start = i10;
                                                                                break;
                                                                            case '<':
                                                                                int i16 = this.start;
                                                                                if (i16 > 0) {
                                                                                    char[] cArr = this.source;
                                                                                    if (cArr[i16 - 1] == '.') {
                                                                                        if (cArr[i16 - 2] == '>') {
                                                                                            if (i11 != -1) {
                                                                                                this.index = i11;
                                                                                            }
                                                                                            this.token = 1;
                                                                                        } else {
                                                                                            this.token = 3;
                                                                                        }
                                                                                        return this.token;
                                                                                    }
                                                                                    if (i12 != i10) {
                                                                                        if (i11 != -1) {
                                                                                            this.index = i11;
                                                                                        }
                                                                                        this.token = 1;
                                                                                        return 1;
                                                                                    }
                                                                                    i10 = i12 + 1;
                                                                                    this.start = i10;
                                                                                    break;
                                                                                } else {
                                                                                    continue;
                                                                                    this.index = i12 + 1;
                                                                                }
                                                                            default:
                                                                                switch (c10) {
                                                                                }
                                                                                this.index = i12 + 1;
                                                                                break;
                                                                        }
                                                                        break;
                                                                }
                                                            case '%':
                                                                i10 = i12 + 1;
                                                                this.start = i10;
                                                                break;
                                                        }
                                                    }
                                                }
                                            }
                                        } else if (this.token == 11) {
                                            this.index = i12 + 1;
                                        }
                                    }
                                } else {
                                    if (i12 != i10) {
                                        this.token = 1;
                                        return 1;
                                    }
                                    this.start = i12 + 1;
                                }
                                i11 = -1;
                                this.index = i12 + 1;
                            }
                        }
                        if (i12 == i10 && (i12 == 0 || this.source[i12 - 1] != '.')) {
                            this.start = i12 + 1;
                            i11 = -1;
                        }
                        this.index = i12 + 1;
                    }
                    if (i12 == i10 && (i12 == 0 || this.source[i12 - 1] != '.')) {
                    }
                    this.index = i12 + 1;
                }
                i10 = i12 + 1;
                this.start = i10;
                i11 = -1;
                this.index = i12 + 1;
            }
        }

        public void skipCapture18Delim() {
            int i10 = this.index;
            char[] cArr = this.source;
            if (i10 < cArr.length && cArr[i10] == '#') {
                this.index = i10 + 1;
            }
            this.start = this.index;
        }

        public void skipMethodSignature() {
            char c10;
            this.start = this.index;
            int i10 = 0;
            while (true) {
                int i11 = this.index;
                char[] cArr = this.source;
                if (i11 >= cArr.length || (c10 = cArr[i11]) == '#' || c10 == '%') {
                    return;
                }
                if (c10 != ':') {
                    if (c10 != '<') {
                        if (c10 != '>') {
                            if (c10 == '@' || c10 == '|') {
                                return;
                            }
                            if (c10 != '(') {
                                if (c10 != ')') {
                                }
                            }
                        }
                        i10--;
                    }
                    i10++;
                } else if (i10 == 0) {
                    return;
                }
                this.index = i11 + 1;
            }
        }

        public void skipParametersEnd() {
            int i10;
            while (true) {
                i10 = this.index;
                char[] cArr = this.source;
                if (i10 >= cArr.length || cArr[i10] == '>') {
                    break;
                } else {
                    this.index = i10 + 1;
                }
            }
            this.index = i10 + 1;
        }

        public void skipParametersStart() {
            while (true) {
                int i10 = this.index;
                char[] cArr = this.source;
                if (i10 >= cArr.length) {
                    return;
                }
                char c10 = cArr[i10];
                if (c10 != '<' && c10 != '%') {
                    return;
                } else {
                    this.index = i10 + 1;
                }
            }
        }

        public void skipRank() {
            this.start = this.index;
            while (true) {
                int i10 = this.index;
                char[] cArr = this.source;
                if (i10 >= cArr.length || "0123456789".indexOf(cArr[i10]) == -1) {
                    return;
                } else {
                    this.index++;
                }
            }
        }

        public void skipRankEnd() {
            int i10 = this.index;
            char[] cArr = this.source;
            if (i10 < cArr.length && cArr[i10] == '}') {
                this.index = i10 + 1;
            }
            this.start = this.index;
        }

        public void skipRankStart() {
            int i10 = this.index;
            char[] cArr = this.source;
            if (i10 >= cArr.length || cArr[i10] != '{') {
                return;
            }
            this.index = i10 + 1;
        }

        public void skipThrownStart() {
            while (true) {
                int i10 = this.index;
                char[] cArr = this.source;
                if (i10 >= cArr.length || cArr[i10] != '|') {
                    return;
                } else {
                    this.index = i10 + 1;
                }
            }
        }

        public void skipTypeEnd() {
            int i10 = this.index;
            char[] cArr = this.source;
            if (i10 >= cArr.length || cArr[i10] != ';') {
                return;
            }
            this.index = i10 + 1;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            switch (this.token) {
                case -1:
                    stringBuffer.append("START: ");
                    break;
                case 0:
                    stringBuffer.append("PACKAGE: ");
                    break;
                case 1:
                    stringBuffer.append("TYPE: ");
                    break;
                case 2:
                    stringBuffer.append("FIELD: ");
                    break;
                case 3:
                    stringBuffer.append("METHOD: ");
                    break;
                case 4:
                    stringBuffer.append("ARRAY: ");
                    break;
                case 5:
                    stringBuffer.append("LOCAL VAR: ");
                    break;
                case 6:
                    stringBuffer.append("MODIFIERS: ");
                    break;
                case 7:
                    stringBuffer.append("WILDCARD: ");
                    break;
                case 8:
                    stringBuffer.append("CAPTURE: ");
                    break;
                case 9:
                    stringBuffer.append("CAPTURE18: ");
                    break;
                case 10:
                    stringBuffer.append("BASE TYPE: ");
                    break;
                case 11:
                    stringBuffer.append("MODULE: ");
                    break;
                case 12:
                    stringBuffer.append("END: ");
                    break;
            }
            int i10 = this.index;
            if (i10 < 0) {
                stringBuffer.append("**");
                stringBuffer.append(this.source);
            } else {
                char[] cArr = this.source;
                if (i10 <= cArr.length) {
                    stringBuffer.append(cArr, 0, this.start);
                    stringBuffer.append('*');
                    int i11 = this.start;
                    int i12 = this.index;
                    if (i11 <= i12) {
                        stringBuffer.append(this.source, i11, i12 - i11);
                        stringBuffer.append('*');
                        char[] cArr2 = this.source;
                        int i13 = this.index;
                        stringBuffer.append(cArr2, i13, cArr2.length - i13);
                    } else {
                        stringBuffer.append('*');
                        char[] cArr3 = this.source;
                        int i14 = this.start;
                        stringBuffer.append(cArr3, i14, cArr3.length - i14);
                    }
                } else {
                    stringBuffer.append(cArr);
                    stringBuffer.append("**");
                }
            }
            return stringBuffer.toString();
        }
    }

    public BindingKeyParser(BindingKeyParser bindingKeyParser) {
        this("");
        this.scanner = bindingKeyParser.scanner;
    }

    private void parseAnnotation() {
        int i10 = this.scanner.token;
        BindingKeyParser newParser = newParser();
        newParser.parse();
        consumeParser(newParser);
        consumeAnnotation();
        this.isMalformed = newParser.isMalformed;
        this.scanner.token = i10;
    }

    private void parseCapture() {
        if (this.scanner.nextToken() != 8) {
            return;
        }
        parseCaptureWildcard();
        if (this.scanner.nextToken() != 1) {
            malformedKey();
        } else {
            consumeCapture(Integer.parseInt(new String(this.scanner.getTokenSource())));
            this.scanner.skipTypeEnd();
        }
    }

    private void parseCapture18() {
        if (this.scanner.nextToken() != 9) {
            return;
        }
        this.scanner.skipRankStart();
        this.scanner.skipRank();
        int parseInt = Integer.parseInt(new String(this.scanner.getTokenSource()));
        this.scanner.skipCapture18Delim();
        this.scanner.skipRank();
        int parseInt2 = Integer.parseInt(new String(this.scanner.getTokenSource()));
        this.scanner.skipRankEnd();
        consumeCapture18ID(parseInt2, parseInt);
        this.scanner.skipTypeEnd();
    }

    private void parseCaptureWildcard() {
        int i10 = this.scanner.token;
        BindingKeyParser newParser = newParser();
        newParser.parse();
        consumeParser(newParser);
        this.isMalformed = newParser.isMalformed;
        this.scanner.token = i10;
    }

    private void parseField() {
        char[] tokenSource = this.scanner.getTokenSource();
        parseReturnType();
        consumeField(tokenSource);
    }

    private void parseFullyQualifiedName() {
        if (this.scanner.isAtCaptureStart()) {
            parseCapture();
            this.hasTypeName = false;
            return;
        }
        if (this.scanner.isAtCapture18Start()) {
            parseCapture18();
            this.hasTypeName = false;
            return;
        }
        int nextToken = this.scanner.nextToken();
        if (nextToken == 0) {
            this.keyStart = 0;
            consumePackage(this.scanner.getTokenSource());
            this.hasTypeName = false;
            return;
        }
        if (nextToken == 1) {
            Scanner scanner = this.scanner;
            this.keyStart = scanner.start - 1;
            consumeFullyQualifiedName(scanner.getTokenSource());
            return;
        }
        if (nextToken == 4) {
            Scanner scanner2 = this.scanner;
            this.keyStart = scanner2.start;
            consumeArrayDimension(scanner2.getTokenSource());
            int nextToken2 = this.scanner.nextToken();
            if (nextToken2 == 1) {
                consumeFullyQualifiedName(this.scanner.getTokenSource());
                return;
            } else if (nextToken2 != 10) {
                malformedKey();
                return;
            } else {
                consumeBaseType(this.scanner.getTokenSource());
                this.hasTypeName = false;
                return;
            }
        }
        if (nextToken != 7) {
            if (nextToken != 10) {
                malformedKey();
                return;
            }
            Scanner scanner3 = this.scanner;
            this.keyStart = scanner3.start - 1;
            consumeBaseType(scanner3.getTokenSource());
            this.hasTypeName = false;
            return;
        }
        if (!CharOperation.endsWith(this.scanner.getTokenSource(), new char[]{'/', 'p', 'a', 'c', 'k', 'a', 'g', 'e', '-'})) {
            malformedKey();
            return;
        }
        Scanner scanner4 = this.scanner;
        int i10 = scanner4.start;
        if (scanner4.nextToken() == 1) {
            if (!CharOperation.equals(this.scanner.getTokenSource(), new char[]{'i', 'n', 'f', 'o'})) {
                malformedKey();
                return;
            }
            Scanner scanner5 = this.scanner;
            scanner5.start = i10;
            this.keyStart = i10 - 1;
            consumeFullyQualifiedName(scanner5.getTokenSource());
        }
    }

    private void parseGenericType() {
        while (!this.scanner.isAtParametersEnd() && !this.isMalformed) {
            if (this.scanner.nextToken() != 1) {
                malformedKey();
                return;
            } else {
                consumeTypeParameter(this.scanner.getTokenSource());
                this.scanner.skipTypeEnd();
            }
        }
    }

    private void parseInnerType() {
        char[] subarray;
        if (this.scanner.isAtMemberTypeStart() && this.scanner.nextToken() == 1) {
            char[] tokenSource = this.scanner.getTokenSource();
            if (tokenSource.length == 0) {
                return;
            }
            if (!Character.isDigit(tokenSource[0])) {
                consumeMemberType(tokenSource);
                parseInnerType();
                return;
            }
            int i10 = 1;
            while (this.scanner.isAtMemberTypeStart() && !this.isMalformed) {
                i10 = this.scanner.nextToken();
            }
            if (i10 == 12) {
                subarray = this.scanner.source;
            } else {
                Scanner scanner = this.scanner;
                subarray = CharOperation.subarray(scanner.source, this.keyStart, scanner.index + 1);
            }
            consumeLocalType(subarray);
        }
    }

    private void parseLocalVariable() {
        int i10;
        if (this.scanner.nextToken() != 5) {
            malformedKey();
            return;
        }
        char[] tokenSource = this.scanner.getTokenSource();
        int i11 = 0;
        if (Character.isDigit(tokenSource[0])) {
            consumeScope(Integer.parseInt(new String(tokenSource)));
            if (this.scanner.isAtLocalVariableStart()) {
                parseLocalVariable();
                return;
            } else {
                malformedKey();
                return;
            }
        }
        if (this.scanner.isAtLocalVariableStart()) {
            if (this.scanner.nextToken() != 5) {
                malformedKey();
                return;
            }
            i11 = Integer.parseInt(new String(this.scanner.getTokenSource()));
        }
        if (!this.scanner.isAtLocalVariableStart()) {
            i10 = -1;
        } else {
            if (this.scanner.nextToken() != 5) {
                malformedKey();
                return;
            }
            i10 = Integer.parseInt(new String(this.scanner.getTokenSource()));
        }
        consumeLocalVar(tokenSource, i11, i10);
    }

    private void parseMethod() {
        char[] tokenSource = this.scanner.getTokenSource();
        this.scanner.skipMethodSignature();
        consumeMethod(tokenSource, this.scanner.getTokenSource());
        if (this.scanner.isAtThrownStart()) {
            parseThrownExceptions();
        }
        if (this.scanner.isAtParametersStart()) {
            parseParameterizedMethod();
        }
    }

    private boolean parseModule() {
        if (this.scanner.isAtModuleStart()) {
            this.hasTypeName = false;
            this.keyStart = 1;
            if (this.scanner.nextToken() == 11 && this.scanner.nextToken() == 12) {
                consumeModule(this.scanner.getTokenSource());
                this.hasModuleName = true;
                return true;
            }
            malformedKey();
        }
        return false;
    }

    private void parseParameterizedMethod() {
        this.scanner.skipParametersStart();
        while (!this.scanner.isAtParametersEnd() && !this.isMalformed) {
            parseTypeArgument();
        }
        consumeParameterizedGenericMethod();
    }

    private void parseParameterizedType(char[] cArr, boolean z10) {
        if (!z10) {
            while (!this.scanner.isAtParametersEnd() && !this.isMalformed) {
                parseTypeArgument();
            }
        }
        this.scanner.skipParametersEnd();
        consumeParameterizedType(cArr, z10);
        this.scanner.skipTypeEnd();
        if (this.scanner.isAtMemberTypeStart() && this.scanner.nextToken() == 1) {
            char[] tokenSource = this.scanner.getTokenSource();
            if (!this.scanner.isAtParametersStart()) {
                consumeParameterizedType(tokenSource, true);
            } else {
                this.scanner.skipParametersStart();
                parseParameterizedType(tokenSource, this.scanner.isAtRawTypeEnd());
            }
        }
    }

    private void parseRawType() {
        this.scanner.skipParametersEnd();
        consumeRawType();
        this.scanner.skipTypeEnd();
        if (this.scanner.isAtMemberTypeStart() && this.scanner.nextToken() == 1) {
            char[] tokenSource = this.scanner.getTokenSource();
            if (!this.scanner.isAtParametersStart()) {
                consumeParameterizedType(tokenSource, true);
            } else {
                this.scanner.skipParametersStart();
                parseParameterizedType(tokenSource, this.scanner.isAtRawTypeEnd());
            }
        }
    }

    private void parseReturnType() {
        Scanner scanner = this.scanner;
        scanner.index++;
        int i10 = scanner.token;
        BindingKeyParser newParser = newParser();
        newParser.parse();
        consumeParser(newParser);
        this.isMalformed = newParser.isMalformed;
        this.scanner.token = i10;
    }

    private void parseSecondaryType() {
        if (this.scanner.isAtSecondaryTypeStart() && this.scanner.nextToken() == 1) {
            consumeSecondaryType(this.scanner.getTokenSource());
        }
    }

    private void parseThrownExceptions() {
        int i10 = this.scanner.token;
        while (this.scanner.isAtThrownStart() && !this.isMalformed) {
            this.scanner.skipThrownStart();
            BindingKeyParser newParser = newParser();
            newParser.isParsingThrownExceptions = true;
            newParser.parse();
            consumeParser(newParser);
            consumeException();
            this.isMalformed = newParser.isMalformed;
        }
        this.scanner.token = i10;
    }

    private void parseTypeArgument() {
        int i10 = this.scanner.token;
        BindingKeyParser newParser = newParser();
        newParser.parse();
        consumeParser(newParser);
        this.isMalformed = newParser.isMalformed;
        this.scanner.token = i10;
    }

    private void parseTypeVariable() {
        char[] cArr;
        if (this.scanner.nextToken() != 1) {
            malformedKey();
            return;
        }
        char[] tokenSource = this.scanner.getTokenSource();
        if (tokenSource.length <= 0 || !Character.isDigit(tokenSource[0])) {
            cArr = CharOperation.NO_CHAR;
        } else {
            int indexOf = CharOperation.indexOf('T', tokenSource);
            cArr = CharOperation.subarray(tokenSource, 0, indexOf);
            tokenSource = CharOperation.subarray(tokenSource, indexOf + 1, tokenSource.length);
        }
        consumeTypeVariable(cArr, tokenSource);
        this.scanner.skipTypeEnd();
    }

    private void parseTypeWithCapture() {
        if (this.scanner.nextToken() != 8) {
            return;
        }
        int i10 = this.scanner.token;
        BindingKeyParser newParser = newParser();
        newParser.parse();
        consumeParser(newParser);
        consumeTypeWithCapture();
        this.isMalformed = newParser.isMalformed;
        this.scanner.token = i10;
    }

    private void parseWildcard() {
        parseWildcardRank();
        if (this.scanner.nextToken() != 7) {
            return;
        }
        char[] tokenSource = this.scanner.getTokenSource();
        if (tokenSource.length == 0) {
            malformedKey();
            return;
        }
        char c10 = tokenSource[0];
        int i10 = c10 != '*' ? c10 != '+' ? c10 != '-' ? -1 : 2 : 1 : 0;
        if (i10 == -1) {
            malformedKey();
            return;
        }
        if (i10 != 0) {
            parseWildcardBound();
        }
        consumeWildCard(i10);
    }

    private void parseWildcardBound() {
        int i10 = this.scanner.token;
        BindingKeyParser newParser = newParser();
        newParser.parse();
        consumeParser(newParser);
        this.isMalformed = newParser.isMalformed;
        this.scanner.token = i10;
    }

    private void parseWildcardRank() {
        this.scanner.skipRankStart();
        this.scanner.skipRank();
        consumeWildcardRank(Integer.parseInt(new String(this.scanner.getTokenSource())));
        this.scanner.skipRankEnd();
    }

    public void consumeAnnotation() {
    }

    public void consumeArrayDimension(char[] cArr) {
    }

    public void consumeBaseType(char[] cArr) {
    }

    public void consumeCapture(int i10) {
    }

    public void consumeCapture18ID(int i10, int i11) {
    }

    public void consumeException() {
    }

    public void consumeField(char[] cArr) {
    }

    public void consumeFullyQualifiedName(char[] cArr) {
    }

    public void consumeKey() {
    }

    public void consumeLocalType(char[] cArr) {
    }

    public void consumeLocalVar(char[] cArr, int i10, int i11) {
    }

    public void consumeMemberType(char[] cArr) {
    }

    public void consumeMethod(char[] cArr, char[] cArr2) {
    }

    public void consumeModifiers(char[] cArr) {
    }

    public void consumeModule(char[] cArr) {
    }

    public void consumeNonGenericType() {
    }

    public void consumePackage(char[] cArr) {
    }

    public void consumeParameterizedGenericMethod() {
    }

    public void consumeParameterizedType(char[] cArr, boolean z10) {
    }

    public void consumeParser(BindingKeyParser bindingKeyParser) {
    }

    public void consumeRawType() {
    }

    public void consumeScope(int i10) {
    }

    public void consumeSecondaryType(char[] cArr) {
    }

    public void consumeTopLevelType() {
    }

    public void consumeType() {
    }

    public void consumeTypeParameter(char[] cArr) {
    }

    public void consumeTypeVariable(char[] cArr, char[] cArr2) {
    }

    public void consumeTypeWithCapture() {
    }

    public void consumeWildCard(int i10) {
    }

    public void consumeWildcardRank(int i10) {
    }

    public String getKey() {
        return new String(this.scanner.source);
    }

    public boolean hasModuleName() {
        return this.hasModuleName;
    }

    public boolean hasTypeName() {
        return this.hasTypeName;
    }

    public void malformedKey() {
        this.isMalformed = true;
    }

    public BindingKeyParser newParser() {
        return new BindingKeyParser(this);
    }

    public void parse() {
        parse(false);
    }

    public void parse(boolean z10) {
        if (!this.parsingPaused) {
            if (parseModule()) {
                return;
            }
            parseFullyQualifiedName();
            parseSecondaryType();
            if (z10) {
                this.parsingPaused = true;
                return;
            }
        }
        if (!hasTypeName()) {
            consumeKey();
            return;
        }
        consumeTopLevelType();
        parseInnerType();
        if (this.scanner.isAtParametersStart()) {
            this.scanner.skipParametersStart();
            if (this.scanner.isAtTypeParameterStart()) {
                parseGenericType();
                this.scanner.skipParametersEnd();
                parseInnerType();
            } else if (this.scanner.isAtTypeArgumentStart()) {
                parseParameterizedType(null, false);
            } else if (this.scanner.isAtRawTypeEnd()) {
                parseRawType();
            }
        } else {
            consumeNonGenericType();
        }
        consumeType();
        this.scanner.skipTypeEnd();
        if (this.scanner.isAtFieldOrMethodStart()) {
            int nextToken = this.scanner.nextToken();
            if (nextToken == 2) {
                parseField();
                if (this.scanner.isAtAnnotationStart()) {
                    parseAnnotation();
                    return;
                }
                return;
            }
            if (nextToken != 3) {
                malformedKey();
                return;
            }
            parseMethod();
            if (this.scanner.isAtLocalVariableStart()) {
                parseLocalVariable();
            } else if (this.scanner.isAtTypeVariableStart()) {
                parseTypeVariable();
            } else if (this.scanner.isAtAnnotationStart()) {
                parseAnnotation();
            }
        } else if (!this.isParsingThrownExceptions && this.scanner.isAtTypeVariableStart()) {
            parseTypeVariable();
        } else if (this.scanner.isAtWildcardStart()) {
            parseWildcard();
        } else if (this.scanner.isAtTypeWithCaptureStart()) {
            parseTypeWithCapture();
        } else if (this.scanner.isAtAnnotationStart()) {
            parseAnnotation();
        }
        consumeKey();
    }

    public BindingKeyParser(String str) {
        this.hasTypeName = true;
        this.isParsingThrownExceptions = false;
        this.scanner = new Scanner(str.toCharArray());
    }
}
