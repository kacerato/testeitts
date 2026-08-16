.class public Lcom/android/tools/r8/errors/UnsupportedConstDynamicDiagnostic;
.super Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    const-string v0, "const-dynamic"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->e2:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->getPosition()Lcom/android/tools/r8/position/Position;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "const-dynamic"

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/errors/UnsupportedFeatureDiagnostic;->makeMessage(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
