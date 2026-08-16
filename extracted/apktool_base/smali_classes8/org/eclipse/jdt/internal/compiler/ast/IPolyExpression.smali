.class public interface abstract Lorg/eclipse/jdt/internal/compiler/ast/IPolyExpression;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
.end method

.method public abstract getPolyExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.end method

.method public abstract invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.end method

.method public abstract isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
.end method

.method public abstract isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
.end method

.method public abstract isFunctionalType()Z
.end method

.method public abstract isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
.end method

.method public abstract isPolyExpression()Z
.end method

.method public abstract isPolyExpression(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
.end method

.method public abstract isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
.end method

.method public abstract resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.end method

.method public abstract resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.end method

.method public abstract sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
.end method

.method public abstract setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
.end method

.method public abstract setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V
.end method
