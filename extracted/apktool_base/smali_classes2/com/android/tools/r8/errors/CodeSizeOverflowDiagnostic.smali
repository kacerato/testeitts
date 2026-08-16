.class public Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;
.super Lcom/android/tools/r8/errors/ClassFileOverflowDiagnostic;
.source "SourceFile"


# instance fields
.field private final c:Lcom/android/tools/r8/references/MethodReference;

.field private final d:I

.field private final e:Lcom/android/tools/r8/position/MethodPosition;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/references/MethodReference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/errors/ClassFileOverflowDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    iput-object p2, p0, Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;->c:Lcom/android/tools/r8/references/MethodReference;

    iput p3, p0, Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;->d:I

    new-instance p1, Lcom/android/tools/r8/position/MethodPosition;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    iput-object p1, p0, Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;->e:Lcom/android/tools/r8/position/MethodPosition;

    return-void
.end method


# virtual methods
.method public getCodeSize()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;->d:I

    return v0
.end method

.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;->c:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {p0}, Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;->getCodeSize()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " too large for class file. Code size was "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/CodeSizeOverflowDiagnostic;->e:Lcom/android/tools/r8/position/MethodPosition;

    return-object v0
.end method
