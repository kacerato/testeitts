package org.eclipse.jdt.internal.core;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.AccessRule;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.util.ManifestAnalyzer;
import org.eclipse.jdt.internal.core.nd.IReader;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;
import org.eclipse.jdt.internal.core.nd.java.NdResourceFile;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class ClasspathEntry implements IClasspathEntry {
    public static final String DOT_DOT = "..";
    public static final int K_OUTPUT = 10;
    public static final String TAG_ACCESSIBLE = "accessible";
    public static final String TAG_ACCESS_RULE = "accessrule";
    public static final String TAG_ACCESS_RULES = "accessrules";
    public static final String TAG_ATTRIBUTE = "attribute";
    public static final String TAG_ATTRIBUTES = "attributes";
    public static final String TAG_ATTRIBUTE_NAME = "name";
    public static final String TAG_ATTRIBUTE_VALUE = "value";
    public static final String TAG_CLASSPATH = "classpath";
    public static final String TAG_CLASSPATHENTRY = "classpathentry";
    public static final String TAG_COMBINE_ACCESS_RULES = "combineaccessrules";
    public static final String TAG_DISCOURAGED = "discouraged";
    public static final String TAG_EXCLUDING = "excluding";
    public static final String TAG_EXPORTED = "exported";
    public static final String TAG_IGNORE_IF_BETTER = "ignoreifbetter";
    public static final String TAG_INCLUDING = "including";
    public static final String TAG_KIND = "kind";
    public static final String TAG_NON_ACCESSIBLE = "nonaccessible";
    public static final String TAG_OUTPUT = "output";
    public static final String TAG_PATH = "path";
    public static final String TAG_PATTERN = "pattern";
    public static final String TAG_REFERENCED_ENTRY = "referencedentry";
    public static final String TAG_ROOTPATH = "rootpath";
    public static final String TAG_SOURCEPATH = "sourcepath";
    private AccessRuleSet accessRuleSet;
    private boolean combineAccessRules;
    public int contentKind;
    public int entryKind;
    private IPath[] exclusionPatterns;
    public IClasspathAttribute[] extraAttributes;
    private char[][] fullExclusionPatternChars;
    private char[][] fullInclusionPatternChars;
    private IPath[] inclusionPatterns;
    public boolean isExported;
    public IPath path;
    public IClasspathEntry referencingEntry;
    private String rootID;
    public IPath sourceAttachmentPath;
    public IPath sourceAttachmentRootPath;
    public IPath specificOutputLocation;
    private static final char[][] UNINIT_PATTERNS = {"Non-initialized yet".toCharArray()};
    public static final ClasspathEntry[] NO_ENTRIES = new ClasspathEntry[0];
    private static final IPath[] NO_PATHS = new IPath[0];
    private static final IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
    public static final IPath[] INCLUDE_ALL = new IPath[0];
    public static final IPath[] EXCLUDE_NONE = new IPath[0];
    public static final IClasspathAttribute[] NO_EXTRA_ATTRIBUTES = new IClasspathAttribute[0];
    public static final IAccessRule[] NO_ACCESS_RULES = new IAccessRule[0];

    public static class AssertionFailedException extends RuntimeException {
        private static final long serialVersionUID = -171699380721189572L;

        public AssertionFailedException(String str) {
            super(str);
        }
    }

    public static class UnknownXmlElements {
        String[] attributes;
        ArrayList children;
    }

    public ClasspathEntry(int i10, int i11, IPath iPath, IPath[] iPathArr, IPath[] iPathArr2, IPath iPath2, IPath iPath3, IPath iPath4, boolean z10, IAccessRule[] iAccessRuleArr, boolean z11, IClasspathAttribute[] iClasspathAttributeArr) {
        this(i10, i11, iPath, iPathArr, iPathArr2, iPath2, iPath3, iPath4, null, z10, iAccessRuleArr, z11, iClasspathAttributeArr);
    }

    private IAccessRule[] combine(IAccessRule[] iAccessRuleArr, IAccessRule[] iAccessRuleArr2, boolean z10) {
        if (!z10) {
            return iAccessRuleArr2;
        }
        if (iAccessRuleArr2 == null || iAccessRuleArr2.length == 0) {
            return iAccessRuleArr;
        }
        int length = iAccessRuleArr.length;
        int length2 = iAccessRuleArr2.length;
        IAccessRule[] iAccessRuleArr3 = new IAccessRule[length + length2];
        System.arraycopy(iAccessRuleArr, 0, iAccessRuleArr3, 0, length);
        System.arraycopy(iAccessRuleArr2, 0, iAccessRuleArr3, length, length2);
        return iAccessRuleArr3;
    }

    public static IAccessRule[] decodeAccessRules(NodeList nodeList) {
        int length;
        Element element;
        String attribute;
        if (nodeList == null || (length = nodeList.getLength()) == 0) {
            return null;
        }
        IAccessRule[] iAccessRuleArr = new IAccessRule[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            Node item = nodeList.item(i11);
            int i12 = 1;
            if (item.getNodeType() == 1 && (attribute = (element = (Element) item).getAttribute(TAG_PATTERN)) != null) {
                String attribute2 = element.getAttribute("kind");
                if (TAG_ACCESSIBLE.equals(attribute2)) {
                    i12 = 0;
                } else if (!TAG_NON_ACCESSIBLE.equals(attribute2)) {
                    if (TAG_DISCOURAGED.equals(attribute2)) {
                        i12 = 2;
                    }
                }
                boolean equals = "true".equals(element.getAttribute(TAG_IGNORE_IF_BETTER));
                int i13 = i10 + 1;
                Path path = new Path(attribute);
                if (equals) {
                    i12 |= 256;
                }
                iAccessRuleArr[i10] = JavaCore.newAccessRule(path, i12);
                i10 = i13;
            }
        }
        if (i10 == length) {
            return iAccessRuleArr;
        }
        IAccessRule[] iAccessRuleArr2 = new IAccessRule[i10];
        System.arraycopy(iAccessRuleArr, 0, iAccessRuleArr2, 0, i10);
        return iAccessRuleArr2;
    }

    public static IClasspathAttribute[] decodeExtraAttributes(NodeList nodeList) {
        int length;
        Element element;
        String attribute;
        String attribute2;
        if (nodeList != null && (length = nodeList.getLength()) != 0) {
            IClasspathAttribute[] iClasspathAttributeArr = new IClasspathAttribute[length];
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                Node item = nodeList.item(i11);
                if (item.getNodeType() == 1 && (attribute = (element = (Element) item).getAttribute("name")) != null && (attribute2 = element.getAttribute("value")) != null) {
                    iClasspathAttributeArr[i10] = new ClasspathAttribute(attribute, attribute2);
                    i10++;
                }
            }
            if (i10 == length) {
                return iClasspathAttributeArr;
            }
            IClasspathAttribute[] iClasspathAttributeArr2 = new IClasspathAttribute[i10];
            System.arraycopy(iClasspathAttributeArr, 0, iClasspathAttributeArr2, 0, i10);
            return iClasspathAttributeArr2;
        }
        return NO_EXTRA_ATTRIBUTES;
    }

    private static IPath[] decodePatterns(NamedNodeMap namedNodeMap, String str) {
        char[][] splitOn;
        int length;
        String removeAttribute = removeAttribute(str, namedNodeMap);
        if (removeAttribute.equals("") || (length = (splitOn = CharOperation.splitOn('|', removeAttribute.toCharArray())).length) <= 0) {
            return null;
        }
        IPath[] iPathArr = new IPath[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char[] cArr = splitOn[i11];
            if (cArr.length != 0) {
                iPathArr[i10] = new Path(new String(cArr));
                i10++;
            }
        }
        if (i10 >= length) {
            return iPathArr;
        }
        IPath[] iPathArr2 = new IPath[i10];
        System.arraycopy(iPathArr, 0, iPathArr2, 0, i10);
        return iPathArr2;
    }

    private static void decodeUnknownNode(Node node, StringBuffer stringBuffer, IJavaProject iJavaProject) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            XMLWriter xMLWriter = new XMLWriter(new OutputStreamWriter(byteArrayOutputStream, "UTF8"), iJavaProject, false);
            decodeUnknownNode(node, xMLWriter, true);
            xMLWriter.flush();
            xMLWriter.close();
            stringBuffer.append(byteArrayOutputStream.toString("UTF8"));
        } catch (UnsupportedEncodingException unused) {
        }
    }

    public static IClasspathEntry elementDecode(Element element, IJavaProject iJavaProject, Map map) {
        int i10;
        ArrayList arrayList;
        String[] strArr;
        IClasspathEntry newLibraryEntry;
        NodeList nodeList;
        int i11;
        IPath fullPath = iJavaProject.getProject().getFullPath();
        NamedNodeMap attributes = element.getAttributes();
        NodeList childNodes = element.getChildNodes();
        int length = childNodes.getLength();
        boolean[] zArr = new boolean[length];
        String removeAttribute = removeAttribute("kind", attributes);
        IPath path = new Path(removeAttribute("path", attributes));
        int kindFromString = kindFromString(removeAttribute);
        if (kindFromString != 4 && kindFromString != 5 && !path.isAbsolute() && (path.segmentCount() <= 0 || !path.segment(0).equals(DOT_DOT))) {
            path = fullPath.append(path);
        }
        Path path2 = element.hasAttribute(TAG_SOURCEPATH) ? new Path(removeAttribute(TAG_SOURCEPATH, attributes)) : null;
        if (kindFromString != 4 && path2 != null && !path2.isAbsolute()) {
            path2 = fullPath.append(path2);
        }
        Path path3 = element.hasAttribute(TAG_ROOTPATH) ? new Path(removeAttribute(TAG_ROOTPATH, attributes)) : null;
        boolean equals = removeAttribute(TAG_EXPORTED, attributes).equals("true");
        IPath[] decodePatterns = decodePatterns(attributes, TAG_INCLUDING);
        if (decodePatterns == null) {
            decodePatterns = INCLUDE_ALL;
        }
        IPath[] decodePatterns2 = decodePatterns(attributes, TAG_EXCLUDING);
        if (decodePatterns2 == null) {
            decodePatterns2 = EXCLUDE_NONE;
        }
        IAccessRule[] decodeAccessRules = decodeAccessRules(getChildAttributes(TAG_ACCESS_RULES, childNodes, zArr));
        if (decodeAccessRules == null) {
            decodeAccessRules = getAccessRules(decodePatterns, decodePatterns2);
        }
        IPath[] iPathArr = decodePatterns2;
        IPath[] iPathArr2 = decodePatterns;
        boolean z10 = !removeAttribute(TAG_COMBINE_ACCESS_RULES, attributes).equals("false");
        IClasspathAttribute[] decodeExtraAttributes = decodeExtraAttributes(getChildAttributes(TAG_ATTRIBUTES, childNodes, zArr));
        IPath append = element.hasAttribute("output") ? fullPath.append(removeAttribute("output", attributes)) : null;
        if (map != null) {
            int length2 = attributes.getLength();
            if (length2 != 0) {
                strArr = new String[length2 * 2];
                for (int i12 = 0; i12 < length2; i12++) {
                    Node item = attributes.item(i12);
                    int i13 = i12 * 2;
                    strArr[i13] = item.getNodeName();
                    strArr[i13 + 1] = item.getNodeValue();
                }
            } else {
                strArr = null;
            }
            int i14 = 0;
            arrayList = null;
            while (i14 < length) {
                if (zArr[i14]) {
                    nodeList = childNodes;
                    i11 = length;
                } else {
                    Node item2 = childNodes.item(i14);
                    nodeList = childNodes;
                    i11 = length;
                    if (item2.getNodeType() == 1) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        StringBuffer stringBuffer = new StringBuffer();
                        decodeUnknownNode(item2, stringBuffer, iJavaProject);
                        arrayList.add(stringBuffer.toString());
                        i14++;
                        childNodes = nodeList;
                        length = i11;
                    }
                }
                i14++;
                childNodes = nodeList;
                length = i11;
            }
            i10 = 1;
        } else {
            i10 = 1;
            arrayList = null;
            strArr = null;
        }
        if (kindFromString == i10) {
            newLibraryEntry = JavaCore.newLibraryEntry(path, path2, path3, decodeAccessRules, decodeExtraAttributes, equals);
        } else if (kindFromString == 2) {
            newLibraryEntry = new ClasspathEntry(1, 2, path, INCLUDE_ALL, EXCLUDE_NONE, null, null, null, equals, decodeAccessRules, z10, decodeExtraAttributes);
        } else if (kindFromString == 3) {
            String segment = path.segment(0);
            newLibraryEntry = (segment == null || !segment.equals(iJavaProject.getElementName())) ? path.segmentCount() == 1 ? JavaCore.newProjectEntry(path, decodeAccessRules, z10, decodeExtraAttributes, equals) : JavaCore.newSourceEntry(path, iPathArr2, iPathArr, append, decodeExtraAttributes) : JavaCore.newSourceEntry(path, iPathArr2, iPathArr, append, decodeExtraAttributes);
        } else if (kindFromString == 4) {
            newLibraryEntry = JavaCore.newVariableEntry(path, path2, path3, decodeAccessRules, decodeExtraAttributes, equals);
        } else if (kindFromString == 5) {
            newLibraryEntry = JavaCore.newContainerEntry(path, decodeAccessRules, decodeExtraAttributes, equals);
        } else {
            if (kindFromString != 10) {
                throw new AssertionFailedException(Messages.bind(Messages.classpath_unknownKind, removeAttribute));
            }
            if (!path.isAbsolute()) {
                return null;
            }
            newLibraryEntry = new ClasspathEntry(10, 1, path, INCLUDE_ALL, EXCLUDE_NONE, null, null, null, false, null, false, NO_EXTRA_ATTRIBUTES);
        }
        if (strArr != null || arrayList != null) {
            UnknownXmlElements unknownXmlElements = new UnknownXmlElements();
            unknownXmlElements.attributes = strArr;
            unknownXmlElements.children = arrayList;
            map.put(path, unknownXmlElements);
        }
        return newLibraryEntry;
    }

    private void encodeAccessRule(AccessRule accessRule, XMLWriter xMLWriter, boolean z10, boolean z11) {
        HashMap hashMap = new HashMap();
        hashMap.put(TAG_PATTERN, new String(accessRule.pattern));
        int problemId = accessRule.getProblemId();
        if (problemId == 16777496) {
            hashMap.put("kind", TAG_DISCOURAGED);
        } else if (problemId != 16777523) {
            hashMap.put("kind", TAG_ACCESSIBLE);
        } else {
            hashMap.put("kind", TAG_NON_ACCESSIBLE);
        }
        if (accessRule.ignoreIfBetter()) {
            hashMap.put(TAG_IGNORE_IF_BETTER, "true");
        }
        xMLWriter.printTag(TAG_ACCESS_RULE, hashMap, z10, z11, true);
    }

    private static void encodePatterns(IPath[] iPathArr, String str, Map map) {
        if (iPathArr == null || iPathArr.length <= 0) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        int length = iPathArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append('|');
            }
            stringBuffer.append((Object) iPathArr[i10]);
        }
        map.put(str, String.valueOf(stringBuffer));
    }

    private void encodeUnknownChildren(XMLWriter xMLWriter, boolean z10, boolean z11, ArrayList arrayList) {
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            xMLWriter.printString((String) arrayList.get(i10), z10, false);
        }
    }

    private static boolean equalAttributes(IClasspathAttribute[] iClasspathAttributeArr, IClasspathAttribute[] iClasspathAttributeArr2) {
        if (iClasspathAttributeArr == iClasspathAttributeArr2) {
            return true;
        }
        if (iClasspathAttributeArr == null) {
            return false;
        }
        int length = iClasspathAttributeArr.length;
        if (iClasspathAttributeArr2 == null || iClasspathAttributeArr2.length != length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!iClasspathAttributeArr[i10].equals(iClasspathAttributeArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    private static boolean equalPatterns(IPath[] iPathArr, IPath[] iPathArr2) {
        if (iPathArr == iPathArr2) {
            return true;
        }
        if (iPathArr == null) {
            return false;
        }
        int length = iPathArr.length;
        if (iPathArr2 == null || iPathArr2.length != length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!iPathArr[i10].toString().equals(iPathArr2[i10].toString())) {
                return false;
            }
        }
        return true;
    }

    private static List getCalledFileNames(IPath iPath) {
        Object target = JavaModel.getTarget(iPath, true);
        List list = null;
        if (!(target instanceof IFile) && !(target instanceof File)) {
            return null;
        }
        try {
            char[] manifestContents = getManifestContents(iPath);
            if (manifestContents == null) {
                return null;
            }
            ManifestAnalyzer manifestAnalyzer = new ManifestAnalyzer();
            boolean analyzeManifestContents = manifestAnalyzer.analyzeManifestContents(manifestContents);
            List calledFileNames = manifestAnalyzer.getCalledFileNames();
            if (analyzeManifestContents) {
                try {
                    if (manifestAnalyzer.getClasspathSectionsCount() != 1 || calledFileNames != null) {
                        if (manifestAnalyzer.getClasspathSectionsCount() <= 1) {
                            return calledFileNames;
                        }
                        if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            Util.verbose("Multiple Class-Path headers in manifest of jar file: " + iPath.toOSString());
                        }
                        return null;
                    }
                } catch (CoreException e10) {
                    e = e10;
                    list = calledFileNames;
                    if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                        Util.verbose("Could not read Class-Path header in manifest of jar file: " + iPath.toOSString());
                        e.printStackTrace();
                    }
                    return list;
                } catch (IOException e11) {
                    e = e11;
                    list = calledFileNames;
                    if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                        Util.verbose("Could not read Class-Path header in manifest of jar file: " + iPath.toOSString());
                        e.printStackTrace();
                    }
                    return list;
                }
            }
            if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                Util.verbose("Invalid Class-Path header in manifest of jar file: " + iPath.toOSString());
            }
            return null;
        } catch (IOException e12) {
            e = e12;
        } catch (CoreException e13) {
            e = e13;
        }
    }

    public static NodeList getChildAttributes(String str, NodeList nodeList, boolean[] zArr) {
        int length = zArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Node item = nodeList.item(i10);
            if (str.equals(item.getNodeName())) {
                zArr[i10] = true;
                return item.getChildNodes();
            }
        }
        return null;
    }

    public static IPath getExternalAnnotationPath(IClasspathEntry iClasspathEntry, IProject iProject, boolean z10) {
        String rawExternalAnnotationPath = getRawExternalAnnotationPath(iClasspathEntry);
        if (rawExternalAnnotationPath == null) {
            return null;
        }
        Path path = new Path(rawExternalAnnotationPath);
        if (path.isAbsolute()) {
            if (!z10) {
                return path;
            }
            IResource findMember = iProject.getWorkspace().getRoot().findMember(path);
            if (findMember != null) {
                return findMember.getLocation();
            }
            if (new File(path.toOSString()).exists()) {
                return path;
            }
            invalidExternalAnnotationPath(iProject);
            return null;
        }
        IPath resolvedVariablePath = JavaCore.getResolvedVariablePath(path);
        if (resolvedVariablePath != null) {
            return resolvedVariablePath;
        }
        if (iProject == null) {
            return null;
        }
        if (!z10) {
            return new Path(iProject.getName()).append(path).makeAbsolute();
        }
        IResource findMember2 = iProject.findMember(path);
        if (findMember2 != null) {
            return findMember2.getLocation();
        }
        invalidExternalAnnotationPath(iProject);
        return null;
    }

    public static String getExtraAttribute(IClasspathEntry iClasspathEntry, String str) {
        for (IClasspathAttribute iClasspathAttribute : iClasspathEntry.getExtraAttributes()) {
            if (str.equals(iClasspathAttribute.getName())) {
                return iClasspathAttribute.getValue();
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v4 */
    private static char[] getManifestContents(IPath iPath) throws CoreException, IOException {
        ZipFile zipFile;
        ?? r12 = 0;
        r12 = 0;
        if (JavaIndex.isEnabled()) {
            JavaIndex index = JavaIndex.getIndex();
            String absolutePath = JavaModelManager.getLocalFile(iPath).getAbsolutePath();
            try {
                IReader acquireReadLock = index.getNd().acquireReadLock();
                try {
                    NdResourceFile resourceFile = index.getResourceFile(absolutePath.toCharArray());
                    if (index.isUpToDate(resourceFile)) {
                        char[] chars = resourceFile.getManifestContent().getChars();
                        if (chars.length == 0) {
                            if (acquireReadLock != null) {
                                acquireReadLock.close();
                            }
                            return null;
                        }
                        if (acquireReadLock != null) {
                            acquireReadLock.close();
                        }
                        return chars;
                    }
                    if (acquireReadLock != null) {
                        acquireReadLock.close();
                    }
                } finally {
                }
            } finally {
            }
        }
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        try {
            zipFile = javaModelManager.getZipFile(iPath);
            try {
                ZipEntry entry = zipFile.getEntry("META-INF/MANIFEST.MF");
                if (entry == null) {
                    javaModelManager.closeZipFile(zipFile);
                    return null;
                }
                r12 = zipFile.getInputStream(entry);
                char[] inputStreamAsCharArray = org.eclipse.jdt.internal.compiler.util.Util.getInputStreamAsCharArray(r12, -1, "UTF-8");
                if (r12 != 0) {
                    try {
                        r12.close();
                    } catch (IOException unused) {
                    }
                }
                javaModelManager.closeZipFile(zipFile);
                return inputStreamAsCharArray;
            } catch (Throwable th2) {
                th = th2;
                if (r12 != 0) {
                    try {
                        r12.close();
                    } catch (IOException unused2) {
                    }
                }
                javaModelManager.closeZipFile(zipFile);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            zipFile = null;
        }
    }

    public static String getRawExternalAnnotationPath(IClasspathEntry iClasspathEntry) {
        return getExtraAttribute(iClasspathEntry, IClasspathAttribute.EXTERNAL_ANNOTATION_PATH);
    }

    public static boolean hasDotDot(IPath iPath) {
        int segmentCount = iPath.segmentCount();
        for (int i10 = 0; i10 < segmentCount; i10++) {
            if (DOT_DOT.equals(iPath.segment(i10))) {
                return true;
            }
        }
        return false;
    }

    private static void invalidExternalAnnotationPath(IProject iProject) {
        try {
            for (IMarker iMarker : iProject.findMarkers(IJavaModelMarker.BUILDPATH_PROBLEM_MARKER, false, 0)) {
                if (iMarker.getAttribute("severity", -1) == 2) {
                    return;
                }
            }
            new ClasspathValidation((JavaProject) JavaCore.create(iProject)).validate();
        } catch (CoreException unused) {
        }
    }

    public static int kindFromString(String str) {
        if (str.equalsIgnoreCase("prj")) {
            return 2;
        }
        if (str.equalsIgnoreCase("var")) {
            return 4;
        }
        if (str.equalsIgnoreCase("con")) {
            return 5;
        }
        if (str.equalsIgnoreCase("src")) {
            return 3;
        }
        if (str.equalsIgnoreCase("lib")) {
            return 1;
        }
        return str.equalsIgnoreCase("output") ? 10 : -1;
    }

    public static String kindToString(int i10) {
        return i10 != 1 ? (i10 == 2 || i10 == 3) ? "src" : i10 != 4 ? i10 != 5 ? i10 != 10 ? "unknown" : "output" : "con" : "var" : "lib";
    }

    public static boolean lambda$0(String str, IClasspathAttribute iClasspathAttribute) {
        return !iClasspathAttribute.getName().equals(str);
    }

    public static IClasspathAttribute[] lambda$1(int i10) {
        return new IClasspathAttribute[i10];
    }

    private static String removeAttribute(String str, NamedNodeMap namedNodeMap) {
        Node removeNode = removeNode(str, namedNodeMap);
        return removeNode == null ? "" : removeNode.getNodeValue();
    }

    private static Node removeNode(String str, NamedNodeMap namedNodeMap) {
        try {
            return namedNodeMap.removeNamedItem(str);
        } catch (DOMException e10) {
            if (e10.code == 8) {
                return null;
            }
            throw e10;
        }
    }

    public static IPath resolveDotDot(IPath iPath, IPath iPath2) {
        IPath append;
        IPath location = workspaceRoot.getLocation();
        int i10 = 0;
        IPath iPath3 = null;
        if (iPath == null || location.isPrefixOf(iPath)) {
            int segmentCount = iPath2.segmentCount();
            while (i10 < segmentCount) {
                String segment = iPath2.segment(i10);
                if (DOT_DOT.equals(segment)) {
                    if (iPath3 == null) {
                        if (i10 != 0) {
                            iPath3 = iPath2.removeFirstSegments(i10);
                        }
                        iPath3 = location;
                    } else {
                        if (iPath3.segmentCount() > 0) {
                            iPath3 = iPath3.removeLastSegments(1);
                        }
                        iPath3 = location;
                    }
                } else if (iPath3 != null) {
                    iPath3 = (iPath3.equals(location) && workspaceRoot.getProject(segment).isAccessible()) ? new Path(segment).makeAbsolute() : iPath3.append(segment);
                }
                i10++;
            }
        } else {
            int segmentCount2 = iPath2.segmentCount();
            while (i10 < segmentCount2) {
                String segment2 = iPath2.segment(i10);
                if (DOT_DOT.equals(segment2)) {
                    if (iPath3 == null) {
                        iPath3 = iPath;
                    }
                    if (iPath3.segmentCount() > 0) {
                        append = iPath3.removeLastSegments(1);
                        iPath3 = append;
                        i10++;
                    } else {
                        i10++;
                    }
                } else if (iPath3 != null) {
                    append = iPath3.append(segment2);
                    iPath3 = append;
                    i10++;
                } else {
                    i10++;
                }
            }
        }
        return iPath3 == null ? iPath2 : iPath3;
    }

    public static IPath[] resolvedChainedLibraries(IPath iPath) {
        ArrayList arrayList = new ArrayList();
        resolvedChainedLibraries(iPath, new HashSet(), arrayList);
        if (arrayList.size() == 0) {
            return NO_PATHS;
        }
        return (IPath[]) arrayList.toArray(new IPath[arrayList.size()]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:167:0x02d4, code lost:
    
        if ((org.eclipse.jdt.internal.core.JavaModel.getTarget(r15, false) instanceof org.eclipse.core.resources.IContainer) != false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x03a2, code lost:
    
        if ((org.eclipse.jdt.internal.core.JavaModel.getTarget(r3, false) instanceof org.eclipse.core.resources.IContainer) != false) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x036a, code lost:
    
        return new org.eclipse.jdt.internal.core.JavaModelStatus(org.eclipse.jdt.core.IJavaModelStatusConstants.INVALID_CLASSPATH, org.eclipse.jdt.internal.core.util.Messages.bind(org.eclipse.jdt.internal.core.util.Messages.classpath_cannotNestOutputInEntry, (java.lang.Object[]) new java.lang.String[]{r9.makeRelative().toString(), r15.makeRelative().toString()}));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:212:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x02f8  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v27 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static IJavaModelStatus validateClasspath(IJavaProject iJavaProject, IClasspathEntry[] iClasspathEntryArr, IPath iPath) {
        boolean z10;
        boolean z11;
        int i10;
        String str;
        IPath iPath2;
        int i11;
        int i12;
        int i13;
        boolean z12;
        int i14;
        IClasspathEntry iClasspathEntry;
        int i15;
        String str2;
        IClasspathEntry iClasspathEntry2;
        IPath iPath3 = iPath;
        IPath fullPath = iJavaProject.getProject().getFullPath();
        String elementName = iJavaProject.getElementName();
        if (iPath3 == null) {
            return new JavaModelStatus(970);
        }
        if (!iPath.isAbsolute()) {
            return new JavaModelStatus(IJavaModelStatusConstants.RELATIVE_PATH, iPath);
        }
        char c10 = '\u03cb';
        if (!fullPath.isPrefixOf(iPath3)) {
            return new JavaModelStatus(971, iJavaProject, iPath.toString());
        }
        if (iClasspathEntryArr == null) {
            return JavaModelStatus.VERIFIED_OK;
        }
        int length = iClasspathEntryArr.length;
        HashSet hashSet = new HashSet(length);
        ?? r92 = 0;
        int i16 = 0;
        while (i16 < length) {
            IPath iPath4 = fullPath;
            String str3 = elementName;
            char c11 = c10;
            IPath path = iClasspathEntryArr[i16].getPath();
            if (!hashSet.add(path)) {
                return new JavaModelStatus(977, Messages.bind(Messages.classpath_duplicateEntryPath, (Object[]) new String[]{(str3.equals(path.segment(0)) ? path.removeFirstSegments(1) : path.makeRelative()).toString(), str3}));
            }
            elementName = str3;
            i16++;
            iPath3 = iPath;
            r92 = 0;
            c10 = c11;
            fullPath = iPath4;
        }
        try {
            IClasspathEntry[] iClasspathEntryArr2 = ((JavaProject) iJavaProject).resolveClasspath(iClasspathEntryArr, (boolean) r92, (boolean) r92).resolvedClasspath;
            IPath[] iPathArr = new IPath[iClasspathEntryArr2.length + 1];
            boolean[] zArr = new boolean[iClasspathEntryArr2.length + 1];
            iPathArr[r92] = iPath3;
            boolean equals = "disabled".equals(iJavaProject.getOption(JavaCore.CORE_ENABLE_CLASSPATH_EXCLUSION_PATTERNS, true));
            boolean equals2 = "disabled".equals(iJavaProject.getOption(JavaCore.CORE_ENABLE_CLASSPATH_MULTIPLE_OUTPUT_LOCATIONS, true));
            ArrayList arrayList = new ArrayList();
            HashSet hashSet2 = new HashSet();
            int length2 = iClasspathEntryArr2.length;
            int i17 = r92;
            int i18 = 1;
            int i19 = r92;
            while (true) {
                int i20 = 3;
                if (i17 >= length2) {
                    JavaModelStatus javaModelStatus = null;
                    IPath iPath5 = null;
                    int i21 = 1;
                    while (i21 < i18) {
                        IPath iPath6 = fullPath;
                        String str4 = elementName;
                        IPath iPath7 = iPathArr[i21];
                        int indexOfEnclosingPath = Util.indexOfEnclosingPath(iPath7, iPathArr, i18);
                        if (indexOfEnclosingPath != -1 && indexOfEnclosingPath != i21) {
                            if (indexOfEnclosingPath != 0) {
                                return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_cannotNestOutputInOutput, (Object[]) new String[]{iPath7.makeRelative().toString(), iPathArr[indexOfEnclosingPath].makeRelative().toString()}));
                            }
                            if (iPath5 == null) {
                                iPath5 = iPath7;
                            }
                        }
                        i21++;
                        iPath3 = iPath;
                        fullPath = iPath6;
                        elementName = str4;
                        i20 = 3;
                    }
                    if (i19 <= i18 - 1) {
                        zArr[0] = true;
                    } else {
                        if (iPath5 != null) {
                            return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_cannotNestOutputInOutput, (Object[]) new String[]{iPath5.makeRelative().toString(), iPathArr[0].makeRelative().toString()}));
                        }
                        if (i19 > arrayList.size()) {
                            hashSet2.add(iPathArr[0]);
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        IPath iPath8 = fullPath;
                        String str5 = elementName;
                        IClasspathEntry iClasspathEntry3 = (IClasspathEntry) it.next();
                        IPath outputLocation = iClasspathEntry3.getOutputLocation();
                        if (outputLocation != null) {
                            if (hashSet2.contains(outputLocation)) {
                                return new JavaModelStatus(1016, iJavaProject, iClasspathEntry3.getPath());
                            }
                        } else if (i19 > arrayList.size()) {
                            return new JavaModelStatus(1015, iJavaProject, iClasspathEntry3.getPath());
                        }
                        iPath3 = iPath;
                        fullPath = iPath8;
                        elementName = str5;
                        i20 = 3;
                    }
                    int length3 = iClasspathEntryArr2.length;
                    int i22 = 0;
                    boolean z13 = false;
                    boolean z14 = false;
                    while (i22 < length3) {
                        IPath iPath9 = fullPath;
                        String str6 = elementName;
                        boolean z15 = z13;
                        IClasspathEntry iClasspathEntry4 = iClasspathEntryArr2[i22];
                        IPath path2 = iClasspathEntry4.getPath();
                        int entryKind = iClasspathEntry4.getEntryKind();
                        if (entryKind == 1) {
                            boolean z16 = (JavaModel.getTarget(path2, false) instanceof IContainer) | z14;
                            int indexOfMatchingPath = Util.indexOfMatchingPath(path2, iPathArr, i18);
                            if (indexOfMatchingPath != -1) {
                                zArr[indexOfMatchingPath] = true;
                            }
                            z14 = z16;
                        } else if (entryKind == 3) {
                            int indexOfMatchingPath2 = Util.indexOfMatchingPath(path2, iPathArr, i18);
                            if (indexOfMatchingPath2 != -1) {
                                zArr[indexOfMatchingPath2] = true;
                            }
                            z13 = true;
                            i22++;
                            iPath3 = iPath;
                            fullPath = iPath9;
                            elementName = str6;
                            i20 = 3;
                        }
                        z13 = z15;
                        i22++;
                        iPath3 = iPath;
                        fullPath = iPath9;
                        elementName = str6;
                        i20 = 3;
                    }
                    if (!z13 && !z14) {
                        for (int i23 = 0; i23 < i18; i23++) {
                            zArr[i23] = true;
                        }
                    }
                    int length4 = iClasspathEntryArr2.length;
                    int i24 = 0;
                    loop6: while (true) {
                        int i25 = 2;
                        if (i24 >= length4) {
                            int length5 = iClasspathEntryArr2.length;
                            int i26 = 0;
                            while (true) {
                                String str7 = "ignore";
                                if (i26 >= length5) {
                                    if (z13 && arrayList.size() == 0 && !"ignore".equals(iJavaProject.getOption(JavaCore.CORE_MAIN_ONLY_PROJECT_HAS_TEST_ONLY_DEPENDENCY, true))) {
                                        for (IClasspathEntry iClasspathEntry5 : iClasspathEntryArr2) {
                                            if (iClasspathEntry5 != null) {
                                                IPath path3 = iClasspathEntry5.getPath();
                                                if (iClasspathEntry5.getEntryKind() == i25 && path3.isAbsolute() && path3.segmentCount() == 1) {
                                                    IJavaProject create = JavaCore.create(workspaceRoot.getProject(path3.segment(0)));
                                                    try {
                                                        IClasspathEntry[] rawClasspath = create.getRawClasspath();
                                                        int length6 = rawClasspath.length;
                                                        int i27 = 0;
                                                        z10 = false;
                                                        z11 = false;
                                                        while (true) {
                                                            if (i27 < length6) {
                                                                try {
                                                                    IClasspathEntry iClasspathEntry6 = rawClasspath[i27];
                                                                    if (iClasspathEntry6.getEntryKind() == i20) {
                                                                        if (iClasspathEntry6.isTest()) {
                                                                            z10 = true;
                                                                        } else {
                                                                            z11 = true;
                                                                        }
                                                                        if (z10 && z11) {
                                                                            break;
                                                                        }
                                                                    }
                                                                    i27++;
                                                                } catch (JavaModelException unused) {
                                                                }
                                                            }
                                                        }
                                                    } catch (JavaModelException unused2) {
                                                        z10 = false;
                                                        z11 = false;
                                                    }
                                                    if (z10 && !z11) {
                                                        return new JavaModelStatus(1017, Messages.bind(Messages.classpath_main_only_project_depends_on_test_only_project, (Object[]) new String[]{create.getElementName()}));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    return javaModelStatus != null ? javaModelStatus : JavaModelStatus.VERIFIED_OK;
                                }
                                IClasspathEntry iClasspathEntry7 = iClasspathEntryArr2[i26];
                                if (iClasspathEntry7 != null) {
                                    IPath path4 = iClasspathEntry7.getPath();
                                    int entryKind2 = iClasspathEntry7.getEntryKind();
                                    String obj = (elementName.equals(path4.segment(0)) ? path4.removeFirstSegments(1) : path4.makeRelative()).toString();
                                    if (entryKind2 == i20) {
                                        IPath outputLocation2 = iClasspathEntry7.getOutputLocation();
                                        if (outputLocation2 == null) {
                                            outputLocation2 = iPath3;
                                        }
                                        int length7 = iClasspathEntryArr2.length;
                                        int i28 = 0;
                                        while (i28 < length7) {
                                            IClasspathEntry iClasspathEntry8 = iClasspathEntryArr2[i28];
                                            if (iClasspathEntry8 == iClasspathEntry7) {
                                                i10 = length5;
                                            } else {
                                                int entryKind3 = iClasspathEntry8.getEntryKind();
                                                i10 = length5;
                                                if (entryKind3 == 1) {
                                                    str = str7;
                                                    if (outputLocation2 != iPath3 && iClasspathEntry8.getPath().equals(outputLocation2)) {
                                                        return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_cannotUseLibraryAsOutput, (Object[]) new String[]{obj, (elementName.equals(iClasspathEntry8.getPath().segment(0)) ? iClasspathEntry8.getPath().removeFirstSegments(1) : iClasspathEntry8.getPath().makeRelative()).toString(), elementName}));
                                                    }
                                                } else if (entryKind3 == 3) {
                                                    String option = iJavaProject.getOption(JavaCore.CORE_OUTPUT_LOCATION_OVERLAPPING_ANOTHER_SOURCE, true);
                                                    if (iClasspathEntry8.getPath().equals(outputLocation2) && !str7.equals(option)) {
                                                        str = str7;
                                                        String obj2 = (elementName.equals(iClasspathEntry8.getPath().segment(0)) ? iClasspathEntry8.getPath().removeFirstSegments(1) : iClasspathEntry8.getPath().makeRelative()).toString();
                                                        int i29 = 1013;
                                                        if ("error".equals(option)) {
                                                            return new JavaModelStatus(4, 1013, Messages.bind(Messages.classpath_cannotUseDistinctSourceFolderAsOutput, (Object[]) new String[]{obj, obj2, elementName}));
                                                        }
                                                        if (javaModelStatus == null) {
                                                            javaModelStatus = new JavaModelStatus(0, i29, Messages.bind(Messages.classpath_cannotUseDistinctSourceFolderAsOutput, (Object[]) new String[]{obj, obj2, elementName})) {
                                                                @Override
                                                                public boolean isOK() {
                                                                    return true;
                                                                }
                                                            };
                                                        }
                                                    }
                                                }
                                                i28++;
                                                length5 = i10;
                                                str7 = str;
                                            }
                                            str = str7;
                                            i28++;
                                            length5 = i10;
                                            str7 = str;
                                        }
                                    }
                                }
                                i26++;
                                length5 = length5;
                                i20 = 3;
                                i25 = 2;
                            }
                        } else {
                            IClasspathEntry iClasspathEntry9 = iClasspathEntryArr2[i24];
                            if (iClasspathEntry9 == null) {
                                iPath2 = fullPath;
                            } else {
                                IPath path5 = iClasspathEntry9.getPath();
                                int entryKind4 = iClasspathEntry9.getEntryKind();
                                if (path5.equals(fullPath)) {
                                    iPath2 = fullPath;
                                    if (entryKind4 == 2) {
                                        return new JavaModelStatus(IJavaModelStatusConstants.INVALID_PATH, Messages.bind(Messages.classpath_cannotReferToItself, path5.makeRelative().toString()));
                                    }
                                } else {
                                    iPath2 = fullPath;
                                    if (entryKind4 != 3) {
                                        i11 = length4;
                                        if (entryKind4 == 1) {
                                        }
                                        ClasspathEntry classpathEntry = (ClasspathEntry) iClasspathEntry9;
                                        char[][] fullInclusionPatternChars = classpathEntry.fullInclusionPatternChars();
                                        char[][] fullExclusionPatternChars = classpathEntry.fullExclusionPatternChars();
                                        i12 = 0;
                                        while (i12 < i18) {
                                            int i30 = i24;
                                            IPath iPath10 = iPathArr[i12];
                                            if (!path5.equals(iPath10) && path5.isPrefixOf(iPath10)) {
                                                z12 = z13;
                                                if (entryKind4 != 3 || !Util.isExcluded(iPath10, fullInclusionPatternChars, fullExclusionPatternChars, true)) {
                                                    break loop6;
                                                }
                                            } else {
                                                z12 = z13;
                                            }
                                            i12++;
                                            i24 = i30;
                                            z13 = z12;
                                        }
                                        for (i13 = 0; i13 < i18; i13++) {
                                            if (!zArr[i13]) {
                                                IPath iPath11 = iPathArr[i13];
                                                if (iPath11.isPrefixOf(path5)) {
                                                    return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_cannotNestEntryInOutput, (Object[]) new String[]{path5.makeRelative().toString(), iPath11.makeRelative().toString()}));
                                                }
                                            }
                                        }
                                        i24++;
                                        length4 = i11;
                                        fullPath = iPath2;
                                        i20 = 3;
                                    } else {
                                        i11 = length4;
                                    }
                                    int length8 = iClasspathEntryArr2.length;
                                    int i31 = 0;
                                    while (i31 < length8) {
                                        int i32 = i24;
                                        boolean z17 = z13;
                                        IClasspathEntry iClasspathEntry10 = iClasspathEntryArr2[i31];
                                        if (iClasspathEntry10 == null) {
                                            i14 = length8;
                                        } else {
                                            int entryKind5 = iClasspathEntry10.getEntryKind();
                                            i14 = length8;
                                            IPath path6 = iClasspathEntry10.getPath();
                                            if (iClasspathEntry9 != iClasspathEntry10) {
                                                iClasspathEntry = iClasspathEntry9;
                                                if (entryKind5 != 3) {
                                                    i15 = entryKind4;
                                                    if (entryKind5 == 1) {
                                                    }
                                                    str2 = elementName;
                                                    i31++;
                                                    i24 = i32;
                                                    iPath3 = iPath;
                                                    z13 = z17;
                                                    length8 = i14;
                                                    iClasspathEntry9 = iClasspathEntry;
                                                    entryKind4 = i15;
                                                    elementName = str2;
                                                } else {
                                                    i15 = entryKind4;
                                                }
                                                if (path6.isPrefixOf(path5) && !path6.equals(path5)) {
                                                    IPath append = path5.append("*");
                                                    ClasspathEntry classpathEntry2 = (ClasspathEntry) iClasspathEntry10;
                                                    char[][] fullInclusionPatternChars2 = classpathEntry2.fullInclusionPatternChars();
                                                    char[][] fullExclusionPatternChars2 = classpathEntry2.fullExclusionPatternChars();
                                                    str2 = elementName;
                                                    if (!Util.isExcluded(append, fullInclusionPatternChars2, fullExclusionPatternChars2, false)) {
                                                        String segment = path5.removeFirstSegments(path6.segmentCount()).segment(0);
                                                        if (Util.isExcluded(path5, fullInclusionPatternChars2, fullExclusionPatternChars2, false)) {
                                                            return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_mustEndWithSlash, (Object[]) new String[]{segment, path5.makeRelative().toString()}));
                                                        }
                                                        if (entryKind5 != 3) {
                                                            return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_cannotNestEntryInLibrary, (Object[]) new String[]{path5.makeRelative().toString(), iClasspathEntry10.getPath().makeRelative().toString()}));
                                                        }
                                                        String str8 = String.valueOf(segment) + '/';
                                                        return !equals ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_cannotNestEntryInEntry, (Object[]) new String[]{path5.makeRelative().toString(), iClasspathEntry10.getPath().makeRelative().toString(), str8})) : new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_cannotNestEntryInEntryNoExclusion, (Object[]) new String[]{path5.makeRelative().toString(), iClasspathEntry10.getPath().makeRelative().toString(), str8}));
                                                    }
                                                    i31++;
                                                    i24 = i32;
                                                    iPath3 = iPath;
                                                    z13 = z17;
                                                    length8 = i14;
                                                    iClasspathEntry9 = iClasspathEntry;
                                                    entryKind4 = i15;
                                                    elementName = str2;
                                                }
                                                str2 = elementName;
                                                i31++;
                                                i24 = i32;
                                                iPath3 = iPath;
                                                z13 = z17;
                                                length8 = i14;
                                                iClasspathEntry9 = iClasspathEntry;
                                                entryKind4 = i15;
                                                elementName = str2;
                                            }
                                        }
                                        str2 = elementName;
                                        iClasspathEntry = iClasspathEntry9;
                                        i15 = entryKind4;
                                        i31++;
                                        i24 = i32;
                                        iPath3 = iPath;
                                        z13 = z17;
                                        length8 = i14;
                                        iClasspathEntry9 = iClasspathEntry;
                                        entryKind4 = i15;
                                        elementName = str2;
                                    }
                                    ClasspathEntry classpathEntry3 = (ClasspathEntry) iClasspathEntry9;
                                    char[][] fullInclusionPatternChars3 = classpathEntry3.fullInclusionPatternChars();
                                    char[][] fullExclusionPatternChars3 = classpathEntry3.fullExclusionPatternChars();
                                    i12 = 0;
                                    while (i12 < i18) {
                                    }
                                    while (i13 < i18) {
                                    }
                                    i24++;
                                    length4 = i11;
                                    fullPath = iPath2;
                                    i20 = 3;
                                }
                            }
                            i11 = length4;
                            i24++;
                            length4 = i11;
                            fullPath = iPath2;
                            i20 = 3;
                        }
                    }
                } else {
                    IPath iPath12 = fullPath;
                    String str9 = elementName;
                    iClasspathEntry2 = iClasspathEntryArr2[i17];
                    if (!equals || ((iClasspathEntry2.getInclusionPatterns() == null || iClasspathEntry2.getInclusionPatterns().length <= 0) && (iClasspathEntry2.getExclusionPatterns() == null || iClasspathEntry2.getExclusionPatterns().length <= 0))) {
                        int i33 = i19;
                        if (iClasspathEntry2.getEntryKind() == 3) {
                            i33 = i19 + 1;
                            boolean isTest = iClasspathEntry2.isTest();
                            if (isTest) {
                                arrayList.add(iClasspathEntry2);
                            }
                            IPath outputLocation3 = iClasspathEntry2.getOutputLocation();
                            i33 = i33;
                            if (outputLocation3 != null) {
                                if (equals2) {
                                    return new JavaModelStatus(1003, iJavaProject, iClasspathEntry2.getPath());
                                }
                                if (!outputLocation3.isAbsolute()) {
                                    return new JavaModelStatus(IJavaModelStatusConstants.RELATIVE_PATH, outputLocation3);
                                }
                                if (!iJavaProject.getPath().isPrefixOf(outputLocation3)) {
                                    return new JavaModelStatus(971, iJavaProject, outputLocation3.toString());
                                }
                                if (!isTest) {
                                    hashSet2.add(outputLocation3);
                                }
                                if (Util.indexOfMatchingPath(outputLocation3, iPathArr, i18) == -1) {
                                    iPathArr[i18] = outputLocation3;
                                    i18++;
                                }
                                i17++;
                                iPath3 = iPath;
                                fullPath = iPath12;
                                elementName = str9;
                                i19 = i33;
                            }
                        }
                        i17++;
                        iPath3 = iPath;
                        fullPath = iPath12;
                        elementName = str9;
                        i19 = i33;
                    }
                }
            }
            return new JavaModelStatus(1002, iJavaProject, iClasspathEntry2.getPath());
        } catch (JavaModelException e10) {
            return e10.getJavaModelStatus();
        }
    }

    public static IJavaModelStatus validateClasspathEntry(IJavaProject iJavaProject, IClasspathEntry iClasspathEntry, boolean z10, boolean z11) {
        if (iClasspathEntry.getEntryKind() == 1) {
            JavaModelManager.getJavaModelManager().removeFromInvalidArchiveCache(iClasspathEntry.getPath());
        }
        IJavaModelStatus validateClasspathEntry = validateClasspathEntry(iJavaProject, iClasspathEntry, null, z10, z11);
        int code = validateClasspathEntry.getCode();
        return ((code == 964 || code == 963 || code == 965 || code == 979) && ((ClasspathEntry) iClasspathEntry).isOptional()) ? JavaModelStatus.VERIFIED_OK : validateClasspathEntry;
    }

    private IJavaModelStatus validateExternalAnnotationPath(IJavaProject iJavaProject, IPath iPath) {
        IProject project = iJavaProject.getProject();
        if (iPath.isAbsolute()) {
            if (project.getWorkspace().getRoot().exists(iPath) || new File(iPath.toOSString()).exists()) {
                return null;
            }
        } else if (JavaCore.getResolvedVariablePath(iPath) != null || project.exists(iPath)) {
            return null;
        }
        return new JavaModelStatus(1014, iJavaProject, Messages.bind(Messages.classpath_invalidExternalAnnotationPath, (Object[]) new String[]{iPath.toString(), project.getName(), this.path.toString()}));
    }

    private static IJavaModelStatus validateLibraryContents(IPath iPath, IJavaProject iJavaProject, String str) {
        try {
            JavaModelManager.getJavaModelManager().verifyArchiveContent(iPath);
        } catch (CoreException e10) {
            if (e10.getStatus().getMessage() == Messages.status_IOException) {
                return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_archiveReadError, (Object[]) new String[]{str, iJavaProject.getElementName()}));
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    private static IJavaModelStatus validateLibraryEntry(IPath iPath, IJavaProject iJavaProject, String str, IPath iPath2, String str2, boolean z10) {
        IJavaModelStatus validateLibraryContents;
        if (!iPath.isAbsolute() || iPath.isEmpty()) {
            String obj = str2 == null ? iJavaProject.getElementName().equals(iPath.segment(0)) ? iPath.removeFirstSegments(1).makeRelative().toString() : iPath.toString() : str2;
            return str != null ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_illegalLibraryPathInContainer, (Object[]) new String[]{obj, str})) : new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_illegalLibraryPath, (Object[]) new String[]{obj, iJavaProject.getElementName()}));
        }
        boolean equals = "ignore".equals(iJavaProject.getOption(JavaCore.CORE_INCOMPATIBLE_JDK_LEVEL, true));
        if (equals && z10) {
            return JavaModelStatus.VERIFIED_OK;
        }
        Object target = JavaModel.getTarget(iPath, true);
        if (target == null) {
            IPath location = workspaceRoot.getLocation();
            if (location.isPrefixOf(iPath)) {
                target = JavaModel.getTarget(iPath.makeRelativeTo(location).makeAbsolute(), true);
            }
        }
        if (target != null && !equals) {
            long versionToJdkLevel = CompilerOptions.versionToJdkLevel(iJavaProject.getOption("org.eclipse.jdt.core.compiler.codegen.targetPlatform", true));
            long jdkLevel = Util.getJdkLevel(target);
            if (jdkLevel != 0 && jdkLevel > versionToJdkLevel) {
                return str != null ? new JavaModelStatus(1004, iJavaProject, iPath, Messages.bind(Messages.classpath_incompatibleLibraryJDKLevelInContainer, (Object[]) new String[]{iJavaProject.getElementName(), CompilerOptions.versionFromJdkLevel(versionToJdkLevel), iPath.makeRelative().toString(), str, CompilerOptions.versionFromJdkLevel(jdkLevel)})) : new JavaModelStatus(1004, iJavaProject, iPath, Messages.bind(Messages.classpath_incompatibleLibraryJDKLevel, (Object[]) new String[]{iJavaProject.getElementName(), CompilerOptions.versionFromJdkLevel(versionToJdkLevel), iPath.makeRelative().toString(), CompilerOptions.versionFromJdkLevel(jdkLevel)}));
            }
        }
        if (z10) {
            return JavaModelStatus.VERIFIED_OK;
        }
        if (target instanceof IResource) {
            int type = ((IResource) target).getType();
            if (type != 1) {
                if (type == 2 && iPath2 != null && !iPath2.isEmpty() && JavaModel.getTarget(iPath2, true) == null) {
                    return str != null ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundSourceAttachmentInContainedLibrary, (Object[]) new String[]{iPath2.toString(), iPath.toString(), str})) : new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundSourceAttachment, (Object[]) new String[]{iPath2.toString(), iPath.toString(), iJavaProject.getElementName()}));
                }
            } else {
                if (iPath2 != null && !iPath2.isEmpty() && JavaModel.getTarget(iPath2, true) == null) {
                    return str != null ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundSourceAttachmentInContainedLibrary, (Object[]) new String[]{iPath2.toString(), iPath.toString(), str})) : new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundSourceAttachment, (Object[]) new String[]{iPath2.toString(), iPath.toString(), iJavaProject.getElementName()}));
                }
                IJavaModelStatus validateLibraryContents2 = validateLibraryContents(iPath, iJavaProject, str2);
                if (validateLibraryContents2 != JavaModelStatus.VERIFIED_OK) {
                    return validateLibraryContents2;
                }
            }
        } else {
            if (!(target instanceof File)) {
                if (iPath.getDevice() != null || !ResourcesPlugin.getWorkspace().getRoot().getProject(iPath.segment(0)).exists()) {
                    return str != null ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundLibraryInContainer, (Object[]) new String[]{iPath.toOSString(), str})) : new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundLibrary, (Object[]) new String[]{iPath.toOSString(), iJavaProject.getElementName()}));
                }
                String obj2 = str2 == null ? iJavaProject.getElementName().equals(iPath.segment(0)) ? iPath.removeFirstSegments(1).makeRelative().toString() : iPath.toString() : str2;
                return str != null ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundLibraryInContainer, (Object[]) new String[]{obj2, str})) : new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundLibrary, (Object[]) new String[]{obj2, iJavaProject.getElementName()}));
            }
            File file = JavaModel.getFile(target);
            if (file == null) {
                return str != null ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_illegalExternalFolderInContainer, (Object[]) new String[]{iPath.toOSString(), str})) : new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_illegalExternalFolder, (Object[]) new String[]{iPath.toOSString(), iJavaProject.getElementName()}));
            }
            if (iPath2 != null && !iPath2.isEmpty() && JavaModel.getTarget(iPath2, true) == null) {
                return str != null ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundSourceAttachmentInContainedLibrary, (Object[]) new String[]{iPath2.toString(), iPath.toOSString(), str})) : new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundSourceAttachment, (Object[]) new String[]{iPath2.toString(), iPath.toOSString(), iJavaProject.getElementName()}));
            }
            if (file.isFile() && (validateLibraryContents = validateLibraryContents(iPath, iJavaProject, str2)) != JavaModelStatus.VERIFIED_OK) {
                return validateLibraryContents;
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    @Override
    public boolean combineAccessRules() {
        return this.combineAccessRules;
    }

    public ClasspathEntry combineWith(ClasspathEntry classpathEntry) {
        IClasspathAttribute[] iClasspathAttributeArr;
        IClasspathAttribute[] iClasspathAttributeArr2;
        if (classpathEntry == null) {
            return this;
        }
        IClasspathAttribute[] extraAttributes = classpathEntry.getExtraAttributes();
        if (!classpathEntry.isExported() && classpathEntry.getAccessRuleSet() == null && extraAttributes.length <= 0) {
            return this;
        }
        boolean z10 = this.entryKind == 3 || classpathEntry.combineAccessRules();
        IClasspathAttribute[] iClasspathAttributeArr3 = this.extraAttributes;
        int length = extraAttributes.length;
        if (length > 0) {
            int length2 = iClasspathAttributeArr3.length;
            if (classpathEntry.path.isPrefixOf(this.path)) {
                iClasspathAttributeArr2 = new IClasspathAttribute[length2 + length];
                System.arraycopy(iClasspathAttributeArr3, 0, iClasspathAttributeArr2, 0, length2);
                System.arraycopy(extraAttributes, 0, iClasspathAttributeArr2, length2, length);
            } else {
                iClasspathAttributeArr2 = new IClasspathAttribute[length2 + length];
                System.arraycopy(iClasspathAttributeArr3, 0, iClasspathAttributeArr2, length, length2);
                System.arraycopy(extraAttributes, 0, iClasspathAttributeArr2, 0, length);
            }
            iClasspathAttributeArr = iClasspathAttributeArr2;
        } else {
            iClasspathAttributeArr = iClasspathAttributeArr3;
        }
        return new ClasspathEntry(getContentKind(), getEntryKind(), getPath(), this.inclusionPatterns, this.exclusionPatterns, getSourceAttachmentPath(), getSourceAttachmentRootPath(), getOutputLocation(), classpathEntry.isExported() || this.isExported, combine(classpathEntry.getAccessRules(), getAccessRules(), z10), this.combineAccessRules, iClasspathAttributeArr);
    }

    public void elementEncode(XMLWriter xMLWriter, IPath iPath, boolean z10, boolean z11, Map map, boolean z12) {
        String[] strArr;
        HashMap hashMap = new HashMap();
        hashMap.put("kind", kindToString(this.entryKind));
        IPath iPath2 = this.path;
        int i10 = this.entryKind;
        if (i10 != 4 && i10 != 5 && iPath2.isAbsolute() && iPath != null && iPath.isPrefixOf(iPath2)) {
            iPath2 = iPath2.segment(0).equals(iPath.segment(0)) ? iPath2.removeFirstSegments(1).makeRelative() : iPath2.makeAbsolute();
        }
        hashMap.put("path", String.valueOf(iPath2));
        IPath iPath3 = this.sourceAttachmentPath;
        if (iPath3 != null) {
            if (this.entryKind != 4 && iPath != null && iPath.isPrefixOf(iPath3) && iPath3.segment(0).equals(iPath.segment(0))) {
                iPath3 = iPath3.removeFirstSegments(1).makeRelative();
            }
            hashMap.put(TAG_SOURCEPATH, String.valueOf(iPath3));
        }
        IPath iPath4 = this.sourceAttachmentRootPath;
        if (iPath4 != null) {
            hashMap.put(TAG_ROOTPATH, String.valueOf(iPath4));
        }
        if (this.isExported) {
            hashMap.put(TAG_EXPORTED, "true");
        }
        encodePatterns(this.inclusionPatterns, TAG_INCLUDING, hashMap);
        encodePatterns(this.exclusionPatterns, TAG_EXCLUDING, hashMap);
        if (this.entryKind == 2 && !this.combineAccessRules) {
            hashMap.put(TAG_COMBINE_ACCESS_RULES, "false");
        }
        UnknownXmlElements unknownXmlElements = map == null ? null : (UnknownXmlElements) map.get(this.path);
        if (unknownXmlElements != null && (strArr = unknownXmlElements.attributes) != null) {
            int length = strArr.length;
            for (int i11 = 0; i11 < length; i11 += 2) {
                hashMap.put(strArr[i11], strArr[i11 + 1]);
            }
        }
        IPath iPath5 = this.specificOutputLocation;
        if (iPath5 != null) {
            hashMap.put("output", String.valueOf(iPath5.removeFirstSegments(1).makeRelative()));
        }
        boolean z13 = this.extraAttributes.length != 0;
        boolean z14 = getAccessRuleSet() != null;
        ArrayList arrayList = unknownXmlElements != null ? unknownXmlElements.children : null;
        boolean z15 = arrayList != null;
        String str = z12 ? TAG_REFERENCED_ENTRY : TAG_CLASSPATHENTRY;
        xMLWriter.printTag(str, hashMap, z10, z11, (z13 || z14 || z15) ? false : true);
        if (z13) {
            encodeExtraAttributes(xMLWriter, z10, z11);
        }
        if (z14) {
            encodeAccessRules(xMLWriter, z10, z11);
        }
        if (z15) {
            encodeUnknownChildren(xMLWriter, z10, z11, arrayList);
        }
        if (z13 || z14 || z15) {
            xMLWriter.endTag(str, z10, true);
        }
    }

    public void encodeAccessRules(XMLWriter xMLWriter, boolean z10, boolean z11) {
        xMLWriter.startTag(TAG_ACCESS_RULES, z10);
        for (AccessRule accessRule : getAccessRuleSet().getAccessRules()) {
            encodeAccessRule(accessRule, xMLWriter, z10, z11);
        }
        xMLWriter.endTag(TAG_ACCESS_RULES, z10, true);
    }

    public void encodeExtraAttributes(XMLWriter xMLWriter, boolean z10, boolean z11) {
        xMLWriter.startTag(TAG_ATTRIBUTES, z10);
        int i10 = 0;
        while (true) {
            IClasspathAttribute[] iClasspathAttributeArr = this.extraAttributes;
            if (i10 >= iClasspathAttributeArr.length) {
                xMLWriter.endTag(TAG_ATTRIBUTES, z10, true);
                return;
            }
            IClasspathAttribute iClasspathAttribute = iClasspathAttributeArr[i10];
            HashMap hashMap = new HashMap();
            hashMap.put("name", iClasspathAttribute.getName());
            hashMap.put("value", iClasspathAttribute.getValue());
            xMLWriter.printTag(TAG_ATTRIBUTE, hashMap, z10, z11, true);
            i10++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClasspathEntry)) {
            return false;
        }
        ClasspathEntry classpathEntry = (ClasspathEntry) obj;
        if (this.contentKind != classpathEntry.getContentKind() || this.entryKind != classpathEntry.getEntryKind() || this.isExported != classpathEntry.isExported() || !this.path.equals(classpathEntry.getPath())) {
            return false;
        }
        IPath sourceAttachmentPath = classpathEntry.getSourceAttachmentPath();
        IPath iPath = this.sourceAttachmentPath;
        if (iPath == null) {
            if (sourceAttachmentPath != null) {
                return false;
            }
        } else if (!iPath.equals(sourceAttachmentPath)) {
            return false;
        }
        IPath sourceAttachmentRootPath = classpathEntry.getSourceAttachmentRootPath();
        IPath iPath2 = this.sourceAttachmentRootPath;
        if (iPath2 == null) {
            if (sourceAttachmentRootPath != null) {
                return false;
            }
        } else if (!iPath2.equals(sourceAttachmentRootPath)) {
            return false;
        }
        if (!equalPatterns(this.inclusionPatterns, classpathEntry.getInclusionPatterns()) || !equalPatterns(this.exclusionPatterns, classpathEntry.getExclusionPatterns())) {
            return false;
        }
        AccessRuleSet accessRuleSet = classpathEntry.getAccessRuleSet();
        if (getAccessRuleSet() != null) {
            if (!getAccessRuleSet().equals(accessRuleSet)) {
                return false;
            }
        } else if (accessRuleSet != null) {
            return false;
        }
        if (this.combineAccessRules != classpathEntry.combineAccessRules()) {
            return false;
        }
        IPath outputLocation = classpathEntry.getOutputLocation();
        IPath iPath3 = this.specificOutputLocation;
        if (iPath3 == null) {
            if (outputLocation != null) {
                return false;
            }
        } else if (!iPath3.equals(outputLocation)) {
            return false;
        }
        return equalAttributes(this.extraAttributes, classpathEntry.getExtraAttributes());
    }

    public char[][] fullExclusionPatternChars() {
        if (this.fullExclusionPatternChars == UNINIT_PATTERNS) {
            int length = this.exclusionPatterns.length;
            this.fullExclusionPatternChars = new char[length];
            IPath removeTrailingSeparator = this.path.removeTrailingSeparator();
            for (int i10 = 0; i10 < length; i10++) {
                this.fullExclusionPatternChars[i10] = removeTrailingSeparator.append(this.exclusionPatterns[i10]).toString().toCharArray();
            }
        }
        return this.fullExclusionPatternChars;
    }

    public char[][] fullInclusionPatternChars() {
        if (this.fullInclusionPatternChars == UNINIT_PATTERNS) {
            int length = this.inclusionPatterns.length;
            this.fullInclusionPatternChars = new char[length];
            IPath removeTrailingSeparator = this.path.removeTrailingSeparator();
            for (int i10 = 0; i10 < length; i10++) {
                this.fullInclusionPatternChars[i10] = removeTrailingSeparator.append(this.inclusionPatterns[i10]).toString().toCharArray();
            }
        }
        return this.fullInclusionPatternChars;
    }

    public AccessRuleSet getAccessRuleSet() {
        return this.accessRuleSet;
    }

    @Override
    public IAccessRule[] getAccessRules() {
        AccessRuleSet accessRuleSet = this.accessRuleSet;
        if (accessRuleSet == null) {
            return NO_ACCESS_RULES;
        }
        AccessRule[] accessRules = accessRuleSet.getAccessRules();
        int length = accessRules.length;
        if (length == 0) {
            return NO_ACCESS_RULES;
        }
        IAccessRule[] iAccessRuleArr = new IAccessRule[length];
        System.arraycopy(accessRules, 0, iAccessRuleArr, 0, length);
        return iAccessRuleArr;
    }

    @Override
    public int getContentKind() {
        return this.contentKind;
    }

    @Override
    public int getEntryKind() {
        return this.entryKind;
    }

    @Override
    public IPath[] getExclusionPatterns() {
        return this.exclusionPatterns;
    }

    @Override
    public IClasspathAttribute[] getExtraAttributes() {
        return this.extraAttributes;
    }

    @Override
    public IPath[] getInclusionPatterns() {
        return this.inclusionPatterns;
    }

    public URL getLibraryIndexLocation() {
        int entryKind = getEntryKind();
        if ((entryKind != 1 && entryKind != 4) || this.extraAttributes == null) {
            return null;
        }
        int i10 = 0;
        while (true) {
            IClasspathAttribute[] iClasspathAttributeArr = this.extraAttributes;
            if (i10 >= iClasspathAttributeArr.length) {
                return null;
            }
            IClasspathAttribute iClasspathAttribute = iClasspathAttributeArr[i10];
            if (IClasspathAttribute.INDEX_LOCATION_ATTRIBUTE_NAME.equals(iClasspathAttribute.getName())) {
                try {
                    return new URL(iClasspathAttribute.getValue());
                } catch (MalformedURLException unused) {
                    return null;
                }
            }
            i10++;
        }
    }

    @Override
    public IPath getOutputLocation() {
        return this.specificOutputLocation;
    }

    @Override
    public IPath getPath() {
        return this.path;
    }

    @Override
    public IClasspathEntry getReferencingEntry() {
        return this.referencingEntry;
    }

    @Override
    public IClasspathEntry getResolvedEntry() {
        return JavaCore.getResolvedClasspathEntry(this);
    }

    public String getSourceAttachmentEncoding() {
        int length = this.extraAttributes.length;
        for (int i10 = 0; i10 < length; i10++) {
            IClasspathAttribute iClasspathAttribute = this.extraAttributes[i10];
            if (IClasspathAttribute.SOURCE_ATTACHMENT_ENCODING.equals(iClasspathAttribute.getName())) {
                return iClasspathAttribute.getValue();
            }
        }
        return null;
    }

    @Override
    public IPath getSourceAttachmentPath() {
        return this.sourceAttachmentPath;
    }

    @Override
    public IPath getSourceAttachmentRootPath() {
        return this.sourceAttachmentRootPath;
    }

    public int hashCode() {
        return this.path.hashCode();
    }

    public boolean ignoreOptionalProblems() {
        if (this.entryKind == 3) {
            int i10 = 0;
            while (true) {
                IClasspathAttribute[] iClasspathAttributeArr = this.extraAttributes;
                if (i10 >= iClasspathAttributeArr.length) {
                    break;
                }
                IClasspathAttribute iClasspathAttribute = iClasspathAttributeArr[i10];
                if (IClasspathAttribute.IGNORE_OPTIONAL_PROBLEMS.equals(iClasspathAttribute.getName())) {
                    return "true".equals(iClasspathAttribute.getValue());
                }
                i10++;
            }
        }
        return false;
    }

    @Override
    public boolean isExported() {
        return this.isExported;
    }

    public boolean isModular() {
        int length = this.extraAttributes.length;
        for (int i10 = 0; i10 < length; i10++) {
            IClasspathAttribute iClasspathAttribute = this.extraAttributes[i10];
            if (IClasspathAttribute.MODULE.equals(iClasspathAttribute.getName()) && "true".equals(iClasspathAttribute.getValue())) {
                return true;
            }
        }
        return false;
    }

    public boolean isOptional() {
        int length = this.extraAttributes.length;
        for (int i10 = 0; i10 < length; i10++) {
            IClasspathAttribute iClasspathAttribute = this.extraAttributes[i10];
            if (IClasspathAttribute.OPTIONAL.equals(iClasspathAttribute.getName()) && "true".equals(iClasspathAttribute.getValue())) {
                return true;
            }
        }
        return false;
    }

    public ClasspathEntry resolvedDotDot(IPath iPath) {
        IPath resolveDotDot = resolveDotDot(iPath, this.path);
        return resolveDotDot == this.path ? this : new ClasspathEntry(getContentKind(), getEntryKind(), resolveDotDot, this.inclusionPatterns, this.exclusionPatterns, getSourceAttachmentPath(), getSourceAttachmentRootPath(), getOutputLocation(), getReferencingEntry(), this.isExported, getAccessRules(), this.combineAccessRules, this.extraAttributes);
    }

    public String rootID() {
        if (this.rootID == null) {
            int i10 = this.entryKind;
            if (i10 == 1) {
                this.rootID = "[LIB]" + ((Object) this.path);
            } else if (i10 == 2) {
                this.rootID = "[PRJ]" + ((Object) this.path);
            } else if (i10 == 3) {
                this.rootID = "[SRC]" + ((Object) this.path);
            } else if (i10 == 4) {
                this.rootID = "[VAR]" + ((Object) this.path);
            } else if (i10 != 5) {
                this.rootID = "";
            } else {
                this.rootID = "[CON]" + ((Object) this.path);
            }
        }
        return this.rootID;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (JavaModel.getTarget(getPath(), true) instanceof File) {
            stringBuffer.append(getPath().toOSString());
        } else {
            stringBuffer.append(String.valueOf(getPath()));
        }
        stringBuffer.append('[');
        int entryKind = getEntryKind();
        if (entryKind == 1) {
            stringBuffer.append("CPE_LIBRARY");
        } else if (entryKind == 2) {
            stringBuffer.append("CPE_PROJECT");
        } else if (entryKind == 3) {
            stringBuffer.append("CPE_SOURCE");
        } else if (entryKind == 4) {
            stringBuffer.append("CPE_VARIABLE");
        } else if (entryKind == 5) {
            stringBuffer.append("CPE_CONTAINER");
        }
        stringBuffer.append("][");
        int contentKind = getContentKind();
        if (contentKind == 1) {
            stringBuffer.append("K_SOURCE");
        } else if (contentKind == 2) {
            stringBuffer.append("K_BINARY");
        } else if (contentKind == 10) {
            stringBuffer.append("K_OUTPUT");
        }
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        if (getSourceAttachmentPath() != null) {
            stringBuffer.append("[sourcePath:");
            stringBuffer.append((Object) getSourceAttachmentPath());
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        if (getSourceAttachmentRootPath() != null) {
            stringBuffer.append("[rootPath:");
            stringBuffer.append((Object) getSourceAttachmentRootPath());
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        stringBuffer.append("[isExported:");
        stringBuffer.append(this.isExported);
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        IPath[] iPathArr = this.inclusionPatterns;
        int length = iPathArr == null ? 0 : iPathArr.length;
        if (length > 0) {
            stringBuffer.append("[including:");
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append((Object) iPathArr[i10]);
                if (i10 != length - 1) {
                    stringBuffer.append('|');
                }
            }
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        IPath[] iPathArr2 = this.exclusionPatterns;
        int length2 = iPathArr2 == null ? 0 : iPathArr2.length;
        if (length2 > 0) {
            stringBuffer.append("[excluding:");
            for (int i11 = 0; i11 < length2; i11++) {
                stringBuffer.append((Object) iPathArr2[i11]);
                if (i11 != length2 - 1) {
                    stringBuffer.append('|');
                }
            }
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        if (this.accessRuleSet != null) {
            stringBuffer.append('[');
            stringBuffer.append(this.accessRuleSet.toString(false));
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        if (this.entryKind == 2) {
            stringBuffer.append("[combine access rules:");
            stringBuffer.append(this.combineAccessRules);
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        if (getOutputLocation() != null) {
            stringBuffer.append("[output:");
            stringBuffer.append((Object) getOutputLocation());
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        IClasspathAttribute[] iClasspathAttributeArr = this.extraAttributes;
        int length3 = iClasspathAttributeArr == null ? 0 : iClasspathAttributeArr.length;
        if (length3 > 0) {
            stringBuffer.append("[attributes:");
            for (int i12 = 0; i12 < length3; i12++) {
                stringBuffer.append((Object) this.extraAttributes[i12]);
                if (i12 != length3 - 1) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
            }
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return stringBuffer.toString();
    }

    public ClasspathEntry withExtraAttributeRemoved(final String str) {
        return new ClasspathEntry(getContentKind(), getEntryKind(), getPath(), getInclusionPatterns(), getExclusionPatterns(), getSourceAttachmentPath(), getSourceAttachmentRootPath(), getOutputLocation(), getReferencingEntry(), isExported(), getAccessRules(), combineAccessRules(), (IClasspathAttribute[]) Arrays.stream(getExtraAttributes()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$0;
                lambda$0 = ClasspathEntry.lambda$0(String.this, (IClasspathAttribute) obj);
                return lambda$0;
            }
        }).toArray(new IntFunction() {
            @Override
            public final Object apply(int i10) {
                IClasspathAttribute[] lambda$1;
                lambda$1 = ClasspathEntry.lambda$1(i10);
                return lambda$1;
            }
        }));
    }

    public ClasspathEntry(int i10, int i11, IPath iPath, IPath[] iPathArr, IPath[] iPathArr2, IPath iPath2, IPath iPath3, IPath iPath4, IClasspathEntry iClasspathEntry, boolean z10, IAccessRule[] iAccessRuleArr, boolean z11, IClasspathAttribute[] iClasspathAttributeArr) {
        int length;
        String intern;
        this.contentKind = i10;
        this.entryKind = i11;
        this.path = iPath;
        this.inclusionPatterns = iPathArr;
        this.exclusionPatterns = iPathArr2;
        this.referencingEntry = iClasspathEntry;
        if (iAccessRuleArr != null && (length = iAccessRuleArr.length) > 0) {
            AccessRule[] accessRuleArr = new AccessRule[length];
            System.arraycopy(iAccessRuleArr, 0, accessRuleArr, 0, length);
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            int i12 = this.entryKind;
            byte b10 = 2;
            if (i12 != 2 && i12 != 3) {
                if (JavaModel.getWorkspaceTarget(iPath) == null) {
                    intern = javaModelManager.intern(iPath.toOSString());
                } else {
                    intern = javaModelManager.intern(iPath.makeRelative().toString());
                }
            } else {
                intern = javaModelManager.intern(getPath().segment(0));
                b10 = 1;
            }
            this.accessRuleSet = new AccessRuleSet(accessRuleArr, b10, intern);
        }
        this.combineAccessRules = z11;
        this.extraAttributes = iClasspathAttributeArr.length <= 0 ? NO_EXTRA_ATTRIBUTES : iClasspathAttributeArr;
        if (iPathArr != INCLUDE_ALL && iPathArr.length > 0) {
            this.fullInclusionPatternChars = UNINIT_PATTERNS;
        }
        if (iPathArr2.length > 0) {
            this.fullExclusionPatternChars = UNINIT_PATTERNS;
        }
        this.sourceAttachmentPath = iPath2;
        this.sourceAttachmentRootPath = iPath3;
        this.specificOutputLocation = iPath4;
        this.isExported = z10;
    }

    private static void resolvedChainedLibraries(IPath iPath, HashSet hashSet, ArrayList arrayList) {
        if (hashSet.contains(iPath)) {
            return;
        }
        hashSet.add(iPath);
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        if (javaModelManager.isNonChainingJar(iPath)) {
            return;
        }
        List<String> calledFileNames = getCalledFileNames(iPath);
        if (calledFileNames == null) {
            javaModelManager.addNonChainingJar(iPath);
            return;
        }
        IPath removeLastSegments = iPath.removeLastSegments(1);
        for (String str : calledFileNames) {
            if (!removeLastSegments.isValidPath(str)) {
                if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                    Util.verbose("Invalid Class-Path entry " + str + " in manifest of jar file: " + iPath.toOSString());
                }
            } else {
                IPath append = removeLastSegments.append(new Path(str));
                if (append.segmentCount() == 0) {
                    if (JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                        Util.verbose("Invalid Class-Path entry " + str + " in manifest of jar file: " + iPath.toOSString());
                    }
                } else {
                    resolvedChainedLibraries(append, hashSet, arrayList);
                    arrayList.add(append);
                }
            }
        }
    }

    public static IAccessRule[] getAccessRules(IPath[] iPathArr, IPath[] iPathArr2) {
        int length = iPathArr == null ? 0 : iPathArr.length;
        int length2 = iPathArr2 == null ? 0 : iPathArr2.length;
        int i10 = length + length2;
        if (i10 == 0) {
            return null;
        }
        IAccessRule[] iAccessRuleArr = new IAccessRule[i10];
        for (int i11 = 0; i11 < length; i11++) {
            iAccessRuleArr[i11] = JavaCore.newAccessRule(iPathArr[i11], 0);
        }
        for (int i12 = 0; i12 < length2; i12++) {
            iAccessRuleArr[length + i12] = JavaCore.newAccessRule(iPathArr2[i12], 1);
        }
        return iAccessRuleArr;
    }

    private static IJavaModelStatus validateClasspathEntry(IJavaProject iJavaProject, IClasspathEntry iClasspathEntry, IClasspathContainer iClasspathContainer, boolean z10, boolean z11) {
        String str;
        String bind;
        String classpathVariableDeprecationMessage;
        String rawExternalAnnotationPath;
        IPath path = iClasspathEntry.getPath();
        String elementName = iJavaProject.getElementName();
        int i10 = 0;
        String obj = elementName.equals(path.segment(0)) ? path.removeFirstSegments(1).makeRelative().toString() : path.toString();
        int entryKind = iClasspathEntry.getEntryKind();
        if (entryKind != 1) {
            if (entryKind == 2) {
                if (path.isAbsolute() && path.segmentCount() == 1) {
                    IProject project = workspaceRoot.getProject(path.segment(0));
                    IJavaProject create = JavaCore.create(project);
                    try {
                        if (project.exists() && project.hasNature(JavaCore.NATURE_ID)) {
                            if (!project.isOpen()) {
                                return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_closedProject, (Object[]) new String[]{path.segment(0)}));
                            }
                            if (!"ignore".equals(iJavaProject.getOption(JavaCore.CORE_INCOMPATIBLE_JDK_LEVEL, true))) {
                                long versionToJdkLevel = CompilerOptions.versionToJdkLevel(iJavaProject.getOption("org.eclipse.jdt.core.compiler.codegen.targetPlatform", true));
                                long versionToJdkLevel2 = CompilerOptions.versionToJdkLevel(create.getOption("org.eclipse.jdt.core.compiler.codegen.targetPlatform", true));
                                if (versionToJdkLevel2 > versionToJdkLevel) {
                                    return new JavaModelStatus(1004, iJavaProject, path, Messages.bind(Messages.classpath_incompatibleLibraryJDKLevel, (Object[]) new String[]{iJavaProject.getElementName(), CompilerOptions.versionFromJdkLevel(versionToJdkLevel), path.makeRelative().toString(), CompilerOptions.versionFromJdkLevel(versionToJdkLevel2)}));
                                }
                            }
                        }
                        return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundProject, (Object[]) new String[]{path.segment(0), elementName}));
                    } catch (CoreException unused) {
                        return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundProject, (Object[]) new String[]{path.segment(0), elementName}));
                    }
                }
                return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_illegalProjectPath, (Object[]) new String[]{path.toString(), elementName}));
            }
            if (entryKind != 3) {
                if (entryKind == 4) {
                    if (path.segmentCount() >= 1) {
                        try {
                            IClasspathEntry resolvedClasspathEntry = JavaCore.getResolvedClasspathEntry(iClasspathEntry);
                            if (resolvedClasspathEntry == null) {
                                return new JavaModelStatus(IJavaModelStatusConstants.CP_VARIABLE_PATH_UNBOUND, iJavaProject, path);
                            }
                            IJavaModelStatus validateClasspathEntry = validateClasspathEntry(iJavaProject, resolvedClasspathEntry, null, z10, false);
                            return (validateClasspathEntry.isOK() && (classpathVariableDeprecationMessage = JavaCore.getClasspathVariableDeprecationMessage(path.segment(0))) != null) ? new JavaModelStatus(2, 1010, iJavaProject, path, classpathVariableDeprecationMessage) : validateClasspathEntry;
                        } catch (AssertionFailedException e10) {
                            return new JavaModelStatus(IJavaModelStatusConstants.INVALID_PATH, e10.getMessage());
                        }
                    }
                    return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_illegalVariablePath, (Object[]) new String[]{obj, elementName}));
                }
                if (entryKind == 5) {
                    if (path.segmentCount() >= 1) {
                        try {
                            IClasspathAttribute[] extraAttributes = iClasspathEntry.getExtraAttributes();
                            if (extraAttributes != null) {
                                int length = extraAttributes.length;
                                HashSet hashSet = new HashSet(length);
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= length) {
                                        break;
                                    }
                                    String name = extraAttributes[i11].getName();
                                    if (!hashSet.add(name)) {
                                        r11 = new JavaModelStatus(977, Messages.bind(Messages.classpath_duplicateEntryExtraAttribute, (Object[]) new String[]{name, obj, elementName}));
                                        break;
                                    }
                                    i11++;
                                }
                                if (r11 == null && (rawExternalAnnotationPath = getRawExternalAnnotationPath(iClasspathEntry)) != null && (r11 = ((ClasspathEntry) iClasspathEntry).validateExternalAnnotationPath(iJavaProject, new Path(rawExternalAnnotationPath))) != null) {
                                    return r11;
                                }
                            }
                            IClasspathContainer classpathContainer = JavaModelManager.getJavaModelManager().getClasspathContainer(path, iJavaProject);
                            if (classpathContainer == null) {
                                return r11 != null ? r11 : new JavaModelStatus(IJavaModelStatusConstants.CP_CONTAINER_PATH_UNBOUND, iJavaProject, path);
                            }
                            if (classpathContainer == JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS) {
                                return JavaModelStatus.VERIFIED_OK;
                            }
                            IClasspathEntry[] classpathEntries = classpathContainer.getClasspathEntries();
                            if (classpathEntries != null) {
                                int length2 = classpathEntries.length;
                                for (int i12 = 0; i12 < length2; i12++) {
                                    IClasspathEntry iClasspathEntry2 = classpathEntries[i12];
                                    int entryKind2 = iClasspathEntry2 == null ? 0 : iClasspathEntry2.getEntryKind();
                                    if (iClasspathEntry2 != null && entryKind2 != 3 && entryKind2 != 4 && entryKind2 != 5) {
                                        IJavaModelStatus validateClasspathEntry2 = validateClasspathEntry(iJavaProject, iClasspathEntry2, classpathContainer, z10, true);
                                        if (!validateClasspathEntry2.isOK()) {
                                            return validateClasspathEntry2;
                                        }
                                    }
                                    return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CP_CONTAINER_ENTRY, iJavaProject, path);
                                }
                            }
                        } catch (JavaModelException e11) {
                            return new JavaModelStatus(e11);
                        }
                    } else {
                        return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_illegalContainerPath, (Object[]) new String[]{obj, elementName}));
                    }
                }
            } else {
                if (((iClasspathEntry.getInclusionPatterns() != null && iClasspathEntry.getInclusionPatterns().length > 0) || (iClasspathEntry.getExclusionPatterns() != null && iClasspathEntry.getExclusionPatterns().length > 0)) && "disabled".equals(iJavaProject.getOption(JavaCore.CORE_ENABLE_CLASSPATH_EXCLUSION_PATTERNS, true))) {
                    return new JavaModelStatus(1002, iJavaProject, path);
                }
                if (iClasspathEntry.getOutputLocation() != null && "disabled".equals(iJavaProject.getOption(JavaCore.CORE_ENABLE_CLASSPATH_MULTIPLE_OUTPUT_LOCATIONS, true))) {
                    return new JavaModelStatus(1003, iJavaProject, path);
                }
                if (path.isAbsolute() && !path.isEmpty()) {
                    if (!iJavaProject.getProject().getFullPath().isPrefixOf(path) || JavaModel.getTarget(path, true) == null) {
                        return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_unboundSourceFolder, (Object[]) new String[]{obj, elementName}));
                    }
                } else {
                    return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CLASSPATH, Messages.bind(Messages.classpath_illegalSourceFolderPath, (Object[]) new String[]{obj, elementName}));
                }
            }
            i10 = 0;
        } else {
            IPath resolveDotDot = resolveDotDot(iJavaProject.getProject().getLocation(), path);
            if (iClasspathContainer != null) {
                if (iClasspathContainer instanceof UserLibraryClasspathContainer) {
                    bind = Messages.bind(Messages.classpath_userLibraryInfo, (Object[]) new String[]{iClasspathContainer.getDescription()});
                } else {
                    bind = Messages.bind(Messages.classpath_containerInfo, (Object[]) new String[]{iClasspathContainer.getDescription()});
                }
                str = bind;
            } else {
                str = null;
            }
            IJavaModelStatus validateLibraryEntry = validateLibraryEntry(resolveDotDot, iJavaProject, str, z10 ? iClasspathEntry.getSourceAttachmentPath() : null, obj, ((ClasspathEntry) iClasspathEntry).isOptional());
            if (!validateLibraryEntry.isOK()) {
                return validateLibraryEntry;
            }
        }
        IClasspathAttribute[] extraAttributes2 = iClasspathEntry.getExtraAttributes();
        if (extraAttributes2 != null) {
            int length3 = extraAttributes2.length;
            HashSet hashSet2 = new HashSet(length3);
            while (i10 < length3) {
                String name2 = extraAttributes2[i10].getName();
                if (!hashSet2.add(name2)) {
                    return new JavaModelStatus(977, Messages.bind(Messages.classpath_duplicateEntryExtraAttribute, (Object[]) new String[]{name2, obj, elementName}));
                }
                i10++;
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    private static void decodeUnknownNode(Node node, XMLWriter xMLWriter, boolean z10) {
        HashMap hashMap;
        int length;
        short nodeType = node.getNodeType();
        if (nodeType != 1) {
            if (nodeType != 3) {
                return;
            }
            xMLWriter.printString(((Text) node).getData(), false, false);
            return;
        }
        NamedNodeMap attributes = node.getAttributes();
        if (attributes == null || (length = attributes.getLength()) <= 0) {
            hashMap = null;
        } else {
            hashMap = new HashMap();
            for (int i10 = 0; i10 < length; i10++) {
                Node item = attributes.item(i10);
                hashMap.put(item.getNodeName(), item.getNodeValue());
            }
        }
        HashMap hashMap2 = hashMap;
        NodeList childNodes = node.getChildNodes();
        int length2 = childNodes.getLength();
        String nodeName = node.getNodeName();
        xMLWriter.printTag(nodeName, hashMap2, false, false, length2 == 0);
        if (length2 > 0) {
            for (int i11 = 0; i11 < length2; i11++) {
                decodeUnknownNode(childNodes.item(i11), xMLWriter, false);
            }
            xMLWriter.endTag(nodeName, false, z10);
        }
    }

    public ClasspathEntry[] resolvedChainedLibraries() {
        IPath[] resolvedChainedLibraries = resolvedChainedLibraries(getPath());
        int length = resolvedChainedLibraries.length;
        if (length == 0) {
            return NO_ENTRIES;
        }
        ClasspathEntry[] classpathEntryArr = new ClasspathEntry[length];
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10;
            ClasspathEntry[] classpathEntryArr2 = classpathEntryArr;
            classpathEntryArr2[i11] = new ClasspathEntry(getContentKind(), getEntryKind(), resolvedChainedLibraries[i10], this.inclusionPatterns, this.exclusionPatterns, null, null, getOutputLocation(), this, this.isExported, getAccessRules(), this.combineAccessRules, NO_EXTRA_ATTRIBUTES);
            i10 = i11 + 1;
            classpathEntryArr = classpathEntryArr2;
            length = length;
        }
        return classpathEntryArr;
    }
}
