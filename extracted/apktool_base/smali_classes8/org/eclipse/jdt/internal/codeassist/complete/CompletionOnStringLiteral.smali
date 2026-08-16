.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnStringLiteral;
.super Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;
.source "SourceFile"


# instance fields
.field public contentEnd:I

.field public contentStart:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;-><init>(II)V

    .line 5
    iput p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnStringLiteral;->contentStart:I

    .line 6
    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnStringLiteral;->contentEnd:I

    return-void
.end method

.method public constructor <init>([CIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p6}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;-><init>([CIII)V

    .line 2
    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnStringLiteral;->contentStart:I

    .line 3
    iput p5, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnStringLiteral;->contentEnd:I

    return-void
.end method


# virtual methods
.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const-string v0, "<CompletionOnString:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method
