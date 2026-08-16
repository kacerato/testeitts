.class public Lcom/android/tools/r8/errors/ConstantPoolOverflowDiagnostic;
.super Lcom/android/tools/r8/errors/ClassFileOverflowDiagnostic;
.source "SourceFile"


# instance fields
.field private final c:I

.field private final d:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/references/ClassReference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/errors/ClassFileOverflowDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    iput-object p2, p0, Lcom/android/tools/r8/errors/ConstantPoolOverflowDiagnostic;->d:Lcom/android/tools/r8/references/ClassReference;

    iput p3, p0, Lcom/android/tools/r8/errors/ConstantPoolOverflowDiagnostic;->c:I

    return-void
.end method


# virtual methods
.method public getConstantPoolSize()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/errors/ConstantPoolOverflowDiagnostic;->c:I

    return v0
.end method

.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/errors/ConstantPoolOverflowDiagnostic;->d:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/ConstantPoolOverflowDiagnostic;->getConstantPoolSize()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " too large for class file. Constant pool size was "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
