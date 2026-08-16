package org.eclipse.jdt.internal.core;

import com.bumptech.glide.load.engine.GlideException;
import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.JarURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.jar.JarFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;

public abstract class JavaElement extends PlatformObject implements IJavaElement {
    public static final char JEM_ANNOTATION = '}';
    public static final char JEM_CLASSFILE = '(';
    public static final char JEM_COMPILATIONUNIT = '{';
    public static final char JEM_COUNT = '!';
    public static final char JEM_DELIMITER_ESCAPE = '=';
    public static final char JEM_ESCAPE = '\\';
    public static final char JEM_FIELD = '^';
    public static final char JEM_IMPORTDECLARATION = '#';
    public static final char JEM_INITIALIZER = '|';
    public static final char JEM_JAVAPROJECT = '=';
    public static final char JEM_LAMBDA_EXPRESSION = ')';
    public static final char JEM_LAMBDA_METHOD = '&';
    public static final char JEM_LOCALVARIABLE = '@';
    public static final char JEM_METHOD = '~';
    public static final char JEM_MODULAR_CLASSFILE = '\'';
    public static final char JEM_MODULE = '`';
    public static final char JEM_PACKAGEDECLARATION = '%';
    public static final char JEM_PACKAGEFRAGMENT = '<';
    public static final char JEM_PACKAGEFRAGMENTROOT = '/';
    public static final char JEM_STRING = '\"';
    public static final char JEM_TYPE = '[';
    public static final char JEM_TYPE_PARAMETER = ']';
    protected JavaElement parent;
    private static final byte[] CLOSING_DOUBLE_QUOTE = {34};
    private static final byte[] CHARSET = {Opcodes.OPC_dadd, Opcodes.OPC_imul, Opcodes.OPC_ladd, Opcodes.OPC_frem, Opcodes.OPC_drem, 101, Opcodes.OPC_ineg, 61};
    private static final byte[] CHARSET_HTML5 = {Opcodes.OPC_dadd, Opcodes.OPC_imul, Opcodes.OPC_ladd, Opcodes.OPC_frem, Opcodes.OPC_drem, 101, Opcodes.OPC_ineg, 61, 34};
    private static final byte[] META_START = {60, Opcodes.OPC_ldiv, 101, Opcodes.OPC_ineg, Opcodes.OPC_ladd};
    private static final byte[] META_END = {34, 62};
    protected static final String[] NO_STRINGS = new String[0];
    protected static final JavaElement[] NO_ELEMENTS = new JavaElement[0];
    protected static final Object NO_INFO = new Object();
    private static Set<String> invalidURLs = null;
    private static Set<String> validURLs = null;

    public JavaElement(JavaElement javaElement) throws IllegalArgumentException {
        this.parent = javaElement;
    }

    public static URL getLibraryJavadocLocation(IClasspathEntry iClasspathEntry) throws JavaModelException {
        int entryKind = iClasspathEntry.getEntryKind();
        if (entryKind != 1 && entryKind != 4) {
            throw new IllegalArgumentException("Entry must be of kind CPE_LIBRARY or CPE_VARIABLE");
        }
        for (IClasspathAttribute iClasspathAttribute : iClasspathEntry.getExtraAttributes()) {
            if (IClasspathAttribute.JAVADOC_LOCATION_ATTRIBUTE_NAME.equals(iClasspathAttribute.getName())) {
                String value = iClasspathAttribute.getValue();
                try {
                    return new URL(value);
                } catch (MalformedURLException unused) {
                    throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1008, value));
                }
            }
        }
        return null;
    }

    public void appendEscapedDelimiter(StringBuffer stringBuffer, char c10) {
        stringBuffer.append('=');
        stringBuffer.append(c10);
    }

    public void close() throws JavaModelException {
        JavaModelManager.getJavaModelManager().removeInfoAndChildren(this);
    }

    public abstract void closing(Object obj) throws JavaModelException;

    public abstract Object createElementInfo();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (this.parent == null) {
            return super.equals(obj);
        }
        JavaElement javaElement = (JavaElement) obj;
        return getElementName().equals(javaElement.getElementName()) && this.parent.equals(javaElement.parent);
    }

    public void escapeMementoName(StringBuffer stringBuffer, String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt != '!' && charAt != '#' && charAt != '%' && charAt != '/' && charAt != '@' && charAt != '\'' && charAt != '(' && charAt != '<' && charAt != '=') {
                switch (charAt) {
                    case '[':
                    case '\\':
                    case ']':
                    case '^':
                        break;
                    default:
                        switch (charAt) {
                            case '{':
                            case '|':
                            case '}':
                            case '~':
                                break;
                            default:
                                continue;
                        }
                }
            }
            stringBuffer.append(JEM_ESCAPE);
            stringBuffer.append(charAt);
        }
    }

    public boolean exists() {
        try {
            getElementInfo();
            return true;
        } catch (JavaModelException unused) {
            return false;
        }
    }

    public ASTNode findNode(org.eclipse.jdt.core.dom.CompilationUnit compilationUnit) {
        return null;
    }

    public abstract void generateInfos(Object obj, HashMap hashMap, IProgressMonitor iProgressMonitor) throws JavaModelException;

    @Override
    public IJavaElement getAncestor(int i10) {
        for (IJavaElement iJavaElement = this; iJavaElement != null; iJavaElement = iJavaElement.getParent()) {
            if (iJavaElement.getElementType() == i10) {
                return iJavaElement;
            }
        }
        return null;
    }

    public String getAttachedJavadoc(IProgressMonitor iProgressMonitor) throws JavaModelException {
        return null;
    }

    public IJavaElement[] getChildren() throws JavaModelException {
        Object elementInfo = getElementInfo();
        return elementInfo instanceof JavaElementInfo ? ((JavaElementInfo) elementInfo).getChildren() : NO_ELEMENTS;
    }

    public ArrayList getChildrenOfType(int i10) throws JavaModelException {
        IJavaElement[] children = getChildren();
        ArrayList arrayList = new ArrayList(children.length);
        for (IJavaElement iJavaElement : children) {
            JavaElement javaElement = (JavaElement) iJavaElement;
            if (javaElement.getElementType() == i10) {
                arrayList.add(javaElement);
            }
        }
        return arrayList;
    }

    public IClassFile getClassFile() {
        return null;
    }

    public ICompilationUnit getCompilationUnit() {
        return null;
    }

    public Object getElementInfo() throws JavaModelException {
        return getElementInfo(null);
    }

    public String getElementName() {
        return "";
    }

    public abstract IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner);

    public IJavaElement getHandleFromMemento(MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        return !mementoTokenizer.hasMoreTokens() ? this : getHandleFromMemento(mementoTokenizer.nextToken(), mementoTokenizer, workingCopyOwner);
    }

    @Override
    public String getHandleIdentifier() {
        return getHandleMemento();
    }

    public String getHandleMemento() {
        StringBuffer stringBuffer = new StringBuffer();
        getHandleMemento(stringBuffer);
        return stringBuffer.toString();
    }

    public abstract char getHandleMementoDelimiter();

    public int getIndexOf(byte[] bArr, byte[] bArr2, int i10, int i11) {
        if (bArr == null || bArr2 == null) {
            return -1;
        }
        int length = bArr2.length;
        if (i11 == -1 || i11 >= bArr.length) {
            i11 = bArr.length;
        }
        if (i11 < length) {
            return -1;
        }
        int i12 = (i11 - length) + 1;
        while (i10 < i12) {
            if (isSameCharacter(bArr[i10], bArr2[0])) {
                for (int i13 = 1; i13 < length; i13++) {
                    if (!isSameCharacter(bArr[i10 + i13], bArr2[i13])) {
                        break;
                    }
                }
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public IJavaModel getJavaModel() {
        IJavaElement iJavaElement = this;
        while (!(iJavaElement instanceof IJavaModel)) {
            iJavaElement = iJavaElement.getParent();
            if (iJavaElement == null) {
                return null;
            }
        }
        return (IJavaModel) iJavaElement;
    }

    @Override
    public IJavaProject getJavaProject() {
        IJavaElement iJavaElement = this;
        while (!(iJavaElement instanceof IJavaProject)) {
            iJavaElement = iJavaElement.getParent();
            if (iJavaElement == null) {
                return null;
            }
        }
        return (IJavaProject) iJavaElement;
    }

    public URL getJavadocBaseLocation() throws JavaModelException {
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) getAncestor(3);
        if (iPackageFragmentRoot == null || iPackageFragmentRoot.getKind() != 2) {
            return null;
        }
        try {
            URL libraryJavadocLocation = getLibraryJavadocLocation(iPackageFragmentRoot.getResolvedClasspathEntry());
            if (libraryJavadocLocation != null) {
                return libraryJavadocLocation;
            }
        } catch (JavaModelException unused) {
        }
        IClasspathEntry rawClasspathEntry = iPackageFragmentRoot.getRawClasspathEntry();
        int entryKind = rawClasspathEntry.getEntryKind();
        if (entryKind == 1 || entryKind == 4) {
            return getLibraryJavadocLocation(rawClasspathEntry);
        }
        return null;
    }

    @Override
    public IOpenable getOpenable() {
        return getOpenableParent();
    }

    public IOpenable getOpenableParent() {
        return (IOpenable) this.parent;
    }

    @Override
    public IJavaElement getParent() {
        return this.parent;
    }

    public IJavaElement getPrimaryElement(boolean z10) {
        return this;
    }

    @Override
    public IResource getResource() {
        return resource();
    }

    @Override
    public ISchedulingRule getSchedulingRule() {
        IResource resource = resource();
        return resource == null ? new ISchedulingRule(getPath()) {
            public IPath path;

            {
                this.path = r2;
            }

            public boolean contains(ISchedulingRule iSchedulingRule) {
                if (iSchedulingRule instanceof C1NoResourceSchedulingRule) {
                    return this.path.isPrefixOf(((C1NoResourceSchedulingRule) iSchedulingRule).path);
                }
                return false;
            }

            public boolean isConflicting(ISchedulingRule iSchedulingRule) {
                if (!(iSchedulingRule instanceof C1NoResourceSchedulingRule)) {
                    return false;
                }
                IPath iPath = ((C1NoResourceSchedulingRule) iSchedulingRule).path;
                return this.path.isPrefixOf(iPath) || iPath.isPrefixOf(this.path);
            }
        } : resource;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
    
        return r2.getSourceElementAt(r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public IJavaElement getSourceElementAt(int i10) throws JavaModelException {
        if (this instanceof ISourceReference) {
            IJavaElement[] children = getChildren();
            int length = children.length - 1;
            while (length >= 0) {
                IJavaElement iJavaElement = children[length];
                if (iJavaElement instanceof SourceRefElement) {
                    SourceRefElement sourceRefElement = (SourceRefElement) iJavaElement;
                    ISourceRange sourceRange = sourceRefElement.getSourceRange();
                    int offset = sourceRange.getOffset();
                    int length2 = sourceRange.getLength() + offset;
                    if (offset <= i10 && i10 <= length2) {
                        if (!(sourceRefElement instanceof IField)) {
                            return sourceRefElement instanceof IParent ? sourceRefElement.getSourceElementAt(i10) : sourceRefElement;
                        }
                        SourceRefElement sourceRefElement2 = null;
                        while (true) {
                            ISourceRange nameRange = ((IField) sourceRefElement).getNameRange();
                            if (i10 > nameRange.getOffset() + nameRange.getLength()) {
                                return sourceRefElement2 == null ? sourceRefElement.getSourceElementAt(i10) : sourceRefElement2.getSourceElementAt(i10);
                            }
                            length--;
                            SourceRefElement sourceRefElement3 = length >= 0 ? (SourceRefElement) children[length] : null;
                            if (sourceRefElement3 == null || sourceRefElement3.getSourceRange().getOffset() != offset) {
                                break;
                            }
                            SourceRefElement sourceRefElement4 = sourceRefElement3;
                            sourceRefElement2 = sourceRefElement;
                            sourceRefElement = sourceRefElement4;
                        }
                    }
                }
                length--;
            }
        } else {
            Assert.isTrue(false);
        }
        return this;
    }

    public SourceMapper getSourceMapper() {
        return ((JavaElement) getParent()).getSourceMapper();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0009, code lost:
    
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0073, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0074, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x007d, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x007a, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x006a, code lost:
    
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0070, code lost:
    
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x006d, code lost:
    
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0067, code lost:
    
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0063, code lost:
    
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0064, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0057, code lost:
    
        if ((r3 instanceof java.net.JarURLConnection) == false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0059, code lost:
    
        r13 = (java.net.JarURLConnection) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x005c, code lost:
    
        r3.setUseCaches(false);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x014b A[Catch: all -> 0x00c1, TRY_ENTER, TryCatch #11 {all -> 0x00c1, blocks: (B:17:0x0089, B:19:0x0097, B:21:0x00a0, B:23:0x00a8, B:26:0x00ae, B:28:0x00b6, B:30:0x00be, B:32:0x00de, B:34:0x00da, B:71:0x00ef, B:38:0x00ff, B:50:0x0111, B:151:0x0134, B:164:0x014b, B:165:0x0150), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0175 A[Catch: IOException | IllegalStateException -> 0x017a, IOException | IllegalStateException -> 0x017a, TRY_ENTER, TRY_LEAVE, TryCatch #6 {IOException | IllegalStateException -> 0x017a, blocks: (B:64:0x0128, B:65:0x012c, B:81:0x0175, B:81:0x0175), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0170 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.net.JarURLConnection] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.net.JarURLConnection] */
    /* JADX WARN: Type inference failed for: r13v39 */
    /* JADX WARN: Type inference failed for: r13v40 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getURLContents(URL url, String str) throws JavaModelException {
        ?? r13;
        JarURLConnection jarURLConnection;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        FileNotFoundException e10;
        ?? r02;
        JarFile jarFile;
        String contentEncoding;
        byte[] inputStreamAsByteArray;
        int indexOf;
        int indexOf2;
        int length;
        String headerField;
        AutoCloseable autoCloseable = null;
        ?? r22 = 0;
        URLConnection uRLConnection = null;
        String str2 = str;
        while (true) {
            try {
                try {
                    try {
                        if (r22 >= 5) {
                            break;
                        }
                        try {
                            uRLConnection = new URL(str2).openConnection();
                            uRLConnection.setConnectTimeout(10000);
                            uRLConnection.setReadTimeout(10000);
                            if (!(uRLConnection instanceof HttpURLConnection)) {
                                break;
                            }
                            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
                            if (httpURLConnection.getResponseCode() != 301 || (headerField = httpURLConnection.getHeaderField("location")) == null) {
                                break;
                            }
                            r22++;
                            str2 = headerField;
                        } catch (FileNotFoundException e11) {
                            e10 = e11;
                            r02 = null;
                            r22 = 0;
                            try {
                                validateAndCache(url, e10);
                                if (r22 != 0) {
                                }
                                if (r02 != null) {
                                }
                                return null;
                            } catch (Throwable th2) {
                                th = th2;
                                str2 = r02;
                                autoCloseable = r22;
                                r13 = str2;
                                if (autoCloseable != null) {
                                    try {
                                        autoCloseable.close();
                                    } catch (IOException unused) {
                                    }
                                }
                                if (r13 != 0) {
                                    throw th;
                                }
                                try {
                                    r13.getJarFile().close();
                                    throw th;
                                } catch (IOException | IllegalStateException unused2) {
                                    throw th;
                                }
                            }
                        } catch (SocketException e12) {
                            e = e12;
                            throw new JavaModelException(e, 1008);
                        } catch (IOException e13) {
                            e = e13;
                            throw new JavaModelException(e, IJavaModelStatusConstants.IO_EXCEPTION);
                        } catch (IllegalArgumentException unused3) {
                            jarURLConnection = null;
                            bufferedInputStream2 = null;
                            if (bufferedInputStream2 != null) {
                            }
                            if (jarURLConnection != null) {
                            }
                            return null;
                        } catch (NullPointerException unused4) {
                            jarURLConnection = null;
                            bufferedInputStream2 = null;
                            if (bufferedInputStream2 != null) {
                            }
                            if (jarURLConnection != null) {
                            }
                            return null;
                        } catch (MalformedURLException unused5) {
                            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1008, this));
                        } catch (ProtocolException e14) {
                            e = e14;
                            throw new JavaModelException(e, 1008);
                        } catch (SocketTimeoutException unused6) {
                            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1012, this));
                        } catch (UnknownHostException e15) {
                            e = e15;
                            throw new JavaModelException(e, 1008);
                        } catch (Exception e16) {
                            e = e16;
                            jarURLConnection = null;
                            bufferedInputStream = null;
                            if (!(e.getCause() instanceof IllegalArgumentException)) {
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            r13 = 0;
                            if (autoCloseable != null) {
                            }
                            if (r13 != 0) {
                            }
                        }
                    } catch (IOException | IllegalStateException unused7) {
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
                r13 = str2;
            }
        }
        bufferedInputStream2 = new BufferedInputStream(uRLConnection.getInputStream());
        try {
            contentEncoding = uRLConnection.getContentEncoding();
            inputStreamAsByteArray = Util.getInputStreamAsByteArray(bufferedInputStream2, uRLConnection.getContentLength());
            if (contentEncoding == null && (indexOf = getIndexOf(inputStreamAsByteArray, META_START, 0, -1)) != -1 && (indexOf2 = getIndexOf(inputStreamAsByteArray, META_END, indexOf, -1)) != -1) {
                int i10 = indexOf2 + 1;
                if (i10 <= inputStreamAsByteArray.length) {
                    indexOf2 = i10;
                }
                byte[] bArr = CHARSET_HTML5;
                int indexOf3 = getIndexOf(inputStreamAsByteArray, bArr, indexOf, indexOf2);
                if (indexOf3 == -1) {
                    byte[] bArr2 = CHARSET;
                    length = getIndexOf(inputStreamAsByteArray, bArr2, indexOf, indexOf2);
                    if (length != -1) {
                        length += bArr2.length;
                    }
                } else {
                    length = bArr.length + indexOf3;
                }
                if (length != -1) {
                    contentEncoding = new String(inputStreamAsByteArray, length, getIndexOf(inputStreamAsByteArray, CLOSING_DOUBLE_QUOTE, length, indexOf2) - length, "UTF-8");
                }
            }
            if (contentEncoding == null) {
                try {
                    contentEncoding = getJavaProject().getProject().getDefaultCharset();
                } catch (CoreException unused8) {
                }
            }
        } catch (FileNotFoundException e17) {
            e = e17;
            BufferedInputStream bufferedInputStream3 = bufferedInputStream2;
            FileNotFoundException fileNotFoundException = e;
            r02 = jarURLConnection;
            e10 = fileNotFoundException;
            r22 = bufferedInputStream3;
            validateAndCache(url, e10);
            if (r22 != 0) {
                try {
                    r22.close();
                } catch (IOException unused9) {
                }
            }
            if (r02 != null) {
                jarFile = r02.getJarFile();
                jarFile.close();
            }
            return null;
        } catch (IllegalArgumentException unused10) {
            if (bufferedInputStream2 != null) {
                try {
                    bufferedInputStream2.close();
                } catch (IOException unused11) {
                }
            }
            if (jarURLConnection != null) {
                try {
                    jarURLConnection.getJarFile().close();
                } catch (IOException | IllegalStateException unused12) {
                }
            }
            return null;
        } catch (ProtocolException e18) {
            e = e18;
            throw new JavaModelException(e, 1008);
        } catch (IOException e19) {
            e = e19;
            throw new JavaModelException(e, IJavaModelStatusConstants.IO_EXCEPTION);
        } catch (NullPointerException unused13) {
            if (bufferedInputStream2 != null) {
                try {
                    bufferedInputStream2.close();
                } catch (IOException unused14) {
                }
            }
            if (jarURLConnection != null) {
                try {
                    jarURLConnection.getJarFile().close();
                } catch (IOException | IllegalStateException unused15) {
                }
            }
            return null;
        } catch (MalformedURLException unused16) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1008, this));
        } catch (SocketException e20) {
            e = e20;
            throw new JavaModelException(e, 1008);
        } catch (SocketTimeoutException unused17) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(1012, this));
        } catch (UnknownHostException e21) {
            e = e21;
            throw new JavaModelException(e, 1008);
        } catch (Exception e22) {
            e = e22;
            bufferedInputStream = bufferedInputStream2;
            if (!(e.getCause() instanceof IllegalArgumentException)) {
                throw new JavaModelException(e, 1008);
            }
            if (bufferedInputStream != null) {
                try {
                    bufferedInputStream.close();
                } catch (IOException unused18) {
                }
            }
            if (jarURLConnection != null) {
                try {
                    jarURLConnection.getJarFile().close();
                } catch (IOException | IllegalStateException unused19) {
                }
            }
            return null;
        }
        if (inputStreamAsByteArray == null) {
            try {
                bufferedInputStream2.close();
            } catch (IOException unused20) {
            }
            if (jarURLConnection != null) {
                jarFile = jarURLConnection.getJarFile();
                jarFile.close();
            }
            return null;
        }
        if (contentEncoding != null) {
            String str3 = new String(inputStreamAsByteArray, contentEncoding);
            try {
                bufferedInputStream2.close();
            } catch (IOException unused21) {
            }
            if (jarURLConnection != null) {
                try {
                    jarURLConnection.getJarFile().close();
                } catch (IOException | IllegalStateException unused22) {
                }
            }
            return str3;
        }
        String str4 = new String(inputStreamAsByteArray);
        try {
            bufferedInputStream2.close();
        } catch (IOException unused23) {
        }
        if (jarURLConnection != null) {
            try {
                jarURLConnection.getJarFile().close();
            } catch (IOException | IllegalStateException unused24) {
            }
        }
        return str4;
    }

    public boolean hasChildren() throws JavaModelException {
        Object info = JavaModelManager.getJavaModelManager().getInfo(this);
        return !(info instanceof JavaElementInfo) || ((JavaElementInfo) info).getChildren().length > 0;
    }

    public int hashCode() {
        return this.parent == null ? super.hashCode() : org.eclipse.jdt.internal.core.util.Util.combineHashCodes(getElementName().hashCode(), this.parent.hashCode());
    }

    public boolean isAncestorOf(IJavaElement iJavaElement) {
        IJavaElement parent = iJavaElement.getParent();
        while (parent != null && !parent.equals(this)) {
            parent = parent.getParent();
        }
        return parent != null;
    }

    public boolean isReadOnly() {
        return false;
    }

    public boolean isSameCharacter(byte b10, byte b11) {
        return b10 == b11 || Character.toUpperCase((char) b10) == Character.toUpperCase((char) b11);
    }

    public JavaModelStatus newDoesNotExistStatus() {
        return new JavaModelStatus(969, this);
    }

    public JavaModelException newJavaModelException(IStatus iStatus) {
        return iStatus instanceof IJavaModelStatus ? new JavaModelException((IJavaModelStatus) iStatus) : new JavaModelException((IJavaModelStatus) new JavaModelStatus(iStatus.getSeverity(), iStatus.getCode(), iStatus.getMessage()));
    }

    public JavaModelException newNotPresentException() {
        return new JavaModelException((IJavaModelStatus) newDoesNotExistStatus());
    }

    public Object openWhenClosed(Object obj, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        boolean hasTemporaryCache = javaModelManager.hasTemporaryCache();
        try {
            HashMap temporaryCache = javaModelManager.getTemporaryCache();
            generateInfos(obj, temporaryCache, iProgressMonitor);
            if (obj == null) {
                obj = temporaryCache.get(this);
            }
            if (obj == null) {
                Openable openable = (Openable) getOpenable();
                if (temporaryCache.containsKey(openable)) {
                    openable.closeBuffer();
                }
                throw newNotPresentException();
            }
            if (!hasTemporaryCache) {
                obj = javaModelManager.putInfos(this, obj, z10, temporaryCache);
            }
            if (!hasTemporaryCache) {
                javaModelManager.resetTemporaryCache();
            }
            return obj;
        } catch (Throwable th2) {
            if (!hasTemporaryCache) {
                javaModelManager.resetTemporaryCache();
            }
            throw th2;
        }
    }

    public String readableName() {
        return getElementName();
    }

    public JavaElement resolved(Binding binding) {
        return this;
    }

    public abstract IResource resource();

    public String tabString(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        while (i10 > 0) {
            stringBuffer.append(GlideException.a.f59088e);
            i10--;
        }
        return stringBuffer.toString();
    }

    public String toDebugString() {
        StringBuffer stringBuffer = new StringBuffer();
        toStringInfo(0, stringBuffer, NO_INFO, true);
        return stringBuffer.toString();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        toString(0, stringBuffer);
        return stringBuffer.toString();
    }

    public void toStringAncestors(StringBuffer stringBuffer) {
        JavaElement javaElement = (JavaElement) getParent();
        if (javaElement == null || javaElement.getParent() == null) {
            return;
        }
        stringBuffer.append(" [in ");
        javaElement.toStringInfo(0, stringBuffer, NO_INFO, false);
        javaElement.toStringAncestors(stringBuffer);
        stringBuffer.append("]");
    }

    public void toStringChildren(int i10, StringBuffer stringBuffer, Object obj) {
        if (obj == null || !(obj instanceof JavaElementInfo)) {
            return;
        }
        for (IJavaElement iJavaElement : ((JavaElementInfo) obj).getChildren()) {
            stringBuffer.append("\n");
            ((JavaElement) iJavaElement).toString(i10 + 1, stringBuffer);
        }
    }

    public Object toStringInfo(int i10, StringBuffer stringBuffer) {
        Object peekAtInfo = JavaModelManager.getJavaModelManager().peekAtInfo(this);
        toStringInfo(i10, stringBuffer, peekAtInfo, true);
        return peekAtInfo;
    }

    public void toStringName(StringBuffer stringBuffer) {
        stringBuffer.append(getElementName());
    }

    public String toStringWithAncestors() {
        return toStringWithAncestors(true);
    }

    public JavaElement unresolved() {
        return this;
    }

    public void validateAndCache(URL url, FileNotFoundException fileNotFoundException) throws JavaModelException {
        String url2 = url.toString();
        Set<String> set = validURLs;
        if (set == null || !set.contains(url2)) {
            Set<String> set2 = invalidURLs;
            if (set2 != null && set2.contains(url2)) {
                throw new JavaModelException(fileNotFoundException, 1008);
            }
            InputStream inputStream = null;
            try {
                try {
                    inputStream = url.openConnection().getInputStream();
                    if (validURLs == null) {
                        validURLs = new HashSet(1);
                    }
                    validURLs.add(url2);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception unused2) {
                    if (invalidURLs == null) {
                        invalidURLs = new HashSet(1);
                    }
                    invalidURLs.add(url2);
                    throw new JavaModelException(fileNotFoundException, 1008);
                }
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                throw th2;
            }
        }
    }

    public Object getElementInfo(IProgressMonitor iProgressMonitor) throws JavaModelException {
        Object info = JavaModelManager.getJavaModelManager().getInfo(this);
        return info != null ? info : openWhenClosed(createElementInfo(), false, iProgressMonitor);
    }

    @Override
    public IJavaElement getPrimaryElement() {
        return getPrimaryElement(true);
    }

    public String toStringWithAncestors(boolean z10) {
        StringBuffer stringBuffer = new StringBuffer();
        toStringInfo(0, stringBuffer, NO_INFO, z10);
        toStringAncestors(stringBuffer);
        return stringBuffer.toString();
    }

    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        toStringName(stringBuffer);
        if (obj == null) {
            stringBuffer.append(" (not open)");
        }
    }

    public void getHandleMemento(StringBuffer stringBuffer) {
        ((JavaElement) getParent()).getHandleMemento(stringBuffer);
        stringBuffer.append(getHandleMementoDelimiter());
        escapeMementoName(stringBuffer, getElementName());
    }

    public void toString(int i10, StringBuffer stringBuffer) {
        Object stringInfo = toStringInfo(i10, stringBuffer);
        if (i10 == 0) {
            toStringAncestors(stringBuffer);
        }
        toStringChildren(i10, stringBuffer, stringInfo);
    }
}
