.class public final Lorg/eclipse/jdt/core/util/CompilationUnitSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RELATIVE_ORDER:Ljava/lang/String; = "relativeOrder"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkASTLevel(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static sort(Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/util/Comparator;ILorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/text/edits/TextEdit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 7
    new-instance p2, Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object p4

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result p4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x0

    invoke-direct {p2, p4, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;-><init>(I[Lorg/eclipse/jdt/core/IJavaElement;[ILjava/util/Comparator;)V

    .line 8
    invoke-virtual {p2, p0, p3}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->calculateEdit(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static sort(ILorg/eclipse/jdt/core/ICompilationUnit;[ILjava/util/Comparator;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p0}, Lorg/eclipse/jdt/core/util/CompilationUnitSorter;->checkASTLevel(I)V

    const/4 p4, 0x1

    .line 3
    new-array p4, p4, [Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    .line 4
    new-instance p1, Lorg/eclipse/jdt/internal/core/SortElementsOperation;

    invoke-direct {p1, p0, p4, p2, p3}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;-><init>(I[Lorg/eclipse/jdt/core/IJavaElement;[ILjava/util/Comparator;)V

    .line 5
    invoke-virtual {p1, p5}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static sort(Lorg/eclipse/jdt/core/ICompilationUnit;[ILjava/util/Comparator;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/util/CompilationUnitSorter;->sort(ILorg/eclipse/jdt/core/ICompilationUnit;[ILjava/util/Comparator;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method
