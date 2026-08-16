.class public interface abstract Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite$EmptyWithAstNode;
    }
.end annotation


# virtual methods
.method public abstract acceptPotentiallyCompatibleMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
.end method

.method public abstract checkingPotentialCompatibility()Z
.end method

.method public abstract freshInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
.end method

.method public abstract genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.end method

.method public abstract getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
.end method

.method public abstract invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.end method

.method public abstract isQualifiedSuper()Z
.end method

.method public abstract isSuperAccess()Z
.end method

.method public abstract isTypeAccess()Z
.end method

.method public nameSourceEnd()I
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v0

    return v0
.end method

.method public nameSourceStart()I
    .locals 1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v0

    return v0
.end method

.method public abstract receiverIsImplicitThis()Z
.end method

.method public abstract setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
.end method

.method public abstract setDepth(I)V
.end method

.method public abstract setFieldIndex(I)V
.end method

.method public abstract sourceEnd()I
.end method

.method public abstract sourceStart()I
.end method
