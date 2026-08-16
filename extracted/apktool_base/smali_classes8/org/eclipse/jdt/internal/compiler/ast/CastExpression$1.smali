.class Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkAlternateBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->freshInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object p1

    return-object p1
.end method

.method public genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    move-result-object v0

    return-object v0
.end method

.method public invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public isQualifiedSuper()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isQualifiedSuper()Z

    move-result v0

    return v0
.end method

.method public isSuperAccess()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isSuperAccess()Z

    move-result v0

    return v0
.end method

.method public isTypeAccess()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isTypeAccess()Z

    move-result v0

    return v0
.end method

.method public receiverIsImplicitThis()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression$1;->val$invocationSite:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->receiverIsImplicitThis()Z

    move-result v0

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

    const/4 v0, 0x0

    return v0
.end method

.method public sourceStart()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
