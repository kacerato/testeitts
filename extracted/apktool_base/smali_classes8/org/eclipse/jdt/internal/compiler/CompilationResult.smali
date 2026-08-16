.class public Lorg/eclipse/jdt/internal/compiler/CompilationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_LINE_ENDS:[I

.field private static final PROBLEM_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public checkSecondaryTypes:Z

.field public compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

.field public compiledTypes:Ljava/util/Map;

.field public fileName:[C

.field private firstErrors:Ljava/util/Set;

.field public hasAnnotations:Z

.field public hasBeenAccepted:Z

.field public hasFunctionalTypes:Z

.field public hasInconsistentToplevelHierarchies:Z

.field private hasMandatoryErrors:Z

.field public hasSyntaxError:Z

.field public lineSeparatorPositions:[I

.field private maxProblemPerUnit:I

.field private numberOfErrors:I

.field public packageName:[[C

.field public problemCount:I

.field public problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field private problemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/compiler/CategorizedProblem;",
            "Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;",
            ">;"
        }
    .end annotation
.end field

.field public qualifiedReferences:[[[C

.field public recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

.field public rootReferences:[[C

.field public simpleNameReferences:[[C

.field public taskCount:I

.field public tasks:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field public totalUnitsKnown:I

.field public unitIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_INT_ARRAY:[I

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->EMPTY_LINE_ENDS:[I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->PROBLEM_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasAnnotations:Z

    .line 15
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasFunctionalTypes:Z

    .line 16
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compiledTypes:Ljava/util/Map;

    .line 17
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasBeenAccepted:Z

    .line 18
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasInconsistentToplevelHierarchies:Z

    .line 19
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasSyntaxError:Z

    .line 20
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->checkSecondaryTypes:Z

    .line 21
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->fileName:[C

    .line 22
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 23
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->unitIndex:I

    .line 24
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->totalUnitsKnown:I

    .line 25
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->maxProblemPerUnit:I

    return-void
.end method

.method public constructor <init>([CIII)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasAnnotations:Z

    .line 3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasFunctionalTypes:Z

    .line 4
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compiledTypes:Ljava/util/Map;

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasBeenAccepted:Z

    .line 6
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasInconsistentToplevelHierarchies:Z

    .line 7
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasSyntaxError:Z

    .line 8
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->checkSecondaryTypes:Z

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->fileName:[C

    .line 10
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->unitIndex:I

    .line 11
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->totalUnitsKnown:I

    .line 12
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->maxProblemPerUnit:I

    return-void
.end method

.method private computePriority(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)I
    .locals 4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v0

    rsub-int v0, v0, 0x2710

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x186a0

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemsMap:Ljava/util/Map;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    :goto_0
    const v2, 0x9c40

    if-eqz v1, :cond_5

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v3, :cond_3

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit16 v0, v0, 0x2710

    goto :goto_1

    :cond_3
    add-int/2addr v0, v2

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->firstErrors:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    add-int/lit16 v0, v0, 0x4e20

    goto :goto_2

    :cond_5
    add-int/2addr v0, v2

    :cond_6
    :goto_2
    return v0
.end method

.method private quickPrioritize([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II)V
    .locals 5

    if-lt p2, p3, :cond_0

    return-void

    :cond_0
    sub-int v0, p3, p2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->computePriority(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)I

    move-result v0

    move v2, p2

    move v1, p3

    :cond_1
    :goto_0
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->computePriority(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)I

    move-result v3

    if-lt v3, v0, :cond_6

    :goto_1
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->computePriority(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)I

    move-result v3

    if-lt v0, v3, :cond_5

    if-gt v2, v1, :cond_2

    aget-object v3, p1, v2

    aget-object v4, p1, v1

    aput-object v4, p1, v2

    aput-object v3, p1, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-le v2, v1, :cond_1

    if-ge p2, v1, :cond_3

    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->quickPrioritize([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II)V

    :cond_3
    if-ge v2, p3, :cond_4

    invoke-direct {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->quickPrioritize([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private recordTask(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->taskCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tasks:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tasks:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tasks:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tasks:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->taskCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->taskCount:I

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public getAllProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 13

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getTasks()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-nez v4, :cond_2

    return-object v0

    :cond_2
    if-nez v2, :cond_3

    return-object v3

    :cond_3
    add-int v5, v2, v4

    new-array v6, v5, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move v7, v1

    move v8, v7

    :goto_2
    add-int v9, v1, v7

    if-lt v9, v5, :cond_4

    return-object v6

    :cond_4
    const/4 v9, 0x0

    if-ge v1, v4, :cond_5

    aget-object v10, v3, v1

    goto :goto_3

    :cond_5
    move-object v10, v9

    :goto_3
    if-ge v7, v2, :cond_6

    aget-object v11, v0, v7

    goto :goto_4

    :cond_6
    move-object v11, v9

    :goto_4
    if-eqz v11, :cond_9

    if-eqz v10, :cond_7

    invoke-interface {v11}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v9

    invoke-interface {v10}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v12

    if-ge v9, v12, :cond_8

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move-object v9, v11

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object v9, v10

    goto :goto_6

    :cond_9
    if-eqz v10, :cond_a

    goto :goto_5

    :cond_a
    :goto_6
    add-int/lit8 v10, v8, 0x1

    aput-object v9, v6, v8

    move v8, v10

    goto :goto_2
.end method

.method public getCUProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    new-array v0, v0, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-lt v2, v4, :cond_2

    if-ge v3, v4, :cond_0

    new-array v2, v3, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    move-object v0, v2

    :cond_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->maxProblemPerUnit:I

    if-lez v2, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-le v3, v2, :cond_1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->quickPrioritize([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->maxProblemPerUnit:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    new-array v3, v0, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v2, v0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->PROBLEM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v5

    const v6, 0x20000391

    if-eq v5, v6, :cond_3

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getMainTypeName()[C

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-object v0
.end method

.method public getClassFiles()[Lorg/eclipse/jdt/internal/compiler/ClassFile;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compiledTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compiledTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    return-object v0
.end method

.method public getContext(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getErrors()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-lt v2, v4, :cond_3

    if-ne v3, v4, :cond_0

    return-object v0

    :cond_0
    new-array v4, v3, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-lt v1, v3, :cond_1

    return-object v4

    :cond_1
    aget-object v3, v0, v1

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-object v5, v0, v1

    aput-object v5, v4, v2

    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, v0, v2

    invoke-interface {v4}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->fileName:[C

    return-object v0
.end method

.method public getLineSeparatorPositions()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->lineSeparatorPositions:[I

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->EMPTY_LINE_ENDS:[I

    :cond_0
    return-object v0
.end method

.method public getProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    array-length v2, v0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    new-array v2, v1, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->maxProblemPerUnit:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->quickPrioritize([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->maxProblemPerUnit:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    new-array v2, v0, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v1, v0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->PROBLEM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-object v0
.end method

.method public getTasks()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tasks:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->taskCount:I

    array-length v2, v0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    new-array v2, v1, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tasks:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tasks:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v1, v0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->PROBLEM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tasks:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->numberOfErrors:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMandatoryErrors()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasMandatoryErrors:Z

    return v0
.end method

.method public hasProblems()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTasks()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->taskCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasWarnings()Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->isWarning()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    return-void
.end method

.method public record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V
    .locals 5

    .line 2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v0

    const v1, 0x200001c2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->recordTask(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 5
    new-array v0, v1, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v3, v2

    if-ne v0, v3, :cond_2

    mul-int/lit8 v3, v0, 0x2

    .line 7
    new-array v3, v3, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    aput-object p1, v0, v2

    if-eqz p2, :cond_6

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemsMap:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemsMap:Ljava/util/Map;

    .line 10
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->firstErrors:Ljava/util/Set;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->firstErrors:Ljava/util/Set;

    .line 11
    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->firstErrors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_6
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 14
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->numberOfErrors:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->numberOfErrors:I

    if-eqz p3, :cond_7

    .line 15
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasMandatoryErrors:Z

    .line 16
    :cond_7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    and-int/2addr p1, p2

    if-eqz p1, :cond_8

    .line 17
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasSyntaxError:Z

    :cond_8
    return-void
.end method

.method public record([CLorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 2

    .line 18
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isHierarchyInconsistent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasInconsistentToplevelHierarchies:Z

    .line 21
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compiledTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public recordPackageName([[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->packageName:[[C

    return-void
.end method

.method public removeProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->firstErrors:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->numberOfErrors:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->numberOfErrors:I

    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    return-void
.end method

.method public tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasBeenAccepted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemsMap:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->firstErrors:Ljava/util/Set;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->fileName:[C

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    const-string v1, "Filename : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->fileName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compiledTypes:Ljava/util/Map;

    const-string v3, "\t - "

    if-eqz v1, :cond_2

    const-string v1, "COMPILED type(s)\t\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compiledTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "No COMPILED type\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " PROBLEM(s) detected \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_2
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-lt v1, v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "No PROBLEM\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
