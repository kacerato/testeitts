package org.eclipse.jdt.internal.core.search.indexing;

import b3.s;
import java.nio.charset.Charset;
import org.eclipse.jdt.core.search.SearchDocument;

public class ManifestIndexer extends AbstractIndexer {
    private static final String AUTOMATIC_MODULE_NAME = "Automatic-Module-Name";

    public ManifestIndexer(SearchDocument searchDocument) {
        super(searchDocument);
    }

    @Override
    public void indexDocument() {
        String str;
        String[] split = new String(this.document.getByteContents(), Charset.defaultCharset()).split(s.f32937c);
        if (split == null || split.length <= 1 || (str = split[0]) == null || split[1] == null || !str.equals("Automatic-Module-Name")) {
            return;
        }
        addModuleDeclaration(split[1].toCharArray());
    }
}
