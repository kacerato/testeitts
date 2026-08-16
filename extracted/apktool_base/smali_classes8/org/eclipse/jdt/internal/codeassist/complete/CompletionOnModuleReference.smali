.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnModuleReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;
.source "SourceFile"


# direct methods
.method public constructor <init>([CJ)V
    .locals 2

    .line 1
    filled-new-array {p1}, [[C

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnModuleReference;-><init>([[C[J)V

    return-void
.end method

.method public constructor <init>([[C[J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;-><init>([[C[J)V

    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "<CompleteOnModuleReference:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    if-lez p1, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>()V

    throw p1
.end method
