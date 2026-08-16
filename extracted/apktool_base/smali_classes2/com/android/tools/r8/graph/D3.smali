.class public abstract Lcom/android/tools/r8/graph/D3;
.super Lcom/android/tools/r8/graph/J4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/D3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/J4<",
        "Lcom/android/tools/r8/graph/g1;",
        "Lcom/android/tools/r8/graph/l1;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/J4;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/D3$a;
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/E3;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/E3;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/g1;)V

    return-object v0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/graph/I0;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/android/tools/r8/graph/C3;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/C3;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/g1;)V

    return-object v0

    .line 9
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/D3;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/F3;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/graph/F3;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/g1;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/x3;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/D3;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p1, p1}, Lcom/android/tools/r8/graph/D3;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/O6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/O6;-><init>()V

    invoke-virtual {p0, p1, p1, v0}, Lcom/android/tools/r8/graph/D3;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final e()Lcom/android/tools/r8/graph/D3;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic g()Lcom/android/tools/r8/graph/Z5;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/D3;->n()Lcom/android/tools/r8/graph/D3$a;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/android/tools/r8/graph/C3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/graph/D3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/graph/D3$a<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcom/android/tools/r8/graph/F3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/android/tools/r8/graph/D3$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lcom/android/tools/r8/graph/F5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Lcom/android/tools/r8/graph/F0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Lcom/android/tools/r8/graph/g1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Lcom/android/tools/r8/graph/F5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
