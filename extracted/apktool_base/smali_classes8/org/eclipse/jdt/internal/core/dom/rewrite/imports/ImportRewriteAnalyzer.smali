.class public final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;
    }
.end annotation


# instance fields
.field private final conflictIdentifier:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;

.field private final implicitImportContainerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final importAdder:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;

.field private final importDeclarationWriter:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;

.field private final importEditor:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;

.field private final importsByNameIdentity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final importsToAdd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field

.field private final importsToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field

.field private final lineDelimiter:Ljava/lang/String;

.field private final onDemandComputer:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;

.field private final originalImportEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final originalImportsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field

.field private final originalImportsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation
.end field

.field private final reportAllResultantImportsAsCreated:Z

.field private final staticExplicitSimpleNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final typeExplicitSimpleNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->readOriginalImports(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportEntries:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportsList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportsSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToAdd:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToRemove:Ljava/util/Set;

    iget-object v1, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->originalImportHandling:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;->shouldRemoveOriginalImports()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->reportAllResultantImportsAsCreated:Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->reportAllResultantImportsAsCreated:Z

    :goto_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->typeExplicitSimpleNames:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->staticExplicitSimpleNames:Ljava/util/Set;

    new-instance v8, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;

    iget-object v0, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->importOrder:Ljava/util/List;

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;-><init>(Ljava/util/List;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v1, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->originalImportHandling:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    new-instance v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;

    iget-object v4, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->typeContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->createContainerComparator(Lorg/eclipse/jdt/internal/core/JavaProject;)Ljava/util/Comparator;

    move-result-object v4

    iget-object v5, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->staticContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->createContainerComparator(Lorg/eclipse/jdt/internal/core/JavaProject;)Ljava/util/Comparator;

    move-result-object v5

    invoke-direct {v2, v8, v4, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComparator;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;Ljava/util/Comparator;Ljava/util/Comparator;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;->createImportAdder(Ljava/util/Comparator;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importAdder:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;

    iget-object v1, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->implicitImportIdentification:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;->determineImplicitImportContainers(Lorg/eclipse/jdt/core/ICompilationUnit;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->implicitImportContainerNames:Ljava/util/Set;

    new-instance v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;

    iget v4, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->typeOnDemandThreshold:I

    iget v5, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->staticOnDemandThreshold:I

    invoke-direct {v2, v4, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;-><init>(II)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->onDemandComputer:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;

    new-instance v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;

    new-instance v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;

    new-instance v6, Lorg/eclipse/jdt/core/search/SearchEngine;

    invoke-direct {v6}, Lorg/eclipse/jdt/core/search/SearchEngine;-><init>()V

    invoke-direct {v5, v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;-><init>(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/search/SearchEngine;)V

    new-instance v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;

    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;-><init>(Lorg/eclipse/jdt/core/IJavaProject;)V

    invoke-direct {v4, v2, v5, v6, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/TypeConflictingSimpleNameFinder;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/StaticConflictingSimpleNameFinder;Ljava/util/Set;)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->conflictIdentifier:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportEntries:Ljava/util/List;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->mapImportsByNameIdentity(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsByNameIdentity:Ljava/util/Map;

    new-instance v11, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->shouldInsertSpaceBeforeSemicolon(Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result v1

    invoke-direct {v11, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;-><init>(Z)V

    iput-object v11, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importDeclarationWriter:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOpenable;->findRecommendedLineSeparator()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->lineDelimiter:Ljava/lang/String;

    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->originalImportHandling:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;->shouldFixAllLineDelimiters()Z

    move-result v6

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->getBlankLinesBetweenImportGroups(Lorg/eclipse/jdt/core/IJavaProject;)I

    move-result p3

    add-int/lit8 v7, p3, 0x1

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportEntries:Ljava/util/List;

    invoke-static {p2, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->determineRewriteSite(Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/util/List;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;

    move-result-object v10

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;-><init>(Ljava/lang/String;ZILorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;Ljava/util/List;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importEditor:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private computeDelta(Ljava/util/Collection;Ljava/util/Collection;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;",
            ">;)",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToAdd:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToRemove:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;->reducibleImports:Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;->reducibleImports:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;->containerOnDemand:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandReduction;->containerOnDemand:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {v1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private computeImportOrder(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportsSet:Ljava/util/Set;

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToAdd:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToRemove:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->determineTouchedContainers()Ljava/util/Set;

    move-result-object v7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->conflictIdentifier:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->typeExplicitSimpleNames:Ljava/util/Set;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->staticExplicitSimpleNames:Ljava/util/Set;

    move-object v1, v6

    move-object v2, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier;->identifyConflicts(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier$Conflicts;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->typeExplicitSimpleNames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier$Conflicts;->typeConflicts:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->staticExplicitSimpleNames:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ConflictIdentifier$Conflicts;->staticConflicts:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToAdd:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->identifyImplicitImports(Ljava/util/Collection;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v6, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->subtractImports(Ljava/util/Collection;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->onDemandComputer:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v7, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OnDemandComputer;->identifyPossibleReductions(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->computeDelta(Ljava/util/Collection;Ljava/util/Collection;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportsList:Ljava/util/List;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;->importsToRemove:Ljava/util/Set;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->subtractImports(Ljava/util/Collection;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importAdder:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportsDelta;->importsToAdd:Ljava/util/Set;

    invoke-interface {v1, v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;->addImports(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static determineImportsRegion(Ljava/util/List;)Lorg/eclipse/jface/text/IRegion;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;)",
            "Lorg/eclipse/jface/text/IRegion;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->declarationAndComments:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v0}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->declarationAndComments:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v1

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->declarationAndComments:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {p0}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result p0

    add-int/2addr v1, p0

    new-instance p0, Lorg/eclipse/jface/text/Region;

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static determineRewriteSite(Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/util/List;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/dom/CompilationUnit;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;)",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->determineImportsRegion(Ljava/util/List;)Lorg/eclipse/jface/text/IRegion;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->determineSurroundingRegion(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jface/text/IRegion;)Lorg/eclipse/jface/text/IRegion;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v4

    invoke-interface {v0}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p0

    if-eq v4, p0, :cond_1

    move v2, v3

    :cond_1
    new-instance p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;-><init>(Lorg/eclipse/jface/text/IRegion;Lorg/eclipse/jface/text/IRegion;ZZ)V

    return-object p0
.end method

.method private static determineSurroundingRegion(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jface/text/IRegion;)Lorg/eclipse/jface/text/IRegion;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->mapTopLevelNodes(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Ljava/util/NavigableMap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedLength(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    add-int v1, v0, p1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result p1

    add-int/2addr p1, v0

    move v3, v1

    move v1, p1

    move p1, v3

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IBuffer;->getLength()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Lorg/eclipse/jdt/core/IBuffer;->getChar(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance p0, Lorg/eclipse/jface/text/Region;

    sub-int/2addr v1, p1

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    return-object p0
.end method

.method private determineTouchedContainers()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToAdd:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToRemove:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToAdd:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToRemove:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->getContainerOnDemand()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->getContainerOnDemand()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getBlankLinesBetweenImportGroups(Lorg/eclipse/jdt/core/IJavaProject;)I
    .locals 5

    const-string v0, "org.eclipse.jdt.core.formatter.blank_lines_between_import_groups"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Could not parse the value of %s as an integer: %s"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/eclipse/core/runtime/Status;

    const/4 v3, 0x2

    const-string v4, "org.eclipse.jdt.core"

    invoke-direct {v0, v3, v4, p0, v2}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Lorg/eclipse/core/runtime/IStatus;)V

    const/4 p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    move v1, p0

    :cond_0
    return v1
.end method

.method private identifyImplicitImports(Ljava/util/Collection;Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->implicitImportContainerNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->implicitImportContainerNames:Ljava/util/Set;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->simpleName:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static mapImportsByNameIdentity(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static mapTopLevelNodes(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Ljava/util/NavigableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/dom/CompilationUnit;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getCommentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Comment;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private matchExistingOrCreateNew(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsByNameIdentity:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    if-nez v2, :cond_1

    new-instance v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/NewImportEntry;

    invoke-direct {v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/NewImportEntry;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)V

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static readOriginalImports(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/dom/CompilationUnit;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getCommentList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedLength(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v5

    add-int/2addr v4, v5

    :goto_0
    move v5, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/Comment;

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    if-lt v6, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, -0x1

    move v7, v6

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    return-object v4

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v9

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedLength(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v10

    add-int/2addr v9, v10

    move v10, v5

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/core/dom/Comment;

    invoke-virtual {v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v11

    if-lt v11, v9, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-ne v10, v5, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :goto_6
    move-object v13, v5

    goto :goto_7

    :cond_7
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v11

    invoke-static {v0, v2, v11, v5, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->selectImportComments(Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/util/List;III)Ljava/util/List;

    move-result-object v5

    goto :goto_6

    :goto_7
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    goto :goto_8

    :cond_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;->region:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v11}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_8
    if-ne v7, v6, :cond_9

    new-instance v7, Lorg/eclipse/jface/text/Region;

    invoke-direct {v7, v5, v3}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    move v14, v3

    move-object v15, v7

    goto :goto_9

    :cond_9
    new-instance v11, Lorg/eclipse/jface/text/Region;

    sub-int v12, v5, v7

    invoke-direct {v11, v7, v12}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getLineNumber(I)I

    move-result v12

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getLineNumber(I)I

    move-result v7

    sub-int/2addr v12, v7

    move-object v15, v11

    move v14, v12

    :goto_9
    new-instance v7, Lorg/eclipse/jface/text/Region;

    sub-int v11, v9, v5

    invoke-direct {v7, v5, v11}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    new-instance v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->createFor(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object v12

    move-object v11, v5

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Ljava/util/Collection;ILorg/eclipse/jface/text/IRegion;Lorg/eclipse/jface/text/IRegion;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    move v5, v10

    goto/16 :goto_3
.end method

.method private static selectImportComments(Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/util/List;III)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/dom/CompilationUnit;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/Comment;",
            ">;III)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, p3, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/core/dom/Comment;

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    if-nez p3, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Comment;

    goto :goto_1

    :cond_2
    move-object v2, p4

    :goto_1
    const v3, 0x7fffffff

    if-nez v2, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    :goto_2
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ne v4, v3, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    add-int v3, v1, p3

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getLineNumber(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getLineNumber(I)I

    move-result v4

    sub-int v3, v4, v3

    :goto_3
    new-instance v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;

    new-instance v5, Lorg/eclipse/jface/text/Region;

    invoke-direct {v5, v1, p3}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    invoke-direct {v4, v5, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;-><init>(Lorg/eclipse/jface/text/IRegion;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p3, v2

    goto :goto_0
.end method

.method private static shouldInsertSpaceBeforeSemicolon(Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 2

    const-string v0, "org.eclipse.jdt.core.formatter.insert_space_before_semicolon"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "insert"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static subtractImports(Ljava/util/Collection;Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addImport(ZLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->createFor(ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToAdd:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToRemove:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public analyzeRewrite(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->computeImportOrder(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->matchExistingOrCreateNew(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importEditor:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->createTextEdit(Ljava/util/Collection;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->reportAllResultantImportsAsCreated:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->originalImportsSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer$RewriteResult;-><init>(Lorg/eclipse/text/edits/TextEdit;Ljava/util/Set;)V

    return-object p1
.end method

.method public removeImport(ZLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->createFor(ZLjava/lang/String;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToAdd:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->importsToRemove:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requireExplicitImport(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->staticExplicitSimpleNames:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteAnalyzer;->typeExplicitSimpleNames:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
