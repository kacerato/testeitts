.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;
.source "SourceFile"


# instance fields
.field public canBeExplicitConstructor:Z

.field public isInsideAnnotationAttribute:Z

.field public isPrecededByModifiers:Z

.field public possibleKeywords:[[C


# direct methods
.method public constructor <init>([CJZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;-><init>([CJ[[CZZ)V

    return-void
.end method

.method public constructor <init>([CJ[[CZZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    .line 3
    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;->possibleKeywords:[[C

    .line 4
    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;->canBeExplicitConstructor:Z

    .line 5
    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleNameReference;->isInsideAnnotationAttribute:Z

    return-void
.end method


# virtual methods
.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    const-string p1, "<CompleteOnName:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    throw v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method
