.class public Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/references/MethodReference;

.field private final c:Lcom/android/tools/r8/references/MethodReference;

.field private final d:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;->b:Lcom/android/tools/r8/references/MethodReference;

    iput-object p2, p0, Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;->c:Lcom/android/tools/r8/references/MethodReference;

    iput-object p3, p0, Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;->d:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;->b:Lcom/android/tools/r8/references/MethodReference;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hX;->b(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;->c:Lcom/android/tools/r8/references/MethodReference;

    invoke-static {v1}, Lcom/android/tools/r8/internal/hX;->b(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verification error in `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "`: Illegal invoke-super to interface method `"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "` on Dalvik (Android 4)."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;->d:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;->b:Lcom/android/tools/r8/references/MethodReference;

    invoke-static {v0}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object v0

    return-object v0
.end method
