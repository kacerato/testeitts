package org.eclipse.jdt.internal.core.search.indexing;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.index.FileIndexLocation;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.JavaSearchDocument;

public class DefaultJavaIndexer {
    private static final char JAR_SEPARATOR = "|".charAt(0);

    public void generateIndexForJar(String str, String str2) throws IOException {
        if (!new File(str).exists()) {
            throw new FileNotFoundException(String.valueOf(str) + " not found");
        }
        Index index = new Index(new FileIndexLocation(new File(str2)), str, false);
        SearchParticipant defaultSearchParticipant = SearchEngine.getDefaultSearchParticipant();
        index.separator = JAR_SEPARATOR;
        ZipFile zipFile = new ZipFile(str);
        try {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                if (Util.isClassFileName(nextElement.getName())) {
                    JavaSearchDocument javaSearchDocument = new JavaSearchDocument(nextElement, new Path(str), Util.getZipEntryByteContent(nextElement, zipFile), defaultSearchParticipant);
                    javaSearchDocument.setIndex(index);
                    new BinaryIndexer(javaSearchDocument).indexDocument();
                }
            }
            index.save();
        } finally {
            zipFile.close();
        }
    }
}
