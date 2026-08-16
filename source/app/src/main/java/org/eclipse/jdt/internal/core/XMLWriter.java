package org.eclipse.jdt.internal.core;

import java.io.Writer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.internal.compiler.util.GenericXMLWriter;
import org.eclipse.jdt.internal.core.util.Util;

public class XMLWriter extends GenericXMLWriter {
    public XMLWriter(Writer writer, IJavaProject iJavaProject, boolean z10) {
        super(writer, Util.getLineSeparator((String) null, iJavaProject), z10);
    }
}
