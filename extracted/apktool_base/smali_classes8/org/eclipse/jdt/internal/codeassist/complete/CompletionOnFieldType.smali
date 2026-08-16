.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;
.super Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
.source "SourceFile"


# instance fields
.field public isLocalVariable:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;-><init>()V

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;->isLocalVariable:Z

    instance-of p2, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;

    iput-object p0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->fieldTypeCompletionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    :cond_0
    return-void
.end method


# virtual methods
.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x3b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method
