.class public abstract Lcom/android/tools/r8/graph/W0;
.super Lcom/android/tools/r8/graph/E;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/W0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/E;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/W0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/E;-><init>()V

    return-void
.end method

.method public static a(II[Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;
    .locals 7

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p2, v3

    .line 15
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->l()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 16
    invoke-static {v4, v4, v0, p3}, Lcom/android/tools/r8/graph/U0;->a(IILjava/util/List;Lcom/android/tools/r8/graph/u1;)V

    move v4, v2

    .line 17
    :cond_0
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p2, Lcom/android/tools/r8/graph/W0$a;

    new-array p1, p1, [Lcom/android/tools/r8/graph/L2;

    sget-object p3, Lcom/android/tools/r8/graph/O0;->b:[Lcom/android/tools/r8/graph/O0;

    .line 19
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/android/tools/r8/graph/O0;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    return-object p2
.end method

.method public static a(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/W0;->q0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/W0;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/W0;->m0()Lcom/android/tools/r8/graph/X0;

    move-result-object v1

    if-nez v0, :cond_4

    .line 9
    iget v0, v1, Lcom/android/tools/r8/graph/X0;->f:I

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/graph/J0;I)V

    .line 10
    :cond_4
    iget-object p0, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    const/4 v0, 0x1

    .line 11
    iget v1, v1, Lcom/android/tools/r8/graph/X0;->e:I

    .line 12
    invoke-static {v0, v1, p0, p1}, Lcom/android/tools/r8/graph/W0;->a(II[Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/W0;)Lcom/android/tools/r8/graph/Z0;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->m0()Lcom/android/tools/r8/graph/X0;

    move-result-object p0

    return-object p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object p0

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    new-instance v1, Lcom/android/tools/r8/graph/ub;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/ub;-><init>()V

    sget-object v2, Lcom/android/tools/r8/graph/O0;->b:[Lcom/android/tools/r8/graph/O0;

    .line 24
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Predicate;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/O0;

    .line 25
    new-instance v1, Lcom/android/tools/r8/graph/Y0;

    iget v2, p0, Lcom/android/tools/r8/graph/W0$a;->e:I

    iget-object p0, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/tools/r8/graph/Y0;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic E()Lcom/android/tools/r8/internal/Mq0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->s0()Lcom/android/tools/r8/graph/W0;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/W0;Lcom/android/tools/r8/internal/pf;)I
.end method

.method public a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/W0;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->n0()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->n0()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/c;->b(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/W0;->a(Lcom/android/tools/r8/graph/W0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l0()Lcom/android/tools/r8/graph/W0$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public m0()Lcom/android/tools/r8/graph/X0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract n0()I
.end method

.method public abstract o0()I
.end method

.method public abstract p0()I
.end method

.method public q0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->n0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->n0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract s0()Lcom/android/tools/r8/graph/W0;
.end method
