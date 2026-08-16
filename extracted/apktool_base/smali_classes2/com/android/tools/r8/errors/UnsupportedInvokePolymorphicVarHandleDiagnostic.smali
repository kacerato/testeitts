.class public Lcom/android/tools/r8/errors/UnsupportedInvokePolymorphicVarHandleDiagnostic;
.super Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    sget-object v0, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    const-string v1, "invoke-polymorphic-var-handle"

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    sget-object v0, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->getPosition()Lcom/android/tools/r8/position/Position;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Call to polymorphic signature of VarHandle"

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->makeMessage(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
