.class public Lcom/android/tools/r8/errors/UnsupportedInvokeCustomDiagnostic;
.super Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    sget-object v0, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    const-string v1, "invoke-custom"

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    sget-object v0, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    const-string v1, "Invoke-customs"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->makeMessage(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
