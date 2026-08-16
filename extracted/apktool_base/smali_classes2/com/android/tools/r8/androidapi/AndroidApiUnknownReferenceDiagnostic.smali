.class public Lcom/android/tools/r8/androidapi/AndroidApiUnknownReferenceDiagnostic;
.super Lcom/android/tools/r8/internal/z2;
.source "SourceFile"


# instance fields
.field private final b:Lcom/android/tools/r8/graph/J2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/J2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/z2;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/androidapi/AndroidApiUnknownReferenceDiagnostic;->b:Lcom/android/tools/r8/graph/J2;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/androidapi/AndroidApiUnknownReferenceDiagnostic;->b:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be found in the api database."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
