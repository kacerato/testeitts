.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnExplicitConstructorCall;
.super Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;-><init>(I)V

    return-void
.end method


# virtual methods
.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, "<SelectOnExplicitConstructorCall:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string p1, "this("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string p1, "super("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_4

    move p1, v0

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    goto :goto_2

    :cond_2
    if-lez p1, :cond_3

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const-string p1, ")>;"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>()V

    throw p1
.end method
