package org.eclipse.jdt.internal.core;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.util.Messages;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class UserLibrary {
    private static final String CURRENT_VERSION = "2";
    private static final String TAG_ARCHIVE = "archive";
    private static final String TAG_PATH = "path";
    private static final String TAG_SOURCEATTACHMENT = "sourceattachment";
    private static final String TAG_SOURCEATTACHMENTROOT = "sourceattachmentroot";
    private static final String TAG_SYSTEMLIBRARY = "systemlibrary";
    private static final String TAG_USERLIBRARY = "userlibrary";
    private static final String TAG_VERSION = "version";
    private static final String VERSION_ONE = "1";
    private IClasspathEntry[] entries;
    private boolean isSystemLibrary;

    public UserLibrary(IClasspathEntry[] iClasspathEntryArr, boolean z10) {
        Assert.isNotNull(iClasspathEntryArr);
        this.entries = iClasspathEntryArr;
        this.isSystemLibrary = z10;
    }

    public static UserLibrary createFromString(Reader reader) throws IOException {
        IPath fromPortableString;
        IPath fromPortableString2;
        try {
            try {
                try {
                    Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(reader)).getDocumentElement();
                    reader.close();
                    if (!documentElement.getNodeName().equalsIgnoreCase(TAG_USERLIBRARY)) {
                        throw new IOException(Messages.file_badFormat);
                    }
                    String attribute = documentElement.getAttribute("version");
                    boolean booleanValue = Boolean.valueOf(documentElement.getAttribute(TAG_SYSTEMLIBRARY)).booleanValue();
                    NodeList childNodes = documentElement.getChildNodes();
                    int length = childNodes.getLength();
                    ArrayList arrayList = new ArrayList(length);
                    for (int i10 = 0; i10 < length; i10++) {
                        Node item = childNodes.item(i10);
                        if (item.getNodeType() == 1) {
                            Element element = (Element) item;
                            if (element.getNodeName().equals(TAG_ARCHIVE)) {
                                String attribute2 = element.getAttribute("path");
                                IPath iPath = null;
                                String attribute3 = element.hasAttribute(TAG_SOURCEATTACHMENT) ? element.getAttribute(TAG_SOURCEATTACHMENT) : null;
                                String attribute4 = element.hasAttribute(TAG_SOURCEATTACHMENTROOT) ? element.getAttribute(TAG_SOURCEATTACHMENTROOT) : null;
                                if (attribute.equals("1")) {
                                    fromPortableString = Path.fromOSString(attribute2);
                                    fromPortableString2 = attribute3 != null ? Path.fromOSString(attribute3) : null;
                                    if (attribute4 != null) {
                                        iPath = Path.fromOSString(attribute4);
                                    }
                                } else {
                                    fromPortableString = Path.fromPortableString(attribute2);
                                    fromPortableString2 = attribute3 != null ? Path.fromPortableString(attribute3) : null;
                                    if (attribute4 != null) {
                                        iPath = Path.fromPortableString(attribute4);
                                    }
                                }
                                IPath iPath2 = fromPortableString;
                                IPath iPath3 = fromPortableString2;
                                IPath iPath4 = iPath;
                                NodeList elementsByTagName = element.getElementsByTagName("*");
                                boolean[] zArr = new boolean[elementsByTagName.getLength()];
                                arrayList.add(JavaCore.newLibraryEntry(iPath2, iPath3, iPath4, ClasspathEntry.decodeAccessRules(ClasspathEntry.getChildAttributes(ClasspathEntry.TAG_ACCESS_RULES, elementsByTagName, zArr)), ClasspathEntry.decodeExtraAttributes(ClasspathEntry.getChildAttributes(ClasspathEntry.TAG_ATTRIBUTES, elementsByTagName, zArr)), false));
                            }
                        }
                    }
                    return new UserLibrary((IClasspathEntry[]) arrayList.toArray(new IClasspathEntry[arrayList.size()]), booleanValue);
                } catch (ParserConfigurationException e10) {
                    e = e10;
                    throw new IOException(Messages.file_badFormat, e);
                } catch (SAXException e11) {
                    e = e11;
                    throw new IOException(Messages.file_badFormat, e);
                }
            } catch (Throwable th2) {
                th = th2;
                reader.close();
                throw th;
            }
        } catch (ParserConfigurationException e12) {
            e = e12;
        } catch (SAXException e13) {
            e = e13;
        } catch (Throwable th3) {
            th = th3;
            reader.close();
            throw th;
        }
    }

    public static String serialize(IClasspathEntry[] iClasspathEntryArr, boolean z10) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, "UTF8");
        XMLWriter xMLWriter = new XMLWriter(outputStreamWriter, null, true);
        HashMap hashMap = new HashMap();
        hashMap.put("version", "2");
        hashMap.put(TAG_SYSTEMLIBRARY, String.valueOf(z10));
        xMLWriter.printTag(TAG_USERLIBRARY, hashMap, true, true, false);
        for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
            ClasspathEntry classpathEntry = (ClasspathEntry) iClasspathEntry;
            HashMap hashMap2 = new HashMap();
            hashMap2.put("path", classpathEntry.getPath().toPortableString());
            IPath sourceAttachmentPath = classpathEntry.getSourceAttachmentPath();
            if (sourceAttachmentPath != null) {
                hashMap2.put(TAG_SOURCEATTACHMENT, sourceAttachmentPath.toPortableString());
            }
            IPath sourceAttachmentRootPath = classpathEntry.getSourceAttachmentRootPath();
            if (sourceAttachmentRootPath != null) {
                hashMap2.put(TAG_SOURCEATTACHMENTROOT, sourceAttachmentRootPath.toPortableString());
            }
            IClasspathAttribute[] iClasspathAttributeArr = classpathEntry.extraAttributes;
            boolean z11 = (iClasspathAttributeArr == null || iClasspathAttributeArr.length == 0) ? false : true;
            boolean z12 = classpathEntry.getAccessRuleSet() != null;
            xMLWriter.printTag(TAG_ARCHIVE, hashMap2, true, true, (z11 || z12) ? false : true);
            if (z11) {
                classpathEntry.encodeExtraAttributes(xMLWriter, true, true);
            }
            if (z12) {
                classpathEntry.encodeAccessRules(xMLWriter, true, true);
            }
            if (z11 || z12) {
                xMLWriter.endTag(TAG_ARCHIVE, true, true);
            }
        }
        xMLWriter.endTag(TAG_USERLIBRARY, true, true);
        outputStreamWriter.flush();
        outputStreamWriter.close();
        return byteArrayOutputStream.toString("UTF8");
    }

    public boolean equals(Object obj) {
        if (obj != null && obj.getClass() == getClass()) {
            UserLibrary userLibrary = (UserLibrary) obj;
            if (this.entries.length == userLibrary.entries.length && this.isSystemLibrary == userLibrary.isSystemLibrary) {
                int i10 = 0;
                while (true) {
                    IClasspathEntry[] iClasspathEntryArr = this.entries;
                    if (i10 >= iClasspathEntryArr.length) {
                        return true;
                    }
                    if (!iClasspathEntryArr[i10].equals(userLibrary.entries[i10])) {
                        return false;
                    }
                    i10++;
                }
            }
        }
        return false;
    }

    public IClasspathEntry[] getEntries() {
        return this.entries;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int i10 = 0;
        int i11 = this.isSystemLibrary;
        while (true) {
            IClasspathEntry[] iClasspathEntryArr = this.entries;
            if (i10 >= iClasspathEntryArr.length) {
                return i11;
            }
            int hashCode = (i11 * 17) + iClasspathEntryArr[i10].hashCode();
            i10++;
            i11 = hashCode;
        }
    }

    public boolean isSystemLibrary() {
        return this.isSystemLibrary;
    }

    public String toString() {
        if (this.entries == null) {
            return "null";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int length = this.entries.length;
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append(String.valueOf(this.entries[i10].toString()) + '\n');
        }
        return stringBuffer.toString();
    }
}
