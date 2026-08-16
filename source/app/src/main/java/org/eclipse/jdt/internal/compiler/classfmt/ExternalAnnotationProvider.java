package org.eclipse.jdt.internal.compiler.classfmt;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.SignatureWrapper;

public class ExternalAnnotationProvider {
    public static final String ANNOTATION_FILE_EXTENSION = "eea";
    public static final String ANNOTATION_FILE_SUFFIX = ".eea";
    public static final String CLASS_PREFIX = "class ";
    public static final char NONNULL = '1';
    public static final char NO_ANNOTATION = '@';
    public static final char NULLABLE = '0';
    public static final String SUPER_PREFIX = "super ";
    private static final String TYPE_PARAMETER_PREFIX = " <";
    SingleMarkerAnnotation NONNULL_ANNOTATION;
    SingleMarkerAnnotation NULLABLE_ANNOTATION;
    private Map<String, String> fieldAnnotationSources;
    private Map<String, String> methodAnnotationSources;
    Map<String, String> supertypeAnnotationSources;
    private String typeName;
    String typeParametersAnnotationSource;

    public abstract class BasicAnnotationWalker implements ITypeAnnotationWalker {
        int currentTypeBound;
        LookupEnvironment environment;
        int pos;
        int prevTypeArgStart;
        char[] source;
        SignatureWrapper wrapper;

        public BasicAnnotationWalker(char[] cArr, int i10, LookupEnvironment lookupEnvironment) {
            this.source = cArr;
            this.pos = i10;
            this.environment = lookupEnvironment;
            ExternalAnnotationProvider.this.initAnnotations(lookupEnvironment);
        }

        @Override
        public IBinaryAnnotation[] getAnnotationsAtCursor(int i10, boolean z10) {
            char c10;
            int i11 = this.pos;
            if (i11 != -1) {
                char[] cArr = this.source;
                if (i11 < cArr.length - 2 && ((c10 = cArr[i11]) == '*' || c10 == '+' || c10 == '-' || c10 == 'L' || c10 == 'T' || c10 == '[')) {
                    char c11 = cArr[i11 + 1];
                    if (c11 == '0') {
                        return new IBinaryAnnotation[]{ExternalAnnotationProvider.this.NULLABLE_ANNOTATION};
                    }
                    if (c11 == '1') {
                        return new IBinaryAnnotation[]{ExternalAnnotationProvider.this.NONNULL_ANNOTATION};
                    }
                }
            }
            return ITypeAnnotationWalker.NO_ANNOTATIONS;
        }

        public int skipNullAnnotation(int i10) {
            char[] cArr = this.source;
            if (i10 >= cArr.length) {
                return i10;
            }
            char c10 = cArr[i10];
            return (c10 == '0' || c10 == '1') ? i10 + 1 : i10;
        }

        @Override
        public ITypeAnnotationWalker toNextArrayDimension() {
            char[] cArr = this.source;
            int i10 = this.pos;
            if (cArr[i10] != '[') {
                return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
            }
            return new MethodAnnotationWalker(this.source, skipNullAnnotation(i10 + 1), this.environment);
        }

        @Override
        public ITypeAnnotationWalker toNextNestedType() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toReceiver() {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }

        @Override
        public ITypeAnnotationWalker toSupertype(short s10, char[] cArr) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }

        @Override
        public ITypeAnnotationWalker toTypeArgument(int i10) {
            int skipNullAnnotation;
            if (i10 == 0) {
                int indexOf = CharOperation.indexOf('<', this.source, this.pos) + 1;
                this.prevTypeArgStart = indexOf;
                return new MethodAnnotationWalker(this.source, indexOf, this.environment);
            }
            int i11 = this.prevTypeArgStart;
            char c10 = this.source[i11];
            if (c10 != '*') {
                if (c10 == '+' || c10 == '-') {
                    i11 = skipNullAnnotation(i11 + 1);
                }
                skipNullAnnotation = wrapperWithStart(i11).computeEnd() + 1;
            } else {
                skipNullAnnotation = skipNullAnnotation(i11 + 1);
            }
            this.prevTypeArgStart = skipNullAnnotation;
            return new MethodAnnotationWalker(this.source, skipNullAnnotation, this.environment);
        }

        @Override
        public ITypeAnnotationWalker toTypeBound(short s10) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }

        @Override
        public ITypeAnnotationWalker toTypeParameter(boolean z10, int i10) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }

        @Override
        public ITypeAnnotationWalker toTypeParameterBounds(boolean z10, int i10) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }

        @Override
        public ITypeAnnotationWalker toWildcardBound() {
            char[] cArr = this.source;
            int i10 = this.pos;
            char c10 = cArr[i10];
            if (c10 != '+' && c10 != '-') {
                return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
            }
            return new MethodAnnotationWalker(this.source, skipNullAnnotation(i10 + 1), this.environment);
        }

        public SignatureWrapper wrapperWithStart(int i10) {
            if (this.wrapper == null) {
                this.wrapper = new SignatureWrapper(this.source);
            }
            SignatureWrapper signatureWrapper = this.wrapper;
            signatureWrapper.start = i10;
            signatureWrapper.bracket = -1;
            return signatureWrapper;
        }
    }

    public class DispatchingAnnotationWalker implements ITypeAnnotationWalker {
        private LookupEnvironment environment;
        private TypeParametersAnnotationWalker typeParametersWalker;

        public DispatchingAnnotationWalker(LookupEnvironment lookupEnvironment) {
            this.environment = lookupEnvironment;
        }

        @Override
        public IBinaryAnnotation[] getAnnotationsAtCursor(int i10, boolean z10) {
            return ITypeAnnotationWalker.NO_ANNOTATIONS;
        }

        @Override
        public ITypeAnnotationWalker toField() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toMethodParameter(short s10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toMethodReturn() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toNextArrayDimension() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toNextNestedType() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toReceiver() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toSupertype(short s10, char[] cArr) {
            String str;
            Map<String, String> map = ExternalAnnotationProvider.this.supertypeAnnotationSources;
            return (map == null || (str = map.get(String.valueOf(cArr))) == null) ? this : new SuperTypesAnnotationWalker(str.toCharArray(), this.environment);
        }

        @Override
        public ITypeAnnotationWalker toThrows(int i10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toTypeArgument(int i10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toTypeBound(short s10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toTypeParameter(boolean z10, int i10) {
            ExternalAnnotationProvider externalAnnotationProvider = ExternalAnnotationProvider.this;
            String str = externalAnnotationProvider.typeParametersAnnotationSource;
            if (str == null) {
                return this;
            }
            if (this.typeParametersWalker == null) {
                this.typeParametersWalker = new TypeParametersAnnotationWalker(str.toCharArray(), 0, 0, null, this.environment);
            }
            return this.typeParametersWalker.toTypeParameter(z10, i10);
        }

        @Override
        public ITypeAnnotationWalker toTypeParameterBounds(boolean z10, int i10) {
            TypeParametersAnnotationWalker typeParametersAnnotationWalker = this.typeParametersWalker;
            return typeParametersAnnotationWalker != null ? typeParametersAnnotationWalker.toTypeParameterBounds(z10, i10) : this;
        }

        @Override
        public ITypeAnnotationWalker toWildcardBound() {
            return this;
        }
    }

    public class FieldAnnotationWalker extends BasicAnnotationWalker {
        public FieldAnnotationWalker(char[] cArr, int i10, LookupEnvironment lookupEnvironment) {
            super(cArr, i10, lookupEnvironment);
        }

        @Override
        public ITypeAnnotationWalker toField() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toMethodParameter(short s10) {
            throw new UnsupportedOperationException("Field has no method parameter");
        }

        @Override
        public ITypeAnnotationWalker toMethodReturn() {
            throw new UnsupportedOperationException("Field has no method return");
        }

        @Override
        public ITypeAnnotationWalker toThrows(int i10) {
            throw new UnsupportedOperationException("Field has no throws");
        }
    }

    public interface IMethodAnnotationWalker extends ITypeAnnotationWalker {
        int getParameterCount();
    }

    public class MethodAnnotationWalker extends BasicAnnotationWalker implements IMethodAnnotationWalker {
        int prevParamStart;
        TypeParametersAnnotationWalker typeParametersWalker;

        public MethodAnnotationWalker(char[] cArr, int i10, LookupEnvironment lookupEnvironment) {
            super(cArr, i10, lookupEnvironment);
        }

        @Override
        public int getParameterCount() {
            int indexOf = CharOperation.indexOf('(', this.source) + 1;
            int i10 = 0;
            while (true) {
                char[] cArr = this.source;
                if (indexOf >= cArr.length || cArr[indexOf] == ')') {
                    break;
                }
                indexOf = typeEnd(indexOf) + 1;
                i10++;
            }
            return i10;
        }

        @Override
        public ITypeAnnotationWalker toField() {
            throw new UnsupportedOperationException("Methods have no fields");
        }

        @Override
        public ITypeAnnotationWalker toMethodParameter(short s10) {
            if (s10 == 0) {
                int indexOf = CharOperation.indexOf('(', this.source) + 1;
                this.prevParamStart = indexOf;
                this.pos = indexOf;
                return this;
            }
            int typeEnd = typeEnd(this.prevParamStart) + 1;
            this.prevParamStart = typeEnd;
            this.pos = typeEnd;
            return this;
        }

        @Override
        public ITypeAnnotationWalker toMethodReturn() {
            int indexOf = CharOperation.indexOf(')', this.source);
            if (indexOf == -1) {
                return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
            }
            this.pos = indexOf + 1;
            return this;
        }

        @Override
        public ITypeAnnotationWalker toThrows(int i10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toTypeParameter(boolean z10, int i10) {
            char[] cArr = this.source;
            if (cArr[0] != '<') {
                return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
            }
            TypeParametersAnnotationWalker typeParametersAnnotationWalker = this.typeParametersWalker;
            if (typeParametersAnnotationWalker != null) {
                return typeParametersAnnotationWalker.toTypeParameter(z10, i10);
            }
            TypeParametersAnnotationWalker typeParametersAnnotationWalker2 = new TypeParametersAnnotationWalker(cArr, this.pos + 1, i10, null, this.environment);
            this.typeParametersWalker = typeParametersAnnotationWalker2;
            return typeParametersAnnotationWalker2;
        }

        @Override
        public ITypeAnnotationWalker toTypeParameterBounds(boolean z10, int i10) {
            TypeParametersAnnotationWalker typeParametersAnnotationWalker = this.typeParametersWalker;
            return typeParametersAnnotationWalker != null ? typeParametersAnnotationWalker.toTypeParameterBounds(z10, i10) : ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }

        public int typeEnd(int i10) {
            while (this.source[i10] == '[') {
                i10 = skipNullAnnotation(i10 + 1);
            }
            SignatureWrapper wrapperWithStart = wrapperWithStart(i10);
            return wrapperWithStart.skipAngleContents(wrapperWithStart.computeEnd());
        }
    }

    public abstract class SingleMarkerAnnotation implements IBinaryAnnotation {
        public SingleMarkerAnnotation() {
        }

        public char[] getBinaryTypeName(char[][] cArr) {
            return CharOperation.concat('L', CharOperation.concatWith(cArr, '/'), ';');
        }

        @Override
        public IBinaryElementValuePair[] getElementValuePairs() {
            return ElementValuePairInfo.NoMembers;
        }

        @Override
        public boolean isExternalAnnotation() {
            return true;
        }
    }

    public class SuperTypesAnnotationWalker extends BasicAnnotationWalker {
        public SuperTypesAnnotationWalker(char[] cArr, LookupEnvironment lookupEnvironment) {
            super(cArr, 0, lookupEnvironment);
        }

        @Override
        public ITypeAnnotationWalker toField() {
            throw new UnsupportedOperationException("Supertype has no field annotations");
        }

        @Override
        public ITypeAnnotationWalker toMethodParameter(short s10) {
            throw new UnsupportedOperationException("Supertype has no method parameter");
        }

        @Override
        public ITypeAnnotationWalker toMethodReturn() {
            throw new UnsupportedOperationException("Supertype has no method return");
        }

        @Override
        public ITypeAnnotationWalker toThrows(int i10) {
            throw new UnsupportedOperationException("Supertype has no throws");
        }
    }

    public class TypeParametersAnnotationWalker extends BasicAnnotationWalker {
        int currentRank;
        int[] rankStarts;

        /* JADX WARN: Removed duplicated region for block: B:52:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x007b A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public TypeParametersAnnotationWalker(char[] cArr, int i10, int i11, int[] iArr, LookupEnvironment lookupEnvironment) {
            super(cArr, i10, lookupEnvironment);
            int i12;
            char c10;
            int i13;
            this.currentRank = i11;
            if (iArr != null) {
                this.rankStarts = iArr;
                return;
            }
            int length = cArr.length;
            int[] iArr2 = new int[length];
            int i14 = 0;
            int i15 = 0;
            boolean z10 = true;
            while (i10 < length) {
                char[] cArr2 = this.source;
                switch (cArr2[i10]) {
                    case ':':
                        z10 = i14 == 0 ? true : z10;
                        do {
                            i10++;
                            if (i10 < length) {
                            }
                            if (i10 < length && this.source[i10] == 'L') {
                                i12 = i14;
                                while (i10 < length && (i12 != i14 || this.source[i10] != ';')) {
                                    c10 = this.source[i10];
                                    i12 = c10 == '<' ? i12 + 1 : i12;
                                    if (c10 != '>') {
                                        i12--;
                                    }
                                    i10++;
                                }
                            }
                            i10--;
                            break;
                        } while (this.source[i10] == '[');
                        if (i10 < length) {
                            i12 = i14;
                            while (i10 < length) {
                                c10 = this.source[i10];
                                if (c10 == '<') {
                                }
                                if (c10 != '>') {
                                }
                                i10++;
                            }
                        }
                        i10--;
                    case ';':
                        if (i14 == 0 && (i13 = i10 + 1) < length && cArr2[i13] != ':') {
                            z10 = true;
                            break;
                        }
                        break;
                    case '<':
                        i14++;
                        break;
                    case '=':
                    default:
                        if (!z10) {
                            break;
                        } else {
                            iArr2[i15] = i10;
                            i15++;
                            z10 = false;
                            break;
                        }
                    case '>':
                        i14--;
                        if (i14 >= 0) {
                            break;
                        } else {
                            break;
                        }
                }
                i10++;
            }
            int[] iArr3 = new int[i15];
            this.rankStarts = iArr3;
            System.arraycopy(iArr2, 0, iArr3, 0, i15);
        }

        @Override
        public IBinaryAnnotation[] getAnnotationsAtCursor(int i10, boolean z10) {
            int i11 = this.pos;
            if (i11 != -1) {
                char[] cArr = this.source;
                if (i11 < cArr.length - 1) {
                    char c10 = cArr[i11];
                    if (c10 == '0') {
                        return new IBinaryAnnotation[]{ExternalAnnotationProvider.this.NULLABLE_ANNOTATION};
                    }
                    if (c10 == '1') {
                        return new IBinaryAnnotation[]{ExternalAnnotationProvider.this.NONNULL_ANNOTATION};
                    }
                }
            }
            return super.getAnnotationsAtCursor(i10, z10);
        }

        @Override
        public ITypeAnnotationWalker toField() {
            throw new UnsupportedOperationException("Cannot navigate to fields");
        }

        @Override
        public ITypeAnnotationWalker toMethodParameter(short s10) {
            throw new UnsupportedOperationException("Cannot navigate to method parameter");
        }

        @Override
        public ITypeAnnotationWalker toMethodReturn() {
            throw new UnsupportedOperationException("Cannot navigate to method return");
        }

        @Override
        public ITypeAnnotationWalker toNextArrayDimension() {
            return super.toNextArrayDimension();
        }

        @Override
        public ITypeAnnotationWalker toNextNestedType() {
            return super.toNextNestedType();
        }

        @Override
        public ITypeAnnotationWalker toReceiver() {
            return super.toReceiver();
        }

        @Override
        public ITypeAnnotationWalker toSupertype(short s10, char[] cArr) {
            return super.toSupertype(s10, cArr);
        }

        @Override
        public ITypeAnnotationWalker toThrows(int i10) {
            throw new UnsupportedOperationException("Cannot navigate to throws");
        }

        @Override
        public ITypeAnnotationWalker toTypeArgument(int i10) {
            return super.toTypeArgument(i10);
        }

        @Override
        public ITypeAnnotationWalker toTypeBound(short s10) {
            int i10 = this.pos;
            int i11 = this.currentTypeBound;
            while (true) {
                int indexOf = CharOperation.indexOf(':', this.source, i10);
                if (indexOf != -1) {
                    i10 = indexOf + 1;
                }
                i11++;
                if (i11 > s10) {
                    this.pos = i10;
                    this.currentTypeBound = s10;
                    return this;
                }
                i10 = wrapperWithStart(i10).computeEnd() + 1;
            }
        }

        @Override
        public ITypeAnnotationWalker toTypeParameter(boolean z10, int i10) {
            if (i10 == this.currentRank) {
                return this;
            }
            int[] iArr = this.rankStarts;
            return i10 < iArr.length ? new TypeParametersAnnotationWalker(this.source, iArr[i10], i10, iArr, this.environment) : ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }

        @Override
        public ITypeAnnotationWalker toTypeParameterBounds(boolean z10, int i10) {
            ExternalAnnotationProvider externalAnnotationProvider = ExternalAnnotationProvider.this;
            char[] cArr = this.source;
            int[] iArr = this.rankStarts;
            return new TypeParametersAnnotationWalker(cArr, iArr[i10], i10, iArr, this.environment);
        }

        @Override
        public ITypeAnnotationWalker toWildcardBound() {
            return super.toWildcardBound();
        }
    }

    public ExternalAnnotationProvider(InputStream inputStream, String str) throws IOException {
        this.typeName = str;
        initialize(inputStream);
    }

    public static void assertClassHeader(String str, String str2) throws IOException {
        if (str == null || !str.startsWith(CLASS_PREFIX)) {
            throw new IOException("missing class header in annotation file for " + str2);
        }
        String substring = str.substring(6);
        if (trimTail(substring).equals(str2)) {
            return;
        }
        throw new IOException("mismatching class name in annotation file, expected " + str2 + ", but header said " + substring);
    }

    public static String extractSignature(String str) {
        if (str == null || str.isEmpty() || str.charAt(0) != ' ') {
            return null;
        }
        return trimTail(str.substring(1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v6 */
    private void initialize(InputStream inputStream) throws IOException {
        String str;
        int i10;
        String str2;
        String readLine;
        ?? r12 = 0;
        r12 = 0;
        try {
            LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(inputStream));
            try {
                assertClassHeader(lineNumberReader.readLine(), this.typeName);
                String readLine2 = lineNumberReader.readLine();
                if (readLine2 == null) {
                    lineNumberReader.close();
                    return;
                }
                if (readLine2.startsWith(TYPE_PARAMETER_PREFIX)) {
                    readLine2 = lineNumberReader.readLine();
                    if (readLine2 == null) {
                        lineNumberReader.close();
                        return;
                    } else if (readLine2.startsWith(TYPE_PARAMETER_PREFIX)) {
                        this.typeParametersAnnotationSource = readLine2.substring(2);
                        readLine2 = lineNumberReader.readLine();
                        if (readLine2 == null) {
                            lineNumberReader.close();
                            return;
                        }
                    }
                }
                while (true) {
                    String trim = readLine2.trim();
                    if (!trim.isEmpty()) {
                        boolean startsWith = trim.startsWith(SUPER_PREFIX);
                        if (startsWith) {
                            trim = trim.substring(6);
                        }
                        try {
                            String readLine3 = lineNumberReader.readLine();
                            if (readLine3 == null || readLine3.isEmpty() || readLine3.charAt(0) != ' ') {
                                i10 = lineNumberReader.getLineNumber();
                                str = null;
                            } else {
                                str = readLine3.substring(1);
                                i10 = -1;
                            }
                            try {
                                readLine = lineNumberReader.readLine();
                            } catch (Exception unused) {
                                str2 = null;
                                if (str == null) {
                                    break;
                                } else {
                                    break;
                                }
                                if (i10 == -1) {
                                    i10 = lineNumberReader.getLineNumber();
                                }
                                StringBuilder sb2 = new StringBuilder("Illegal format in annotation file for ");
                                sb2.append(this.typeName);
                                r12 = " at line ";
                                sb2.append(" at line ");
                                sb2.append(i10);
                                throw new IOException(sb2.toString());
                            }
                        } catch (Exception unused2) {
                            str = null;
                            i10 = -1;
                        }
                        if (readLine != null && !readLine.isEmpty()) {
                            if (readLine.charAt(0) != ' ') {
                                readLine2 = readLine;
                                if (readLine2 != null && (readLine2 = lineNumberReader.readLine()) == null) {
                                    return;
                                }
                            } else {
                                str2 = readLine.substring(1);
                                if (str == null || str2 == null) {
                                    break;
                                }
                                String trimTail = trimTail(str2);
                                if (startsWith) {
                                    if (this.supertypeAnnotationSources == null) {
                                        this.supertypeAnnotationSources = new HashMap();
                                    }
                                    this.supertypeAnnotationSources.put(String.valueOf('L') + trim + str + ';', trimTail);
                                } else if (str.contains("(")) {
                                    if (this.methodAnnotationSources == null) {
                                        this.methodAnnotationSources = new HashMap();
                                    }
                                    this.methodAnnotationSources.put(String.valueOf(trim) + str, trimTail);
                                } else {
                                    if (this.fieldAnnotationSources == null) {
                                        this.fieldAnnotationSources = new HashMap();
                                    }
                                    this.fieldAnnotationSources.put(String.valueOf(trim) + ':' + str, trimTail);
                                }
                            }
                        }
                    }
                    readLine2 = null;
                    if (readLine2 != null) {
                    }
                }
            } finally {
                lineNumberReader.close();
            }
        } finally {
        }
    }

    public static String trimTail(String str) {
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            indexOf = str.indexOf(9);
        }
        return indexOf != -1 ? str.substring(0, indexOf) : str;
    }

    public ITypeAnnotationWalker forField(char[] cArr, char[] cArr2, LookupEnvironment lookupEnvironment) {
        String str;
        Map<String, String> map = this.fieldAnnotationSources;
        return (map == null || (str = map.get(String.valueOf(CharOperation.concat(cArr, cArr2, ':')))) == null) ? ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER : new FieldAnnotationWalker(str.toCharArray(), 0, lookupEnvironment);
    }

    public ITypeAnnotationWalker forMethod(char[] cArr, char[] cArr2, LookupEnvironment lookupEnvironment) {
        String str;
        Map<String, String> map = this.methodAnnotationSources;
        return (map == null || (str = map.get(String.valueOf(CharOperation.concat(cArr, cArr2)))) == null) ? ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER : new MethodAnnotationWalker(str.toCharArray(), 0, lookupEnvironment);
    }

    public ITypeAnnotationWalker forTypeHeader(LookupEnvironment lookupEnvironment) {
        return (this.typeParametersAnnotationSource == null && this.supertypeAnnotationSources == null) ? ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER : new DispatchingAnnotationWalker(lookupEnvironment);
    }

    public void initAnnotations(final LookupEnvironment lookupEnvironment) {
        if (this.NULLABLE_ANNOTATION == null) {
            this.NULLABLE_ANNOTATION = new SingleMarkerAnnotation(this) {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override
                public char[] getTypeName() {
                    return getBinaryTypeName(lookupEnvironment.getNullableAnnotationName());
                }
            };
        }
        if (this.NONNULL_ANNOTATION == null) {
            this.NONNULL_ANNOTATION = new SingleMarkerAnnotation(this) {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override
                public char[] getTypeName() {
                    return getBinaryTypeName(lookupEnvironment.getNonNullAnnotationName());
                }
            };
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("External Annotations for ");
        sb2.append(this.typeName);
        sb2.append('\n');
        sb2.append("Methods:\n");
        Map<String, String> map = this.methodAnnotationSources;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb2.append('\t');
                sb2.append(entry.getKey());
                sb2.append('\n');
            }
        }
        return sb2.toString();
    }
}
