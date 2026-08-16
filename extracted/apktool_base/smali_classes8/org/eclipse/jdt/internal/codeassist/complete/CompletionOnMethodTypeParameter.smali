.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodTypeParameter;
.super Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;
.source "SourceFile"


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    const/4 p2, 0x0

    aget-object p2, p1, p2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3c

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resolveStatements()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method
