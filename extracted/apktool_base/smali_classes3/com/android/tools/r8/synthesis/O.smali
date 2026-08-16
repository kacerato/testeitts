.class public final Lcom/android/tools/r8/synthesis/O;
.super Lcom/android/tools/r8/synthesis/t;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/Z;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/graph/H5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/synthesis/t;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V

    sget-boolean p2, Lcom/android/tools/r8/synthesis/O;->e:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/t;Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/synthesis/O;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/mA;Lcom/android/tools/r8/internal/Ff0;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/mA;Lcom/android/tools/r8/internal/Ff0;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/synthesis/O;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/synthesis/Z;
    .locals 0

    return-object p0
.end method

.method public final d()Lcom/android/tools/r8/graph/E0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    sget-boolean v2, Lcom/android/tools/r8/synthesis/N;->r:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/S$b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->m1()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->H0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lcom/android/tools/r8/synthesis/a0;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/synthesis/P;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    iget-object v3, p0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/synthesis/P;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/A2;)V

    return-object v0
.end method

.method public final getHolder()Lcom/android/tools/r8/graph/H2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/O;->d:Lcom/android/tools/r8/graph/H5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyntheticMethodDefinition{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
