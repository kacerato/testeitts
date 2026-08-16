.class public Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/references/MethodReference;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/MethodReference;ILjava/lang/String;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;->b:Lcom/android/tools/r8/references/MethodReference;

    iput p2, p0, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;->c:I

    iput-object p3, p0, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;->e:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unverifiable code in `"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;->b:Lcom/android/tools/r8/references/MethodReference;

    invoke-static {v1}, Lcom/android/tools/r8/internal/hX;->b(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;->c:I

    if-ltz v1, :cond_0

    const-string v1, " at instruction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/UnverifiableCfCodeDiagnostic;->e:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
