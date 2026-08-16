package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.DeleteEdit;
import org.eclipse.text.edits.InsertEdit;
import org.eclipse.text.edits.MoveSourceEdit;
import org.eclipse.text.edits.MoveTargetEdit;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.RangeMarker;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

final class ImportEditor {
    private final RemovedImportCommentReassigner commentReassigner;
    private final ImportDeclarationWriter declarationWriter;
    private final boolean fixAllLineDelimiters;
    private final ImportGroupComparator importGroupComparator;
    private final String lineDelimiter;
    private final int lineDelimitersBetweenImportGroups;
    private final List<OriginalImportEntry> originalImportEntries;
    private final Map<ImportName, ImportEntry> originalPrecedingImports;
    private final RewriteSite rewriteSite;
    private final String twoLineDelimiters;

    public static final class ImportEdits {
        final Collection<TextEdit> commentAndDeclarationEdits;
        final Collection<TextEdit> leadingDelimiterEdits;

        public ImportEdits(Collection<TextEdit> collection, Collection<TextEdit> collection2) {
            this.leadingDelimiterEdits = collection;
            this.commentAndDeclarationEdits = collection2;
        }
    }

    public static final class OriginalImportsCursor {
        OriginalImportEntry currentOriginalImport;
        int currentPosition;
        private final Iterator<OriginalImportEntry> originalImportIterator;

        public OriginalImportsCursor(int i10, Collection<OriginalImportEntry> collection) {
            Iterator<OriginalImportEntry> it = collection.iterator();
            this.originalImportIterator = it;
            this.currentPosition = i10;
            this.currentOriginalImport = it.hasNext() ? it.next() : null;
        }

        public void advance() {
            IRegion iRegion = this.currentOriginalImport.declarationAndComments;
            this.currentPosition = iRegion.getOffset() + iRegion.getLength();
            this.currentOriginalImport = this.originalImportIterator.hasNext() ? this.originalImportIterator.next() : null;
        }
    }

    public ImportEditor(String str, boolean z10, int i10, ImportGroupComparator importGroupComparator, List<OriginalImportEntry> list, RewriteSite rewriteSite, ImportDeclarationWriter importDeclarationWriter) {
        this.lineDelimiter = str;
        this.twoLineDelimiters = str.concat(str);
        this.fixAllLineDelimiters = z10;
        this.lineDelimitersBetweenImportGroups = i10;
        this.importGroupComparator = importGroupComparator;
        this.originalImportEntries = list;
        this.rewriteSite = rewriteSite;
        this.declarationWriter = importDeclarationWriter;
        this.commentReassigner = new RemovedImportCommentReassigner(list);
        if (z10) {
            this.originalPrecedingImports = Collections.emptyMap();
        } else {
            this.originalPrecedingImports = Collections.unmodifiableMap(mapPrecedingImports(list));
        }
    }

    private static boolean containsFloatingComment(Iterable<ImportComment> iterable) {
        Iterator<ImportComment> it = iterable.iterator();
        while (it.hasNext()) {
            if (it.next().succeedingLineDelimiters > 1) {
                return true;
            }
        }
        return false;
    }

    private String createDelimiter(int i10) {
        if (i10 < 1) {
            throw new IllegalArgumentException();
        }
        if (i10 == 1) {
            return this.lineDelimiter;
        }
        if (i10 == 2) {
            return this.twoLineDelimiters;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(this.lineDelimiter);
        }
        return sb2.toString();
    }

    private static Collection<TextEdit> deleteRemainingText(IRegion iRegion, Collection<TextEdit> collection) {
        ArrayList<TextEdit> arrayList = new ArrayList(collection);
        Collections.sort(arrayList, new Comparator<TextEdit>() {
            @Override
            public int compare(TextEdit textEdit, TextEdit textEdit2) {
                return textEdit.getOffset() - textEdit2.getOffset();
            }
        });
        int offset = iRegion.getOffset();
        ArrayList arrayList2 = new ArrayList();
        for (TextEdit textEdit : arrayList) {
            if (textEdit.getOffset() > offset) {
                arrayList2.add(new DeleteEdit(offset, textEdit.getOffset() - offset));
            }
            offset = Math.max(offset, textEdit.getOffset() + textEdit.getLength());
        }
        int offset2 = iRegion.getOffset() + iRegion.getLength();
        if (offset < offset2) {
            arrayList2.add(new DeleteEdit(offset, offset2 - offset));
        }
        return arrayList2;
    }

    private Collection<TextEdit> determineEditsForImports(IRegion iRegion, Collection<ImportEntry> collection) {
        ArrayList<TextEdit> arrayList = new ArrayList();
        arrayList.addAll(placeResultantImports(new OriginalImportsCursor(iRegion.getOffset(), this.originalImportEntries), collection, this.commentReassigner.reassignComments(collection)));
        arrayList.addAll(deleteRemainingText(iRegion, arrayList));
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (TextEdit textEdit : arrayList) {
            if (!(textEdit instanceof RangeMarker)) {
                arrayList2.add(textEdit);
            }
        }
        return arrayList2;
    }

    private String determineNewDelimiter(ImportEntry importEntry, ImportEntry importEntry2, Collection<ImportComment> collection) {
        if (importEntry == null) {
            return "";
        }
        boolean isEmpty = collection.isEmpty();
        if (!needsStandardDelimiter(importEntry, importEntry2, !isEmpty)) {
            return null;
        }
        if (isEmpty) {
            collection = importEntry2.isOriginal() ? importEntry2.asOriginalImportEntry().comments : Collections.emptyList();
        }
        int i10 = containsFloatingComment(collection) ? 2 : 1;
        if (this.importGroupComparator.compare(importEntry.importName, importEntry2.importName) != 0) {
            i10 = Math.max(i10, this.lineDelimitersBetweenImportGroups);
        }
        String createDelimiter = createDelimiter(i10);
        if (importEntry2.isOriginal() && isEmpty) {
            OriginalImportEntry asOriginalImportEntry = importEntry2.asOriginalImportEntry();
            IRegion iRegion = asOriginalImportEntry.leadingDelimiter;
            if (asOriginalImportEntry.precedingLineDelimiters == i10 && ((iRegion == null && createDelimiter.isEmpty()) || (iRegion != null && iRegion.getLength() == createDelimiter.length()))) {
                return null;
            }
        }
        return createDelimiter;
    }

    private static Map<ImportName, ImportEntry> mapPrecedingImports(Collection<? extends ImportEntry> collection) {
        IdentityHashMap identityHashMap = new IdentityHashMap(collection.size());
        ImportEntry importEntry = null;
        for (ImportEntry importEntry2 : collection) {
            identityHashMap.put(importEntry2.importName, importEntry);
            importEntry = importEntry2;
        }
        return identityHashMap;
    }

    private ImportEdits moveOriginalImport(OriginalImportEntry originalImportEntry, int i10) {
        TextEdit moveSourceEdit = new MoveSourceEdit(originalImportEntry.leadingDelimiter.getOffset(), originalImportEntry.leadingDelimiter.getLength());
        List asList = Arrays.asList(moveSourceEdit, new MoveTargetEdit(i10, moveSourceEdit));
        TextEdit moveSourceEdit2 = new MoveSourceEdit(originalImportEntry.declarationAndComments.getOffset(), originalImportEntry.declarationAndComments.getLength());
        return new ImportEdits(asList, Arrays.asList(moveSourceEdit2, new MoveTargetEdit(i10, moveSourceEdit2)));
    }

    private boolean needsStandardDelimiter(ImportEntry importEntry, ImportEntry importEntry2, boolean z10) {
        ImportEntry importEntry3;
        return this.fixAllLineDelimiters || !importEntry2.isOriginal() || z10 || (importEntry3 = this.originalPrecedingImports.get(importEntry2.importName)) == null || importEntry.importName != importEntry3.importName;
    }

    private ImportEdits placeNewImport(ImportEntry importEntry, int i10) {
        return new ImportEdits(Collections.emptySet(), Collections.singleton(new InsertEdit(i10, this.declarationWriter.writeImportDeclaration(importEntry.importName))));
    }

    private Collection<TextEdit> placeResultantImports(OriginalImportsCursor originalImportsCursor, Collection<ImportEntry> collection, Map<ImportEntry, Collection<ImportComment>> map) {
        ImportEdits placeNewImport;
        ArrayList arrayList = new ArrayList();
        Iterator<ImportEntry> it = collection.iterator();
        ImportEntry importEntry = null;
        while (it.hasNext()) {
            ImportEntry next = it.next();
            if (next.isOriginal()) {
                while (true) {
                    OriginalImportEntry originalImportEntry = originalImportsCursor.currentOriginalImport;
                    if (originalImportEntry == null || originalImportEntry == next) {
                        break;
                    }
                    originalImportsCursor.advance();
                }
            }
            Collection<ImportComment> collection2 = map.get(next);
            if (collection2 == null) {
                collection2 = Collections.emptyList();
            }
            if (next.isOriginal()) {
                OriginalImportEntry asOriginalImportEntry = next.asOriginalImportEntry();
                placeNewImport = originalImportsCursor.currentOriginalImport == next ? preserveStationaryImport(asOriginalImportEntry) : moveOriginalImport(asOriginalImportEntry, originalImportsCursor.currentPosition);
            } else {
                placeNewImport = placeNewImport(next, originalImportsCursor.currentPosition);
            }
            String determineNewDelimiter = determineNewDelimiter(importEntry, next, collection2);
            if (determineNewDelimiter == null) {
                arrayList.addAll(placeNewImport.leadingDelimiterEdits);
            } else if (!determineNewDelimiter.isEmpty()) {
                arrayList.add(new InsertEdit(originalImportsCursor.currentPosition, determineNewDelimiter));
            }
            if (!collection2.isEmpty()) {
                arrayList.addAll(relocateComments(collection2, originalImportsCursor.currentPosition));
                arrayList.add(new InsertEdit(originalImportsCursor.currentPosition, (next.isOriginal() && containsFloatingComment(next.asOriginalImportEntry().comments)) ? this.twoLineDelimiters : this.lineDelimiter));
            }
            arrayList.addAll(placeNewImport.commentAndDeclarationEdits);
            if (next == originalImportsCursor.currentOriginalImport) {
                originalImportsCursor.advance();
            }
            importEntry = next;
        }
        return arrayList;
    }

    private ImportEdits preserveStationaryImport(OriginalImportEntry originalImportEntry) {
        return new ImportEdits(Collections.singleton(new RangeMarker(originalImportEntry.leadingDelimiter.getOffset(), originalImportEntry.leadingDelimiter.getLength())), Collections.singleton(new RangeMarker(originalImportEntry.declarationAndComments.getOffset(), originalImportEntry.declarationAndComments.getLength())));
    }

    private Collection<TextEdit> relocateComments(Collection<ImportComment> collection, int i10) {
        if (collection.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(collection.size() * 3);
        ImportComment importComment = null;
        for (ImportComment importComment2 : collection) {
            MoveSourceEdit moveSourceEdit = new MoveSourceEdit(importComment2.region.getOffset(), importComment2.region.getLength());
            arrayList.add(moveSourceEdit);
            if (importComment != null) {
                arrayList.add(new InsertEdit(i10, createDelimiter(importComment.succeedingLineDelimiters > 1 ? 2 : 1)));
            }
            arrayList.add(new MoveTargetEdit(i10, moveSourceEdit));
            importComment = importComment2;
        }
        return arrayList;
    }

    public TextEdit createTextEdit(Collection<ImportEntry> collection) {
        String str;
        MultiTextEdit multiTextEdit = new MultiTextEdit();
        IRegion iRegion = this.rewriteSite.surroundingRegion;
        if (collection.isEmpty()) {
            if (!this.originalImportEntries.isEmpty()) {
                RewriteSite rewriteSite = this.rewriteSite;
                if (rewriteSite.hasPrecedingElements) {
                    str = createDelimiter(rewriteSite.hasSucceedingElements ? 2 : 1);
                } else {
                    str = "";
                }
                multiTextEdit.addChild(new ReplaceEdit(iRegion.getOffset(), iRegion.getLength(), str));
            }
        } else if (this.originalImportEntries.isEmpty()) {
            Collection<TextEdit> determineEditsForImports = determineEditsForImports(iRegion, collection);
            if (this.rewriteSite.hasPrecedingElements) {
                multiTextEdit.addChild(new InsertEdit(iRegion.getOffset(), createDelimiter(2)));
            }
            multiTextEdit.addChildren((TextEdit[]) determineEditsForImports.toArray(new TextEdit[determineEditsForImports.size()]));
            multiTextEdit.addChild(new InsertEdit(iRegion.getOffset(), createDelimiter(this.rewriteSite.hasSucceedingElements ? 2 : 1)));
        } else {
            Collection<TextEdit> determineEditsForImports2 = determineEditsForImports(this.rewriteSite.importsRegion, collection);
            multiTextEdit.addChildren((TextEdit[]) determineEditsForImports2.toArray(new TextEdit[determineEditsForImports2.size()]));
        }
        return multiTextEdit;
    }
}
