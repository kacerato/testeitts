package org.eclipse.jdt.core.search;

import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.core.index.Index;

public abstract class SearchDocument {
    private String containerRelativePath;
    private String documentPath;
    private Index index;
    private SourceElementParser parser;
    private SearchParticipant participant;
    private boolean shouldIndexResolvedDocument = false;

    public SearchDocument(String str, SearchParticipant searchParticipant) {
        this.documentPath = str;
        this.participant = searchParticipant;
    }

    private String getContainerRelativePath() {
        if (this.containerRelativePath == null) {
            this.containerRelativePath = this.index.containerRelativePath(getPath());
        }
        return this.containerRelativePath;
    }

    public void addIndexEntry(char[] cArr, char[] cArr2) {
        Index index = this.index;
        if (index != null) {
            index.addIndexEntry(cArr, cArr2, getContainerRelativePath());
        }
    }

    public abstract byte[] getByteContents();

    public abstract char[] getCharContents();

    public abstract String getEncoding();

    public SourceElementParser getParser() {
        return this.parser;
    }

    public final SearchParticipant getParticipant() {
        return this.participant;
    }

    public final String getPath() {
        return this.documentPath;
    }

    public void removeAllIndexEntries() {
        Index index = this.index;
        if (index != null) {
            index.remove(getContainerRelativePath());
        }
    }

    public void requireIndexingResolvedDocument() {
        this.shouldIndexResolvedDocument = true;
    }

    public void setIndex(Index index) {
        this.index = index;
    }

    public void setParser(SourceElementParser sourceElementParser) {
        this.parser = sourceElementParser;
    }

    public boolean shouldIndexResolvedDocument() {
        return this.shouldIndexResolvedDocument;
    }
}
