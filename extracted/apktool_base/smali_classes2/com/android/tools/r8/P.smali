.class public Lcom/android/tools/r8/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;ILjava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/u1;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->P2:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->Q2:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->j2:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v1

    new-instance v2, Lcom/android/tools/r8/y2;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/y2;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/P;->a(Lcom/android/tools/r8/graph/u1;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/P;->a:Z

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    .line 10
    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/d1;->e(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
