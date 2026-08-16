.class public Lcom/android/tools/r8/graph/g1;
.super Lcom/android/tools/r8/graph/h1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/g1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/h1<",
        "Lcom/android/tools/r8/graph/g1;",
        "Lcom/android/tools/r8/graph/l1;",
        ">;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/g1;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:[Lcom/android/tools/r8/graph/g1;

.field public static final synthetic p:Z = true


# instance fields
.field public final g:Lcom/android/tools/r8/graph/k3;

.field public h:Lcom/android/tools/r8/graph/R2;

.field public i:Lcom/android/tools/r8/graph/y5;

.field public final j:Z

.field public k:Lcom/android/tools/r8/graph/H3$e;

.field public l:Lcom/android/tools/r8/internal/vw;

.field public m:Lcom/android/tools/r8/kotlin/G;

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/g1;

    sput-object v0, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/H3$e;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/androidapi/f;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p4, p8, p6}, Lcom/android/tools/r8/graph/h1;-><init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/u0;ZLcom/android/tools/r8/androidapi/f;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    sget-object p1, Lcom/android/tools/r8/internal/xj;->a:Lcom/android/tools/r8/internal/xj;

    iput-object p1, p0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    sget-object p1, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    iput-object p1, p0, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/graph/g1;->n:Z

    iput-object p2, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    iput-object p5, p0, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    iput-boolean p7, p0, Lcom/android/tools/r8/graph/g1;->j:Z

    iput-object p3, p0, Lcom/android/tools/r8/graph/g1;->k:Lcom/android/tools/r8/graph/H3$e;

    sget-boolean p1, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    invoke-static {p3, p4}, Lcom/android/tools/r8/graph/Z3;->a(Lcom/android/tools/r8/graph/H3$d;Lcom/android/tools/r8/graph/u0;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/g1$a;
    .locals 2

    .line 31
    new-instance v0, Lcom/android/tools/r8/graph/g1$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/graph/g1$a;-><init>(ZLcom/android/tools/r8/graph/g1;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/md;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/md;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/nd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/nd;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/od;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/od;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/pd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/pd;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/qd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/qd;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/R2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/g1;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/g1;->k:Lcom/android/tools/r8/graph/H3$e;

    invoke-interface {p0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic A0()Lcom/android/tools/r8/graph/H3$d;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    return-object v0
.end method

.method public final D0()Lcom/android/tools/r8/internal/KV;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    return-object v0
.end method

.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public I0()Lcom/android/tools/r8/graph/k3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    return-object v0
.end method

.method public J0()Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->k:Lcom/android/tools/r8/graph/H3$e;

    return-object v0
.end method

.method public K0()Lcom/android/tools/r8/graph/R2;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/a3;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public L0()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final M0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/g1;->j:Z

    return v0
.end method

.method public final N0()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    const/16 v1, 0x4000

    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final O0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public P0()Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/F5;
    .locals 1

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18
    new-instance v0, Lcom/android/tools/r8/graph/F5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/G5;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p0

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p2, Lcom/android/tools/r8/graph/g1$a;->m:Z

    .line 29
    :goto_1
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/g1$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/X;->a(Lcom/android/tools/r8/graph/u0;)Z

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/R2;)V
    .locals 2

    .line 19
    sget-boolean v0, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/VY;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/kotlin/G;)V
    .locals 2

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    .line 8
    sget-object v1, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Z
    .locals 3

    .line 32
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/g1;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-eq v0, p1, :cond_4

    return v2

    .line 38
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    .line 39
    :cond_5
    iput-boolean v1, p0, Lcom/android/tools/r8/graph/g1;->n:Z

    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method public final b(Lcom/android/tools/r8/graph/u1;)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    const-string v2, "Static "

    if-eqz v0, :cond_2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has invalid static value "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of p1, p1, Lcom/android/tools/r8/graph/Z2;

    if-eqz p1, :cond_4

    .line 8
    sget-boolean p1, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has invalid null static value."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    return v1
.end method

.method public final c0()Lcom/android/tools/r8/kotlin/Q;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    return-object v0
.end method

.method public final bridge synthetic getAccessFlags()Lcom/android/tools/r8/graph/g;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public final i0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->i0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/ld;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ld;-><init>()V

    return-object v0
.end method

.method public final m0()Lcom/android/tools/r8/graph/g1;
    .locals 0

    return-object p0
.end method

.method public final t()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1;->k:Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoded field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    return v0
.end method

.method public final y0()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    return-void
.end method

.method public final z0()Lcom/android/tools/r8/androidapi/f;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    return-object v0
.end method
