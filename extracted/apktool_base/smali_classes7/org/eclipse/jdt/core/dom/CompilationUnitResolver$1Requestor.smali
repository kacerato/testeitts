.class Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;
.super Lorg/eclipse/jdt/core/dom/ASTRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve([Lorg/eclipse/jdt/core/IJavaElement;ILjava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;ILorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/core/dom/IBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Requestor"
.end annotation


# instance fields
.field bindings:[Lorg/eclipse/jdt/core/dom/IBinding;

.field private final synthetic val$binaryElementPositions:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

.field private final synthetic val$elements:[Lorg/eclipse/jdt/core/IJavaElement;

.field private final synthetic val$sourceElementPositions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(ILjava/util/HashMap;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;)V
    .locals 0

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->val$sourceElementPositions:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->val$elements:[Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p4, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->val$binaryElementPositions:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTRequestor;-><init>()V

    new-array p1, p1, [Lorg/eclipse/jdt/core/dom/IBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->bindings:[Lorg/eclipse/jdt/core/dom/IBinding;

    return-void
.end method


# virtual methods
.method public acceptAST(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->val$sourceElementPositions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->length:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$IntArrayList;->list:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->val$elements:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v2, v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    new-instance v3, Lorg/eclipse/jdt/internal/core/util/DOMFinder;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v2, v4}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;-><init>(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/internal/core/SourceRefElement;Z)V

    :try_start_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->search()Lorg/eclipse/jdt/core/dom/ASTNode;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->bindings:[Lorg/eclipse/jdt/core/dom/IBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    aput-object v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public acceptBinding(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/IBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->val$binaryElementPositions:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1Requestor;->bindings:[Lorg/eclipse/jdt/core/dom/IBinding;

    aput-object p2, v0, p1

    return-void
.end method
