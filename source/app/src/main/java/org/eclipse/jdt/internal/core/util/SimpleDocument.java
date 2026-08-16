package org.eclipse.jdt.internal.core.util;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.jface.text.IDocumentPartitioningListener;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;

public class SimpleDocument implements IDocument {
    private StringBuffer buffer;

    public SimpleDocument(String str) {
        this.buffer = new StringBuffer(str);
    }

    public void addDocumentListener(IDocumentListener iDocumentListener) {
    }

    public void addDocumentPartitioningListener(IDocumentPartitioningListener iDocumentPartitioningListener) {
    }

    public void addPosition(String str, Position position) {
    }

    public void addPositionCategory(String str) {
    }

    public void addPositionUpdater(IPositionUpdater iPositionUpdater) {
    }

    public void addPrenotifiedDocumentListener(IDocumentListener iDocumentListener) {
    }

    public int computeIndexInCategory(String str, int i10) {
        return 0;
    }

    public int computeNumberOfLines(String str) {
        return 0;
    }

    public ITypedRegion[] computePartitioning(int i10, int i11) {
        return null;
    }

    public boolean containsPosition(String str, int i10, int i11) {
        return false;
    }

    public boolean containsPositionCategory(String str) {
        return false;
    }

    public String get() {
        return this.buffer.toString();
    }

    public char getChar(int i10) {
        return (char) 0;
    }

    public String getContentType(int i10) {
        return null;
    }

    public IDocumentPartitioner getDocumentPartitioner() {
        return null;
    }

    public String[] getLegalContentTypes() {
        return null;
    }

    public String[] getLegalLineDelimiters() {
        return null;
    }

    public int getLength() {
        return this.buffer.length();
    }

    public String getLineDelimiter(int i10) {
        return null;
    }

    public IRegion getLineInformation(int i10) {
        return null;
    }

    public IRegion getLineInformationOfOffset(int i10) {
        return null;
    }

    public int getLineLength(int i10) {
        return 0;
    }

    public int getLineOfOffset(int i10) {
        return 0;
    }

    public int getLineOffset(int i10) {
        return 0;
    }

    public int getNumberOfLines() {
        return 0;
    }

    public ITypedRegion getPartition(int i10) {
        return null;
    }

    public String[] getPositionCategories() {
        return null;
    }

    public IPositionUpdater[] getPositionUpdaters() {
        return null;
    }

    public Position[] getPositions(String str) {
        return null;
    }

    public void insertPositionUpdater(IPositionUpdater iPositionUpdater, int i10) {
    }

    public void removeDocumentListener(IDocumentListener iDocumentListener) {
    }

    public void removeDocumentPartitioningListener(IDocumentPartitioningListener iDocumentPartitioningListener) {
    }

    public void removePosition(String str, Position position) {
    }

    public void removePositionCategory(String str) {
    }

    public void removePositionUpdater(IPositionUpdater iPositionUpdater) {
    }

    public void removePrenotifiedDocumentListener(IDocumentListener iDocumentListener) {
    }

    public void replace(int i10, int i11, String str) {
        this.buffer.replace(i10, i11 + i10, str);
    }

    public int search(int i10, String str, boolean z10, boolean z11, boolean z12) {
        return 0;
    }

    public void set(String str) {
    }

    public void setDocumentPartitioner(IDocumentPartitioner iDocumentPartitioner) {
    }

    public void addPosition(Position position) {
    }

    public String get(int i10, int i11) {
        return this.buffer.substring(i10, i11 + i10);
    }

    public int getNumberOfLines(int i10, int i11) {
        return 0;
    }

    public void removePosition(Position position) {
    }
}
