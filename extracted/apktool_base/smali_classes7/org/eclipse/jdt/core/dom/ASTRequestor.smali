.class public abstract Lorg/eclipse/jdt/core/dom/ASTRequestor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTRequestor;->compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    return-void
.end method


# virtual methods
.method public acceptAST(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;)V
    .locals 0

    return-void
.end method

.method public acceptBinding(Ljava/lang/String;Lorg/eclipse/jdt/core/dom/IBinding;)V
    .locals 0

    return-void
.end method

.method public final createBindings([Ljava/lang/String;)[Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 5

    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/core/dom/IBinding;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTRequestor;->compilationUnitResolver:Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;

    if-eqz v3, :cond_1

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->createBinding(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
