.class public abstract Lcom/android/tools/r8/internal/R00;
.super Lcom/android/tools/r8/internal/Hz;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public d:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Hz;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/R00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/NW;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;
    .locals 7

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-boolean p2, Lcom/android/tools/r8/internal/R00;->e:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p5, Lcom/android/tools/r8/internal/DU0;

    invoke-direct {p5, p0, p4}, Lcom/android/tools/r8/internal/DU0;-><init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    .line 10
    invoke-interface {p2, p5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 13
    sget-object v5, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object p4, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p2, p4}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/NW;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 17
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/R00;->e:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_4
    :goto_1
    new-instance v6, Lcom/android/tools/r8/internal/EU0;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/EU0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;
    .locals 7

    if-ne p0, p5, :cond_0

    .line 22
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    move-object v0, v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 25
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/R00;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v6, Lcom/android/tools/r8/internal/CU0;

    invoke-direct {v6, p0, p6, p2, p5}, Lcom/android/tools/r8/internal/CU0;-><init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Gz;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)V

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 26
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Gz;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/NW;
    .locals 0

    .line 27
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/Gz;->a(Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/R00;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/tools/r8/internal/R00;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/r8/internal/R00;",
            ">;)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Fz;)Lcom/android/tools/r8/internal/iw;
    .locals 2

    if-ne p0, p2, :cond_0

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Fz;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    new-instance v1, Lcom/android/tools/r8/internal/BU0;

    invoke-direct {v1, p0, p3}, Lcom/android/tools/r8/internal/BU0;-><init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Fz;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Fz;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Fz;Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;
    .locals 0

    .line 21
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/R00;->b(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/Fz;->a(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
.end method

.method public abstract b(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;
.end method

.method public b(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
.end method

.method public abstract c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
.end method

.method public abstract d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
.end method

.method public abstract d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
.end method

.method public final d()Lcom/android/tools/r8/internal/R00;
    .locals 0

    .line 1
    return-object p0
.end method

.method public e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/R00;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/R00;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/R00;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/R00;->e:Z

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    return-object p2
.end method

.method public abstract f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
.end method

.method public final synthetic f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
