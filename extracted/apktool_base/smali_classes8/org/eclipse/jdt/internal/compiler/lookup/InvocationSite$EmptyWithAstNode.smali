.class public Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite$EmptyWithAstNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyWithAstNode"
.end annotation


# instance fields
.field node:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite$EmptyWithAstNode;->node:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-void
.end method


# virtual methods
.method public acceptPotentiallyCompatibleMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    return-void
.end method

.method public checkingPotentialCompatibility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public freshInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-object v0
.end method

.method public invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isQualifiedSuper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuperAccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeAccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public receiverIsImplicitThis()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 0

    return-void
.end method

.method public setDepth(I)V
    .locals 0

    return-void
.end method

.method public setFieldIndex(I)V
    .locals 0

    return-void
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite$EmptyWithAstNode;->node:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return v0
.end method

.method public sourceStart()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite$EmptyWithAstNode;->node:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return v0
.end method
