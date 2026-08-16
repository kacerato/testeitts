.class public Lcom/android/tools/r8/errors/ConstantDynamicDesugarDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/errors/DesugarDiagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/origin/Origin;

.field private final c:Lcom/android/tools/r8/position/Position;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/errors/ConstantDynamicDesugarDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/errors/ConstantDynamicDesugarDiagnostic;->c:Lcom/android/tools/r8/position/Position;

    iput-object p3, p0, Lcom/android/tools/r8/errors/ConstantDynamicDesugarDiagnostic;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/ConstantDynamicDesugarDiagnostic;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/ConstantDynamicDesugarDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/ConstantDynamicDesugarDiagnostic;->c:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
