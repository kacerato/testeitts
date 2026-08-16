.class public Lcom/android/tools/r8/errors/NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/origin/Origin;

.field private final c:Lcom/android/tools/r8/references/MethodReference;

.field private final d:Lcom/android/tools/r8/position/MethodPosition;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    iput-object v0, p0, Lcom/android/tools/r8/errors/NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/errors/NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic;->c:Lcom/android/tools/r8/references/MethodReference;

    invoke-static {p1}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/errors/NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic;->d:Lcom/android/tools/r8/position/MethodPosition;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/errors/NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic;->c:Lcom/android/tools/r8/references/MethodReference;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hX;->b(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Methods with @CovariantReturnType annotations should be kept, but was not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic;->b:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic;->d:Lcom/android/tools/r8/position/MethodPosition;

    return-object v0
.end method
