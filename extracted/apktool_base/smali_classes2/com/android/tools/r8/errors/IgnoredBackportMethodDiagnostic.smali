.class public Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/errors/DesugarDiagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/graph/v2;

.field private final c:Lcom/android/tools/r8/origin/Origin;

.field private final d:Lcom/android/tools/r8/position/Position;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/v2<",
            "**>;",
            "Lcom/android/tools/r8/origin/Origin;",
            "Lcom/android/tools/r8/position/Position;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->b:Lcom/android/tools/r8/graph/v2;

    iput-object p2, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->c:Lcom/android/tools/r8/origin/Origin;

    iput-object p3, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->d:Lcom/android/tools/r8/position/Position;

    iput p4, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->e:I

    return-void
.end method


# virtual methods
.method public getConfiguredMinApiLevel()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->e:I

    return v0
.end method

.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->b:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->e:I

    iget-object v2, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->b:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored reference to backport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". The compiler is compiling for min-api "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " which includes runtimes that do not support "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but this method will be retained as is (i.e., it is not backported)."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoredBackportField()Lcom/android/tools/r8/references/FieldReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->b:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->b:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->v0()Lcom/android/tools/r8/references/FieldReference;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIgnoredBackportMethod()Lcom/android/tools/r8/references/MethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->b:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->b:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->c:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/IgnoredBackportMethodDiagnostic;->d:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
