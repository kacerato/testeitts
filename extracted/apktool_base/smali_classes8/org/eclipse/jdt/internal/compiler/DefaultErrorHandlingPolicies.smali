.class public Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitAfterAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$1;-><init>()V

    return-object v0
.end method

.method public static exitOnFirstError()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$2;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$2;-><init>()V

    return-object v0
.end method

.method public static ignoreAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$5;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$5;-><init>()V

    return-object v0
.end method

.method public static proceedOnFirstError()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$3;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$3;-><init>()V

    return-object v0
.end method

.method public static proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$4;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies$4;-><init>()V

    return-object v0
.end method
