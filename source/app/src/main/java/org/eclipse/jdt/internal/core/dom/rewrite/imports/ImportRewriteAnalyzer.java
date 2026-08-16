package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Comment;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.dom.rewrite.imports.ConflictIdentifier;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.text.edits.TextEdit;

public final class ImportRewriteAnalyzer {
    private final ConflictIdentifier conflictIdentifier;
    private final Set<String> implicitImportContainerNames;
    private final ImportAdder importAdder;
    private final ImportDeclarationWriter importDeclarationWriter;
    private final ImportEditor importEditor;
    private final Map<ImportName, OriginalImportEntry> importsByNameIdentity;
    private final Set<ImportName> importsToAdd;
    private final Set<ImportName> importsToRemove;
    private final String lineDelimiter;
    private final OnDemandComputer onDemandComputer;
    private final List<OriginalImportEntry> originalImportEntries;
    private final List<ImportName> originalImportsList;
    private final Set<ImportName> originalImportsSet;
    private final boolean reportAllResultantImportsAsCreated;
    private final Set<String> staticExplicitSimpleNames;
    private final Set<String> typeExplicitSimpleNames;

    public static final class RewriteResult {
        private final Set<ImportName> createdImports;
        private final TextEdit textEdit;

        public RewriteResult(TextEdit textEdit, Set<ImportName> set) {
            this.textEdit = textEdit;
            this.createdImports = Collections.unmodifiableSet(set);
        }

        private String[] extractQualifiedNames(boolean z10, Collection<ImportName> collection) {
            ArrayList arrayList = new ArrayList(collection.size());
            for (ImportName importName : collection) {
                if (importName.isStatic == z10) {
                    arrayList.add(importName.qualifiedName);
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }

        public String[] getCreatedImports() {
            return extractQualifiedNames(false, this.createdImports);
        }

        public String[] getCreatedStaticImports() {
            return extractQualifiedNames(true, this.createdImports);
        }

        public TextEdit getTextEdit() {
            return this.textEdit;
        }
    }

    public ImportRewriteAnalyzer(ICompilationUnit iCompilationUnit, CompilationUnit compilationUnit, ImportRewriteConfiguration importRewriteConfiguration) throws JavaModelException {
        List<OriginalImportEntry> unmodifiableList = Collections.unmodifiableList(readOriginalImports(compilationUnit));
        this.originalImportEntries = unmodifiableList;
        ArrayList arrayList = new ArrayList(unmodifiableList.size());
        HashSet hashSet = new HashSet();
        Iterator<OriginalImportEntry> it = unmodifiableList.iterator();
        while (it.hasNext()) {
            ImportName importName = it.next().importName;
            arrayList.add(importName);
            hashSet.add(importName);
        }
        this.originalImportsList = Collections.unmodifiableList(arrayList);
        this.originalImportsSet = Collections.unmodifiableSet(hashSet);
        this.importsToAdd = new LinkedHashSet();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.importsToRemove = linkedHashSet;
        if (importRewriteConfiguration.originalImportHandling.shouldRemoveOriginalImports()) {
            linkedHashSet.addAll(hashSet);
            this.reportAllResultantImportsAsCreated = true;
        } else {
            this.reportAllResultantImportsAsCreated = false;
        }
        this.typeExplicitSimpleNames = new HashSet();
        this.staticExplicitSimpleNames = new HashSet();
        ImportGroupComparator importGroupComparator = new ImportGroupComparator(importRewriteConfiguration.importOrder);
        JavaProject javaProject = (JavaProject) iCompilationUnit.getJavaProject();
        this.importAdder = importRewriteConfiguration.originalImportHandling.createImportAdder(new ImportComparator(importGroupComparator, importRewriteConfiguration.typeContainerSorting.createContainerComparator(javaProject), importRewriteConfiguration.staticContainerSorting.createContainerComparator(javaProject)));
        Set<String> determineImplicitImportContainers = importRewriteConfiguration.implicitImportIdentification.determineImplicitImportContainers(iCompilationUnit);
        this.implicitImportContainerNames = determineImplicitImportContainers;
        OnDemandComputer onDemandComputer = new OnDemandComputer(importRewriteConfiguration.typeOnDemandThreshold, importRewriteConfiguration.staticOnDemandThreshold);
        this.onDemandComputer = onDemandComputer;
        this.conflictIdentifier = new ConflictIdentifier(onDemandComputer, new TypeConflictingSimpleNameFinder(javaProject, new SearchEngine()), new StaticConflictingSimpleNameFinder(javaProject), determineImplicitImportContainers);
        this.importsByNameIdentity = mapImportsByNameIdentity(this.originalImportEntries);
        ImportDeclarationWriter importDeclarationWriter = new ImportDeclarationWriter(shouldInsertSpaceBeforeSemicolon(javaProject));
        this.importDeclarationWriter = importDeclarationWriter;
        String findRecommendedLineSeparator = iCompilationUnit.findRecommendedLineSeparator();
        this.lineDelimiter = findRecommendedLineSeparator;
        boolean shouldFixAllLineDelimiters = importRewriteConfiguration.originalImportHandling.shouldFixAllLineDelimiters();
        int blankLinesBetweenImportGroups = getBlankLinesBetweenImportGroups(javaProject) + 1;
        List<OriginalImportEntry> list = this.originalImportEntries;
        this.importEditor = new ImportEditor(findRecommendedLineSeparator, shouldFixAllLineDelimiters, blankLinesBetweenImportGroups, importGroupComparator, list, determineRewriteSite(compilationUnit, list), importDeclarationWriter);
    }

    private ImportsDelta computeDelta(Collection<ImportName> collection, Collection<OnDemandReduction> collection2) {
        ArrayList arrayList = new ArrayList(this.originalImportsList.size());
        arrayList.addAll(this.importsToAdd);
        ArrayList arrayList2 = new ArrayList(this.originalImportsList.size());
        arrayList2.addAll(this.importsToRemove);
        arrayList2.addAll(collection);
        arrayList.removeAll(arrayList2);
        for (OnDemandReduction onDemandReduction : collection2) {
            arrayList.removeAll(onDemandReduction.reducibleImports);
            arrayList2.addAll(onDemandReduction.reducibleImports);
            arrayList.add(onDemandReduction.containerOnDemand);
            arrayList2.remove(onDemandReduction.containerOnDemand);
        }
        return new ImportsDelta(arrayList, arrayList2);
    }

    private List<ImportName> computeImportOrder(IProgressMonitor iProgressMonitor) throws JavaModelException {
        HashSet hashSet = new HashSet(this.originalImportsSet);
        hashSet.addAll(this.importsToAdd);
        hashSet.removeAll(this.importsToRemove);
        Set<ImportName> determineTouchedContainers = determineTouchedContainers();
        ConflictIdentifier.Conflicts identifyConflicts = this.conflictIdentifier.identifyConflicts(hashSet, determineTouchedContainers, this.typeExplicitSimpleNames, this.staticExplicitSimpleNames, iProgressMonitor);
        HashSet hashSet2 = new HashSet(this.typeExplicitSimpleNames);
        hashSet2.addAll(identifyConflicts.typeConflicts);
        HashSet hashSet3 = new HashSet(this.staticExplicitSimpleNames);
        hashSet3.addAll(identifyConflicts.staticConflicts);
        Set<ImportName> identifyImplicitImports = identifyImplicitImports(this.importsToAdd, hashSet2);
        ImportsDelta computeDelta = computeDelta(identifyImplicitImports, this.onDemandComputer.identifyPossibleReductions(new HashSet(subtractImports(hashSet, identifyImplicitImports)), determineTouchedContainers, hashSet2, hashSet3));
        return this.importAdder.addImports(subtractImports(this.originalImportsList, computeDelta.importsToRemove), computeDelta.importsToAdd);
    }

    private static IRegion determineImportsRegion(List<OriginalImportEntry> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        int offset = list.get(0).declarationAndComments.getOffset();
        OriginalImportEntry originalImportEntry = list.get(list.size() - 1);
        return new Region(offset, (originalImportEntry.declarationAndComments.getOffset() + originalImportEntry.declarationAndComments.getLength()) - offset);
    }

    private static RewriteSite determineRewriteSite(CompilationUnit compilationUnit, List<OriginalImportEntry> list) throws JavaModelException {
        IRegion determineImportsRegion = determineImportsRegion(list);
        IRegion determineSurroundingRegion = determineSurroundingRegion(compilationUnit, determineImportsRegion);
        return new RewriteSite(determineSurroundingRegion, determineImportsRegion, determineSurroundingRegion.getOffset() != 0, determineSurroundingRegion.getOffset() + determineSurroundingRegion.getLength() != compilationUnit.getLength());
    }

    private static IRegion determineSurroundingRegion(CompilationUnit compilationUnit, IRegion iRegion) throws JavaModelException {
        int i10;
        NavigableMap<Integer, ASTNode> mapTopLevelNodes = mapTopLevelNodes(compilationUnit);
        if (iRegion == null) {
            PackageDeclaration packageDeclaration = compilationUnit.getPackage();
            r1 = packageDeclaration != null ? compilationUnit.getExtendedStartPosition(packageDeclaration) + compilationUnit.getExtendedLength(packageDeclaration) : 0;
            i10 = r1;
        } else {
            Map.Entry<Integer, ASTNode> lowerEntry = mapTopLevelNodes.lowerEntry(Integer.valueOf(iRegion.getOffset()));
            if (lowerEntry != null) {
                ASTNode value = lowerEntry.getValue();
                r1 = value.getStartPosition() + value.getLength();
            }
            int i11 = r1;
            r1 = iRegion.getLength() + iRegion.getOffset();
            i10 = i11;
        }
        IBuffer buffer = compilationUnit.getTypeRoot().getBuffer();
        int length = buffer.getLength();
        while (r1 < length && Character.isWhitespace(buffer.getChar(r1))) {
            r1++;
        }
        return new Region(i10, r1 - i10);
    }

    private Set<ImportName> determineTouchedContainers() {
        ArrayList arrayList = new ArrayList(this.importsToAdd.size() + this.importsToRemove.size());
        Iterator<ImportName> it = this.importsToAdd.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getContainerOnDemand());
        }
        Iterator<ImportName> it2 = this.importsToRemove.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getContainerOnDemand());
        }
        return Collections.unmodifiableSet(new HashSet(arrayList));
    }

    private static int getBlankLinesBetweenImportGroups(IJavaProject iJavaProject) {
        int i10;
        String option = iJavaProject.getOption(DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BETWEEN_IMPORT_GROUPS, true);
        try {
            i10 = Integer.parseInt(option);
        } catch (NumberFormatException e10) {
            Util.log((IStatus) new Status(2, JavaCore.PLUGIN_ID, String.format("Could not parse the value of %s as an integer: %s", DefaultCodeFormatterConstants.FORMATTER_BLANK_LINES_BETWEEN_IMPORT_GROUPS, option), e10));
            i10 = -1;
        }
        if (i10 >= 0) {
            return i10;
        }
        return 1;
    }

    private Set<ImportName> identifyImplicitImports(Collection<ImportName> collection, Set<String> set) {
        if (this.implicitImportContainerNames.isEmpty()) {
            return Collections.emptySet();
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (ImportName importName : collection) {
            if (this.implicitImportContainerNames.contains(importName.containerName) && !set.contains(importName.simpleName)) {
                arrayList.add(importName);
            }
        }
        return arrayList.isEmpty() ? Collections.emptySet() : new HashSet(arrayList);
    }

    private static Map<ImportName, OriginalImportEntry> mapImportsByNameIdentity(List<OriginalImportEntry> list) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (OriginalImportEntry originalImportEntry : list) {
            identityHashMap.put(originalImportEntry.importName, originalImportEntry);
        }
        return Collections.unmodifiableMap(identityHashMap);
    }

    private static NavigableMap<Integer, ASTNode> mapTopLevelNodes(CompilationUnit compilationUnit) {
        TreeMap treeMap = new TreeMap();
        ArrayList<ASTNode> arrayList = new ArrayList();
        if (compilationUnit.getPackage() != null) {
            arrayList.add(compilationUnit.getPackage());
        }
        arrayList.addAll(compilationUnit.imports());
        arrayList.addAll(compilationUnit.types());
        for (Comment comment : compilationUnit.getCommentList()) {
            if (comment.getParent() == null) {
                arrayList.add(comment);
            }
        }
        for (ASTNode aSTNode : arrayList) {
            treeMap.put(Integer.valueOf(aSTNode.getStartPosition()), aSTNode);
        }
        return treeMap;
    }

    private List<ImportEntry> matchExistingOrCreateNew(Collection<ImportName> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (ImportName importName : collection) {
            ImportEntry importEntry = this.importsByNameIdentity.get(importName);
            if (importEntry == null) {
                importEntry = new NewImportEntry(importName);
            }
            arrayList.add(importEntry);
        }
        return arrayList;
    }

    private static List<OriginalImportEntry> readOriginalImports(CompilationUnit compilationUnit) {
        IRegion region;
        int lineNumber;
        List<ImportDeclaration> imports = compilationUnit.imports();
        if (imports.isEmpty()) {
            return Collections.emptyList();
        }
        List commentList = compilationUnit.getCommentList();
        ImportDeclaration importDeclaration = (ImportDeclaration) imports.get(0);
        PackageDeclaration packageDeclaration = compilationUnit.getPackage();
        int startPosition = packageDeclaration == null ? importDeclaration.getStartPosition() : compilationUnit.getExtendedStartPosition(packageDeclaration) + compilationUnit.getExtendedLength(packageDeclaration);
        int i10 = 0;
        while (i10 < commentList.size() && ((Comment) commentList.get(i10)).getStartPosition() < startPosition) {
            i10++;
        }
        ArrayList arrayList = new ArrayList(imports.size());
        int i11 = -1;
        for (ImportDeclaration importDeclaration2 : imports) {
            int extendedStartPosition = compilationUnit.getExtendedStartPosition(importDeclaration2) + compilationUnit.getExtendedLength(importDeclaration2);
            int i12 = i10;
            while (i12 < commentList.size() && ((Comment) commentList.get(i12)).getStartPosition() < extendedStartPosition) {
                i12++;
            }
            List<ImportComment> emptyList = i12 == i10 ? Collections.emptyList() : selectImportComments(compilationUnit, commentList, importDeclaration2.getStartPosition(), i10, i12);
            int startPosition2 = emptyList.isEmpty() ? importDeclaration2.getStartPosition() : Math.min(importDeclaration2.getStartPosition(), emptyList.get(0).region.getOffset());
            if (i11 == -1) {
                lineNumber = 0;
                region = new Region(startPosition2, 0);
            } else {
                region = new Region(i11, startPosition2 - i11);
                lineNumber = compilationUnit.getLineNumber(startPosition2) - compilationUnit.getLineNumber(i11 - 1);
            }
            arrayList.add(new OriginalImportEntry(ImportName.createFor(importDeclaration2), emptyList, lineNumber, region, new Region(startPosition2, extendedStartPosition - startPosition2)));
            i11 = extendedStartPosition;
            i10 = i12;
        }
        return arrayList;
    }

    private static List<ImportComment> selectImportComments(CompilationUnit compilationUnit, List<Comment> list, int i10, int i11, int i12) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Comment> it = list.subList(i11, i12).iterator();
        Comment next = it.hasNext() ? it.next() : null;
        while (next != null) {
            int startPosition = next.getStartPosition();
            int length = next.getLength();
            Comment next2 = it.hasNext() ? it.next() : null;
            int min = Math.min(i10, next2 == null ? Integer.MAX_VALUE : next2.getStartPosition());
            arrayList.add(new ImportComment(new Region(startPosition, length), min == Integer.MAX_VALUE ? 0 : compilationUnit.getLineNumber(min) - compilationUnit.getLineNumber(startPosition + length)));
            next = next2;
        }
        return arrayList;
    }

    private static boolean shouldInsertSpaceBeforeSemicolon(IJavaProject iJavaProject) {
        return JavaCore.INSERT.equals(iJavaProject.getOption(DefaultCodeFormatterConstants.FORMATTER_INSERT_SPACE_BEFORE_SEMICOLON, true));
    }

    private static List<ImportName> subtractImports(Collection<ImportName> collection, Set<ImportName> set) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (ImportName importName : collection) {
            if (!set.contains(importName)) {
                arrayList.add(importName);
            }
        }
        return arrayList;
    }

    public void addImport(boolean z10, String str) {
        ImportName createFor = ImportName.createFor(z10, str);
        this.importsToAdd.add(createFor);
        this.importsToRemove.remove(createFor);
    }

    public RewriteResult analyzeRewrite(IProgressMonitor iProgressMonitor) throws JavaModelException {
        List<ImportName> computeImportOrder = computeImportOrder(iProgressMonitor);
        TextEdit createTextEdit = this.importEditor.createTextEdit(matchExistingOrCreateNew(computeImportOrder));
        HashSet hashSet = new HashSet(computeImportOrder);
        if (!this.reportAllResultantImportsAsCreated) {
            hashSet.removeAll(this.originalImportsSet);
        }
        return new RewriteResult(createTextEdit, hashSet);
    }

    public void removeImport(boolean z10, String str) {
        ImportName createFor = ImportName.createFor(z10, str);
        this.importsToAdd.remove(createFor);
        this.importsToRemove.add(createFor);
    }

    public void requireExplicitImport(boolean z10, String str) {
        if (z10) {
            this.staticExplicitSimpleNames.add(str);
        } else {
            this.typeExplicitSimpleNames.add(str);
        }
    }
}
