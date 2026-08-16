.class public abstract Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IWorkspaceRunnable;
.implements Lorg/eclipse/core/runtime/IProgressMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;
    }
.end annotation


# static fields
.field protected static final APPEND:I = 0x1

.field public static final HAS_MODIFIED_RESOURCE_ATTR:Ljava/lang/String; = "hasModifiedResource"

.field protected static final KEEP_EXISTING:I = 0x3

.field protected static final NO_ELEMENTS:[Lorg/eclipse/jdt/core/IJavaElement;

.field protected static final OPERATION_STACKS:Ljava/lang/ThreadLocal;

.field protected static POST_ACTION_VERBOSE:Z = false

.field protected static final REMOVEALL_APPEND:I = 0x2

.field public static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field protected actions:[Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

.field protected actionsEnd:I

.field protected actionsStart:I

.field protected attributes:Ljava/util/HashMap;

.field protected elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

.field protected force:Z

.field protected isNested:Z

.field protected parentElements:[Lorg/eclipse/jdt/core/IJavaElement;

.field public progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

.field protected resultElements:[Lorg/eclipse/jdt/core/IJavaElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->NO_ELEMENTS:[Lorg/eclipse/jdt/core/IJavaElement;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->OPERATION_STACKS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    .line 4
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->NO_ELEMENTS:[Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    .line 6
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isNested:Z

    .line 7
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    const/4 v1, -0x1

    .line 44
    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    .line 45
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->NO_ELEMENTS:[Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    .line 46
    invoke-static {v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    .line 47
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isNested:Z

    .line 48
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v1, v0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    .line 11
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->NO_ELEMENTS:[Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    .line 13
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isNested:Z

    .line 14
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    .line 15
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    const/4 v1, -0x1

    .line 36
    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    .line 37
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->NO_ELEMENTS:[Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    .line 38
    invoke-static {v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    .line 39
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isNested:Z

    .line 40
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 41
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    .line 19
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->NO_ELEMENTS:[Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    .line 21
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isNested:Z

    .line 22
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    .line 23
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 24
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->parentElements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    .line 28
    sget-object v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->NO_ELEMENTS:[Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    .line 29
    invoke-static {v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    .line 30
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isNested:Z

    .line 31
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 32
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->parentElements:[Lorg/eclipse/jdt/core/IJavaElement;

    .line 33
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    return-void
.end method

.method public static getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getCurrentOperationStack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->attributes:Ljava/util/HashMap;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentOperationStack()Ljava/util/ArrayList;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->OPERATION_STACKS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getCurrentOperationStack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->attributes:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->attributes:Ljava/util/HashMap;

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAction(Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actions:[Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    if-ne v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actions:[Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actions:[Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    aput-object p1, v0, v1

    return-void
.end method

.method public addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->registerJavaModelDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    return-void
.end method

.method public addReconcileDelta(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->reconcileDeltas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v2

    array-length v3, v2

    const/4 p1, 0x0

    :goto_0
    if-lt p1, v3, :cond_0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result p1

    const/high16 v0, 0x80000

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getCompilationUnitAST()Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changedAST(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    goto :goto_1

    :cond_0
    aget-object v0, v2, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method public applyTextEdit(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/text/edits/TextEdit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getDocument(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jface/text/IDocument;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/text/edits/TextEdit;->apply(Lorg/eclipse/jface/text/IDocument;)Lorg/eclipse/text/edits/UndoEdit;
    :try_end_0
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v0, 0x3d8

    invoke-direct {p2, p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public beginTask(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/core/runtime/SubMonitor;->beginTask(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public canModifyRoots()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkCanceled()V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_cancelled:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public commonVerify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    const/16 v1, 0x3c8

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_1
    aget-object v2, v2, v0

    if-nez v2, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0
.end method

.method public copyResources([Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    const-string p1, "hasModifiedResource"

    const-string p2, "true"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-interface {v5, v6, v3, v0}, Lorg/eclipse/core/resources/IResource;->copy(Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_1
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public createFile(Lorg/eclipse/core/resources/IContainer;Ljava/lang/String;Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, p2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p1

    if-eqz p4, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    const/4 p4, 0x1

    :try_start_0
    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object p4

    invoke-interface {p1, p3, p2, p4}, Lorg/eclipse/core/resources/IFile;->create(Ljava/io/InputStream;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    const-string p1, "hasModifiedResource"

    const-string p2, "true"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public createFolder(Lorg/eclipse/core/resources/IContainer;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, p2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    const/4 p3, 0x1

    :try_start_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lorg/eclipse/core/resources/IFolder;->create(IZLorg/eclipse/core/runtime/IProgressMonitor;)V

    const-string p1, "hasModifiedResource"

    const-string p2, "true"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public deleteEmptyPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;ZLorg/eclipse/core/resources/IResource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const-string v0, "true"

    const-string v1, "hasModifiedResource"

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IContainer;

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v6

    invoke-interface {p1, v4, v6}, Lorg/eclipse/core/resources/IContainer;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    instance-of v4, p1, Lorg/eclipse/core/resources/IFolder;

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v6

    invoke-interface {p1, v4, v6}, Lorg/eclipse/core/resources/IContainer;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_3
    return-void

    :goto_4
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public deleteResource(Lorg/eclipse/core/resources/IResource;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    const-string p1, "hasModifiedResource"

    const-string p2, "true"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public deleteResources([Lorg/eclipse/core/resources/IResource;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    :try_start_0
    invoke-interface {v1, p1, p2, v0}, Lorg/eclipse/core/resources/IWorkspace;->delete([Lorg/eclipse/core/resources/IResource;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/IStatus;

    const-string p1, "hasModifiedResource"

    const-string p2, "true"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2

    :cond_2
    :goto_1
    return-void
.end method

.method public done()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/SubMonitor;->done()V

    :cond_0
    return-void
.end method

.method public equalsOneOf(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Z
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public executeNestedOperation(Lorg/eclipse/jdt/internal/core/JavaModelOperation;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object p2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setNested(Z)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->run(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    instance-of p2, p1, Lorg/eclipse/jdt/core/JavaModelException;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result p2

    const/16 v0, 0x4c

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IStatus;->getException()Ljava/lang/Throwable;

    :cond_0
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/core/JavaModelException;

    throw p1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public abstract executeOperation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public firstActionWithID(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    if-le p2, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actions:[Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    aget-object v0, v0, p2

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getCompilationUnitFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public getDocument(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jface/text/IDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    instance-of v0, p1, Lorg/eclipse/jface/text/IDocument;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jface/text/IDocument;

    return-object p1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/DocumentAdapter;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/DocumentAdapter;-><init>(Lorg/eclipse/jdt/core/IBuffer;)V

    return-object v0
.end method

.method public getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    return-object v0
.end method

.method public getNestedFolders(Lorg/eclipse/jdt/core/IPackageFragmentRoot;)[Lorg/eclipse/core/runtime/IPath;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    array-length v1, p1

    new-array v2, v1, [Lorg/eclipse/core/runtime/IPath;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_1

    if-ge v5, v1, :cond_0

    new-array p1, v5, [Lorg/eclipse/core/runtime/IPath;

    invoke-static {v2, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_0
    return-object v2

    :cond_1
    aget-object v6, p1, v4

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v7, v5, 0x1

    aput-object v6, v2, v5

    move v5, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getParentElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->parentElements:[Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentElements()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->parentElements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public getResultElements()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 1

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    return-object v0
.end method

.method public getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    return-object p1
.end method

.method public hasModifiedResource()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hasModifiedResource"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalWorked(D)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/core/runtime/SubMonitor;->internalWorked(D)V

    :cond_0
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/SubMonitor;->isCanceled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTopLevelOperation()Z
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getCurrentOperationStack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public moveResources([Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->newChild(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    const-string p1, "hasModifiedResource"

    const-string p2, "true"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v7

    invoke-interface {v5, v6, v3, v7}, Lorg/eclipse/core/resources/IResource;->move(Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_1
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public newJavaElementDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-object v0
.end method

.method public popOperation()Lorg/eclipse/jdt/internal/core/JavaModelOperation;
    .locals 5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getCurrentOperationStack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->OPERATION_STACKS:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public postAction(Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;I)V
    .locals 7

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->POST_ACTION_VERBOSE:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") [JavaModelOperation.postAction(IPostAction, int)] Posting action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, " (KEEP_EXISTING)"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, " (REMOVEALL_APPEND)"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, " (APPEND)"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getCurrentOperationStack()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actions:[Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    if-nez v5, :cond_4

    new-array p2, v3, [Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    iput-object p2, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actions:[Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    aput-object p1, p2, v4

    iput v4, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;->getID()Ljava/lang/String;

    move-result-object v6

    if-eq p2, v3, :cond_8

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v6, v4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->firstActionWithID(Ljava/lang/String;I)I

    move-result p2

    if-gez p2, :cond_9

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addAction(Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;)V

    goto :goto_2

    :cond_6
    iget p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    sub-int/2addr p2, v3

    :goto_1
    add-int/2addr p2, v3

    invoke-virtual {v0, v6, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->firstActionWithID(Ljava/lang/String;I)I

    move-result p2

    if-gez p2, :cond_7

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addAction(Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;)V

    goto :goto_2

    :cond_7
    add-int/lit8 v1, p2, 0x1

    iget v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    sub-int/2addr v2, p2

    invoke-static {v5, v1, v5, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    const/4 v2, 0x0

    aput-object v2, v5, v1

    goto :goto_1

    :cond_8
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addAction(Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public prefixesOneOf(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)Z
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public pushOperation(Lorg/eclipse/jdt/internal/core/JavaModelOperation;)V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getCurrentOperationStack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAllPostAction(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->POST_ACTION_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") [JavaModelOperation.removeAllPostAction(String)] Removing actions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getCurrentOperationStack()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actions:[Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->firstActionWithID(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    sub-int/2addr v4, v2

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    add-int/lit8 v4, v3, -0x1

    iput v4, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    const/4 v4, 0x0

    aput-object v4, v1, v3

    goto :goto_0
.end method

.method public removeReconcileDelta(Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->reconcileDeltas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public run(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {p0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->pushOperation(Lorg/eclipse/jdt/internal/core/JavaModelOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->canModifyRoots()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->initializeRoots(Z)V

    goto :goto_0

    :catchall_0
    move-exception v7

    goto/16 :goto_7

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->executeOperation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isTopLevelOperation()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runPostActions()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    goto/16 :goto_8

    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v1

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v8, v2

    :goto_2
    if-lt v8, v7, :cond_9

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v7, v7

    move v8, v6

    :goto_3
    if-lt v8, v7, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->resetProjectCaches()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isTopLevelOperation()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->reconcileDeltas:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_6

    :cond_2
    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->hasModifiedResource()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v5, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->fire(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->popOperation()Lorg/eclipse/jdt/internal/core/JavaModelOperation;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    return-void

    :catchall_3
    move-exception v1

    goto/16 :goto_e

    :cond_5
    :try_start_6
    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v9, v9, v8

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IJavaElement;->getOpenable()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v11, v10, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v11, :cond_6

    move-object v11, v10

    check-cast v11, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V

    :cond_7
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v10

    if-eq v10, v4, :cond_8

    if-eq v10, v3, :cond_8

    goto :goto_5

    :cond_8
    iget-object v10, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    iget-object v9, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateJavaModel(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->popOperation()Lorg/eclipse/jdt/internal/core/JavaModelOperation;

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isTopLevelOperation()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runPostActions()V

    :cond_a
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_8
    :try_start_9
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v1

    iget-object v8, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_9
    if-lt v9, v8, :cond_11

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v8, v8

    move v9, v6

    :goto_a
    if-lt v9, v8, :cond_d

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->resetProjectCaches()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isTopLevelOperation()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_b

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->reconcileDeltas:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_b

    :catchall_4
    move-exception v1

    goto :goto_d

    :cond_b
    :goto_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->hasModifiedResource()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1, v5, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->fire(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_c
    :try_start_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->popOperation()Lorg/eclipse/jdt/internal/core/JavaModelOperation;

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_d
    :try_start_b
    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v10, v10, v9

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IJavaElement;->getOpenable()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v12, v11, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v12, :cond_e

    move-object v12, v11

    check-cast v12, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v12

    if-nez v12, :cond_f

    :cond_e
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V

    :cond_f
    invoke-interface {v10}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v11

    if-eq v11, v4, :cond_10

    if-eq v11, v3, :cond_10

    goto :goto_c

    :cond_10
    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_11
    iget-object v10, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {v1, v10}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateJavaModel(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :goto_d
    :try_start_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->popOperation()Lorg/eclipse/jdt/internal/core/JavaModelOperation;

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_e
    if-eqz p1, :cond_12

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_12
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    throw v1
.end method

.method public runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->run(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2, p1}, Lorg/eclipse/core/resources/IWorkspace;->run(Lorg/eclipse/core/resources/IWorkspaceRunnable;Lorg/eclipse/core/runtime/jobs/ISchedulingRule;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    instance-of v0, p1, Lorg/eclipse/jdt/core/JavaModelException;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getException()Ljava/lang/Throwable;

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v0

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/core/JavaModelException;

    throw p1

    :cond_3
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public runPostActions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsEnd:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actions:[Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->actionsStart:I

    aget-object v0, v1, v0

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->POST_ACTION_VERBOSE:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") [JavaModelOperation.runPostActions()] Running action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;->run()V

    goto :goto_0
.end method

.method public setCanceled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/SubMonitor;->setCanceled(Z)V

    :cond_0
    return-void
.end method

.method public setNested(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isNested:Z

    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/SubMonitor;->setTaskName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public subTask(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/SubMonitor;->subTask(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->commonVerify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    return-object v0
.end method

.method public worked(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/SubMonitor;->worked(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->checkCanceled()V

    :cond_0
    return-void
.end method
