.class public interface abstract Lorg/eclipse/jdt/internal/compiler/ast/Invocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;


# virtual methods
.method public abstract arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.end method

.method public abstract binding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.end method

.method public abstract cleanUpInferenceContexts()V
.end method

.method public abstract getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
.end method

.method public abstract registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
.end method

.method public abstract registerResult(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
.end method
