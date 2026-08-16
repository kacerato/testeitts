.class public abstract LBe/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/G;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/G<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs A0([LBe/G;)LBe/B;
    .locals 4
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/B;->Q7(LBe/G;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LOe/v;

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-static {}, LBe/B;->V()I

    move-result v2

    sget-object v3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, v2, v3}, LOe/v;-><init>(LBe/G;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs B0([LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/B;->Q7(LBe/G;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    invoke-static {p0}, LBe/B;->G0(LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs C0(II[LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p2

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p0, p1, v1}, LBe/B;->Y0(LFe/o;IIZ)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs D0([LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-static {v0, v1, p0}, LBe/B;->C0(II[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static D3(LBe/G;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/X;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-static {}, LBe/B;->V()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LOe/X;-><init>(LBe/G;LFe/o;ZII)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs E0(II[LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p2

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, p1, v1}, LBe/B;->Y0(LFe/o;IIZ)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static E3(LBe/G;I)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/X;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, LOe/X;-><init>(LBe/G;LFe/o;ZII)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs F0([LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-static {v0, v1, p0}, LBe/B;->E0(II[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static F3(LBe/G;LBe/G;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LBe/B;->w2(LFe/o;ZI)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static G0(LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LBe/B;->H0(LBe/G;IZ)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static G3(LBe/G;LBe/G;LBe/G;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v1}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LBe/B;->w2(LFe/o;ZI)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static H0(LBe/G;IZ)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;IZ)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch is null"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/v;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, v1, p1, p2}, LOe/v;-><init>(LBe/G;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static H3(LBe/G;LBe/G;LBe/G;LBe/G;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v1}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LBe/B;->w2(LFe/o;ZI)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Ljava/lang/Iterable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p0

    invoke-static {p0}, LBe/B;->G0(LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static I3(Ljava/lang/Iterable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/B;->m2(LFe/o;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static J0(LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-static {p0, v0, v1}, LBe/B;->K0(LBe/G;II)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static J3(Ljava/lang/Iterable;I)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LBe/B;->n2(LFe/o;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static K0(LBe/G;II)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;II)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->Q7(LBe/G;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, LBe/B;->X0(LFe/o;II)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs K2([Ljava/lang/Object;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "items is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/B;->n3(Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LOe/d0;

    invoke-direct {v0, p0}, LOe/d0;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static K3(Ljava/lang/Iterable;II)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;II)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, LBe/B;->x2(LFe/o;ZII)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static L0(Ljava/lang/Iterable;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-static {p0, v0, v1}, LBe/B;->M0(Ljava/lang/Iterable;II)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static L2(Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/e0;

    invoke-direct {v0, p0}, LOe/e0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs L3(II[LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p2

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, LBe/B;->x2(LFe/o;ZII)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static M0(Ljava/lang/Iterable;II)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;II)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, LBe/B;->Y0(LFe/o;IIZ)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static M2(Ljava/util/concurrent/Future;)LBe/B;
    .locals 4
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/f0;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, LOe/f0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs M3([LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object v0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v0, v1, p0}, LBe/B;->n2(LFe/o;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static N2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/f0;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/f0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs N3(II[LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p2

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, LBe/B;->x2(LFe/o;ZII)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static O2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, LBe/B;->N2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LBe/B;

    move-result-object p0

    invoke-virtual {p0, p4}, LBe/B;->K5(LBe/J;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs O3([LBe/G;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object v0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    const/4 v2, 0x1

    array-length p0, p0

    invoke-virtual {v0, v1, v2, p0}, LBe/B;->w2(LFe/o;ZI)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static P2(Ljava/util/concurrent/Future;LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LBe/B;->M2(Ljava/util/concurrent/Future;)LBe/B;

    move-result-object p0

    invoke-virtual {p0, p1}, LBe/B;->K5(LBe/J;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static P3(LBe/G;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/X;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-static {}, LBe/B;->V()I

    move-result v6

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LOe/X;-><init>(LBe/G;LFe/o;ZII)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Q2(Ljava/lang/Iterable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/g0;

    invoke-direct {v0, p0}, LOe/g0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Q3(LBe/G;I)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/X;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, LOe/X;-><init>(LBe/G;LFe/o;ZII)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Q6(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LBe/B;->R6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Q7(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LBe/B;

    if-eqz v0, :cond_0

    check-cast p0, LBe/B;

    invoke-static {p0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LOe/i0;

    invoke-direct {v0, p0}, LOe/i0;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static R2(Lhn/b;)LBe/B;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "publisher is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/h0;

    invoke-direct {v0, p0}, LOe/h0;-><init>(Lhn/b;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static R3(LBe/G;LBe/G;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p1

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, LBe/B;->w2(LFe/o;ZI)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static R6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/A1;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, LOe/A1;-><init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static R7(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/n;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LBe/G<",
            "+TT6;>;",
            "LBe/G<",
            "+TT7;>;",
            "LBe/G<",
            "+TT8;>;",
            "LBe/G<",
            "+TT9;>;",
            "LFe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    invoke-static {p8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p9}, LHe/a;->E(LFe/n;)LFe/o;

    move-result-object p9

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v2, v0, v1}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static S2(LFe/g;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/g<",
            "LBe/k<",
            "TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, LHe/a;->u()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p0}, LOe/p0;->m(LFe/g;)LFe/c;

    move-result-object p0

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    invoke-static {v0, p0, v1}, LBe/B;->W2(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static S3(LBe/G;LBe/G;LBe/G;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-static {v1}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p1

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, LBe/B;->w2(LFe/o;ZI)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static S7(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/m;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LBe/G<",
            "+TT6;>;",
            "LBe/G<",
            "+TT7;>;",
            "LBe/G<",
            "+TT8;>;",
            "LFe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p8}, LHe/a;->D(LFe/m;)LFe/o;

    move-result-object p8

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v2, v0, v1}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static T2(Ljava/util/concurrent/Callable;LFe/b;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LFe/b<",
            "TS;",
            "LBe/k<",
            "TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LOe/p0;->l(LFe/b;)LFe/c;

    move-result-object p1

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, LBe/B;->W2(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static T3(LBe/G;LBe/G;LBe/G;LBe/G;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-static {v1}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p1

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, LBe/B;->w2(LFe/o;ZI)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static T7(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/l;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LBe/G<",
            "+TT6;>;",
            "LBe/G<",
            "+TT7;>;",
            "LFe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p7}, LHe/a;->C(LFe/l;)LFe/o;

    move-result-object p7

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v2, v0, v1}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static U2(Ljava/util/concurrent/Callable;LFe/b;LFe/g;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LFe/b<",
            "TS;",
            "LBe/k<",
            "TT;>;>;",
            "LFe/g<",
            "-TS;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LOe/p0;->l(LFe/b;)LFe/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, LBe/B;->W2(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static U3(Ljava/lang/Iterable;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LBe/B;->v2(LFe/o;Z)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static U7(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/k;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LBe/G<",
            "+TT6;>;",
            "LFe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p6}, LHe/a;->B(LFe/k;)LFe/o;

    move-result-object p6

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v2, v0, v1}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static V()I
    .locals 1

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    return v0
.end method

.method public static V2(Ljava/util/concurrent/Callable;LFe/c;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LFe/c<",
            "TS;",
            "LBe/k<",
            "TT;>;TS;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, LBe/B;->W2(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static V3(Ljava/lang/Iterable;I)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LBe/B;->w2(LFe/o;ZI)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static V7(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/j;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LFe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LHe/a;->A(LFe/j;)LFe/o;

    move-result-object p5

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v2, v0, v1}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static W2(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LFe/c<",
            "TS;",
            "LBe/k<",
            "TT;>;TS;>;",
            "LFe/g<",
            "-TS;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialState is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeState is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/j0;

    invoke-direct {v0, p0, p1, p2}, LOe/j0;-><init>(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static W3(Ljava/lang/Iterable;II)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;II)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, LBe/B;->x2(LFe/o;ZII)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static W7(LBe/G;LBe/G;LBe/G;LBe/G;LFe/i;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LFe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LHe/a;->z(LFe/i;)LFe/o;

    move-result-object p4

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v2, v0, v1}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static X5(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {p0, v0}, LBe/B;->Y5(LBe/G;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static X7(LBe/G;LBe/G;LBe/G;LFe/h;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LFe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LHe/a;->y(LFe/h;)LFe/o;

    move-result-object p3

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Y5(LBe/G;I)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/n1;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, LOe/n1;-><init>(LBe/G;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Y7(LBe/G;LBe/G;LFe/c;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LHe/a;->x(LFe/c;)LFe/o;

    move-result-object p2

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Z5(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {p0, v0}, LBe/B;->a6(LBe/G;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Z7(LBe/G;LBe/G;LFe/c;Z)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;Z)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LHe/a;->x(LFe/c;)LFe/o;

    move-result-object p2

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v0, v1}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static a6(LBe/G;I)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/n1;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, LOe/n1;-><init>(LBe/G;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static a8(LBe/G;LBe/G;LFe/c;ZI)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;ZI)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LHe/a;->x(LFe/c;)LFe/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, p3, p4, v0}, LBe/B;->d8(LFe/o;ZI[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static b0(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/n;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LBe/G<",
            "+TT6;>;",
            "LBe/G<",
            "+TT7;>;",
            "LBe/G<",
            "+TT8;>;",
            "LBe/G<",
            "+TT9;>;",
            "LFe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    invoke-static {p8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p9}, LHe/a;->E(LFe/n;)LFe/o;

    move-result-object p9

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v0, v1}, LBe/B;->j0(LFe/o;I[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static b4()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LOe/D0;->b:LBe/B;

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public static b8(LBe/G;LFe/o;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/B1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, LOe/B1;-><init>(LBe/G;I)V

    invoke-static {p1}, LOe/p0;->n(LFe/o;)LFe/o;

    move-result-object p0

    invoke-virtual {v0, p0}, LBe/B;->m2(LFe/o;)LBe/B;

    move-result-object p0

    invoke-static {p0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static c0(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/m;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LBe/G<",
            "+TT6;>;",
            "LBe/G<",
            "+TT7;>;",
            "LBe/G<",
            "+TT8;>;",
            "LFe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p8}, LHe/a;->D(LFe/m;)LFe/o;

    move-result-object p8

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v0, v1}, LBe/B;->j0(LFe/o;I[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static c8(Ljava/lang/Iterable;LFe/o;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/M1;

    invoke-static {}, LBe/B;->V()I

    move-result v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, LOe/M1;-><init>([LBe/G;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static d0(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/l;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LBe/G<",
            "+TT6;>;",
            "LBe/G<",
            "+TT7;>;",
            "LFe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p7}, LHe/a;->C(LFe/l;)LFe/o;

    move-result-object p7

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v0, v1}, LBe/B;->j0(LFe/o;I[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d8(LFe/o;ZI[LBe/G;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI[",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    array-length v0, p3

    if-nez v0, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/M1;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, LOe/M1;-><init>([LBe/G;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static e0(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/k;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LBe/G<",
            "+TT6;>;",
            "LFe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p6}, LHe/a;->B(LFe/k;)LFe/o;

    move-result-object p6

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v0, v1}, LBe/B;->j0(LFe/o;I[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static e5(LBe/G;LBe/G;)LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LHe/b;->d()LFe/d;

    move-result-object v0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, LBe/B;->h5(LBe/G;LBe/G;LFe/d;I)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static e8(Ljava/lang/Iterable;LFe/o;ZI)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/M1;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, LOe/M1;-><init>([LBe/G;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Iterable;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LOe/h;-><init>([LBe/G;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static f0(LBe/G;LBe/G;LBe/G;LBe/G;LBe/G;LFe/j;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LBe/G<",
            "+TT5;>;",
            "LFe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LHe/a;->A(LFe/j;)LFe/o;

    move-result-object p5

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v0, v1}, LBe/B;->j0(LFe/o;I[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static f2()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LOe/U;->b:LBe/B;

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public static f3(JJLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LBe/B;->g3(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static f5(LBe/G;LBe/G;I)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;I)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LHe/b;->d()LFe/d;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, LBe/B;->h5(LBe/G;LBe/G;LFe/d;I)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static varargs g([LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/B;->Q7(LBe/G;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LOe/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LOe/h;-><init>([LBe/G;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static g0(LBe/G;LBe/G;LBe/G;LBe/G;LFe/i;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LBe/G<",
            "+TT4;>;",
            "LFe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LHe/a;->z(LFe/i;)LFe/o;

    move-result-object p4

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v0, v1}, LBe/B;->j0(LFe/o;I[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static g2(Ljava/lang/Throwable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LHe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, LBe/B;->h2(Ljava/util/concurrent/Callable;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static g3(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/q0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, LOe/q0;-><init>(JJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static g5(LBe/G;LBe/G;LFe/d;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LFe/d<",
            "-TT;-TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, LBe/B;->h5(LBe/G;LBe/G;LFe/d;I)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static h0(LBe/G;LBe/G;LBe/G;LFe/h;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LBe/G<",
            "+TT3;>;",
            "LFe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LHe/a;->y(LFe/h;)LFe/o;

    move-result-object p3

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v0, v1}, LBe/B;->j0(LFe/o;I[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static h2(Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/V;

    invoke-direct {v0, p0}, LOe/V;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static h3(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, LBe/B;->g3(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static h5(LBe/G;LBe/G;LFe/d;I)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LFe/d<",
            "-TT;-TT;>;I)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/c1;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/c1;-><init>(LBe/G;LBe/G;LFe/d;I)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static i0(LBe/G;LBe/G;LFe/c;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT1;>;",
            "LBe/G<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LHe/a;->x(LFe/c;)LFe/o;

    move-result-object p2

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [LBe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v0, v1}, LBe/B;->j0(LFe/o;I[LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static i3(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LBe/B;->g3(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs j0(LFe/o;I[LBe/G;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p2, p0, p1}, LBe/B;->n0([LBe/G;LFe/o;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static j3(JJJJLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 10
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v9

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, LBe/B;->k3(JJJJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public static k0(Ljava/lang/Iterable;LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, LBe/B;->l0(Ljava/lang/Iterable;LFe/o;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static k3(JJJJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 16
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    if-nez v6, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v9, v10}, LBe/B;->z1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    add-long v6, p0, v0

    cmp-long v0, p0, v4

    if-lez v0, :cond_2

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "unit is null"

    invoke-static {v9, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {v10, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v11, LOe/r0;

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide/from16 v0, p6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object v0, v11

    move-wide/from16 v1, p0

    move-wide v3, v6

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, LOe/r0;-><init>(JJJJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v11}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static l0(Ljava/lang/Iterable;LFe/o;I)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    new-instance p2, LOe/u;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, LOe/u;-><init>([LBe/G;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {p2}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static m0([LBe/G;LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, LBe/B;->n0([LBe/G;LFe/o;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static n0([LBe/G;LFe/o;I)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    new-instance p2, LOe/u;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, LOe/u;-><init>([LBe/G;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {p2}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static n3(Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/t0;

    invoke-direct {v0, p0}, LOe/t0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static n7(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LBe/B;

    if-nez v0, :cond_0

    new-instance v0, LOe/i0;

    invoke-direct {v0, p0}, LOe/i0;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Observable) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs o0(LFe/o;I[LBe/G;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p2, p0, p1}, LBe/B;->s0([LBe/G;LFe/o;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static o3(Ljava/lang/Object;Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static o4(II)LBe/B;
    .locals 4
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LBe/B<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, LBe/B;->n3(Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    new-instance v0, LOe/J0;

    invoke-direct {v0, p0, p1}, LOe/J0;-><init>(II)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p0(Ljava/lang/Iterable;LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, LBe/B;->q0(Ljava/lang/Iterable;LFe/o;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static p3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static p4(JJ)LBe/B;
    .locals 5
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "LBe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, LBe/B;->n3(Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_1
    sub-long v2, p2, v2

    add-long/2addr v2, p0

    cmp-long v4, p0, v0

    if-lez v4, :cond_3

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    new-instance v0, LOe/K0;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/K0;-><init>(JJ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "count >= 0 required but it was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p7(Ljava/util/concurrent/Callable;LFe/o;LFe/g;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LFe/o<",
            "-TD;+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/g<",
            "-TD;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LBe/B;->q7(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Ljava/lang/Iterable;LFe/o;I)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    new-instance p2, LOe/u;

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, LOe/u;-><init>([LBe/G;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {p2}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static q3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static q7(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LFe/o<",
            "-TD;+",
            "LBe/G<",
            "+TT;>;>;",
            "LFe/g<",
            "-TD;>;Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/E1;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/E1;-><init>(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static r0([LBe/G;LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, LBe/B;->s0([LBe/G;LFe/o;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static r3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static s0([LBe/G;LFe/o;I)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "+TT;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p0

    return-object p0

    :cond_0
    shl-int/lit8 v4, p2, 0x1

    new-instance p2, LOe/u;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LOe/u;-><init>([LBe/G;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {p2}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static s1(LBe/E;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/E<",
            "TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/C;

    invoke-direct {v0, p0}, LOe/C;-><init>(LBe/E;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static s3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static t3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static u0(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-static {p0, v0}, LBe/B;->v0(LBe/G;I)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static u3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static v0(LBe/G;I)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+",
            "LBe/G<",
            "+TT;>;>;I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/v;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, p1, v2}, LOe/v;-><init>(LBe/G;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static v3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    invoke-static {p8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static w0(LBe/G;LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LBe/B;->A0([LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static w3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    invoke-static {p8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item10 is null"

    invoke-static {p9, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static x0(LBe/G;LBe/G;LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LBe/B;->A0([LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static x1(Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/F;

    invoke-direct {v0, p0}, LOe/F;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static y0(LBe/G;LBe/G;LBe/G;LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LBe/B;->A0([LBe/G;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Ljava/lang/Iterable;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LBe/B;->V0(LFe/o;IZ)LBe/B;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(LFe/g;LFe/g;)V
    .locals 1
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    sget-object v0, LHe/a;->c:LFe/a;

    invoke-static {p0, p1, p2, v0}, LOe/l;->c(LBe/G;LFe/g;LFe/g;LFe/a;)V

    return-void
.end method

.method public final A1(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/G;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, LOe/G;-><init>(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A2(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/c0;

    invoke-direct {v0, p0, p1}, LOe/c0;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A3(LBe/F;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/F<",
            "+TR;-TT;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lifter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/w0;

    invoke-direct {v0, p0, p1}, LOe/w0;-><init>(LBe/G;LBe/F;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A4(LFe/o;IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "unit is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, LOe/p0;->i(LBe/B;IJLjava/util/concurrent/TimeUnit;LBe/J;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, LOe/S0;->z8(Ljava/util/concurrent/Callable;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A5(LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LBe/B;->A0([LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A6(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LBe/B;->t1(JLjava/util/concurrent/TimeUnit;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, LBe/B;->C7(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B(LFe/g;LFe/g;LFe/a;)V
    .locals 0
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LOe/l;->c(LBe/G;LFe/g;LFe/g;LFe/a;)V

    return-void
.end method

.method public final B1(JLjava/util/concurrent/TimeUnit;Z)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->A1(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B2(LFe/o;LFe/c;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TV;>;)",
            "LBe/B<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LOe/p0;->a(LFe/o;)LFe/o;

    move-result-object v2

    invoke-static {}, LBe/B;->V()I

    move-result v5

    invoke-static {}, LBe/B;->V()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, LBe/B;->s2(LFe/o;LFe/c;ZII)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B3(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/x0;

    invoke-direct {v0, p0, p1}, LOe/x0;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B4(LFe/o;ILBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;I",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p2}, LOe/p0;->h(LBe/B;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p1, p3}, LOe/p0;->k(LFe/o;LBe/J;)LFe/o;

    move-result-object p1

    invoke-static {p2, p1}, LOe/S0;->z8(Ljava/util/concurrent/Callable;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B5(Ljava/lang/Iterable;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LBe/B;->Q2(Ljava/lang/Iterable;)LBe/B;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LBe/B;->A0([LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LBe/B;->u1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B7(JLjava/util/concurrent/TimeUnit;LBe/J;J)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "J)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, LBe/B;->C7(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C(I)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LBe/B;->D(II)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C1(LBe/G;LFe/o;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TV;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/B;->G1(LBe/G;)LBe/B;

    move-result-object p1

    invoke-virtual {p1, p2}, LBe/B;->D1(LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C2(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LBe/B;->D2(LFe/o;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C3()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "LBe/A<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LOe/z0;

    invoke-direct {v0, p0}, LOe/z0;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final C4(LFe/o;JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->D4(LFe/o;JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C5(Ljava/lang/Object;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LBe/B;->n3(Ljava/lang/Object;)LBe/B;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LBe/B;->A0([LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C6()LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LBe/B;->F6(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final C7(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/B;
    .locals 9
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "JZ)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, LBe/B;->D7(JLjava/util/concurrent/TimeUnit;LBe/J;JZI)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final D(II)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->E(IILjava/util/concurrent/Callable;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D1(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TU;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemDelay is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LOe/p0;->c(LFe/o;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->m2(LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D2(LFe/o;Z)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;Z)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/a0;

    invoke-direct {v0, p0, p1, p2}, LOe/a0;-><init>(LBe/G;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D4(LFe/o;JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p2, p3, p4, p5}, LOe/p0;->j(LBe/B;JLjava/util/concurrent/TimeUnit;LBe/J;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, LOe/S0;->z8(Ljava/util/concurrent/Callable;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final varargs D5([Ljava/lang/Object;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LBe/B;->K2([Ljava/lang/Object;)LBe/B;

    move-result-object p1

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LBe/B;->A0([LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D6(LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, LBe/B;->F6(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D7(JLjava/util/concurrent/TimeUnit;LBe/J;JZI)LBe/B;
    .locals 13
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "JZI)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p8

    invoke-static {v11, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move-wide/from16 v9, p5

    invoke-static {v9, v10, v0}, LHe/b;->i(JLjava/lang/String;)J

    new-instance v0, LOe/J1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, LOe/J1;-><init>(LBe/G;JJLjava/util/concurrent/TimeUnit;LBe/J;JIZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final E(IILjava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "skip"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/m;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/m;-><init>(LBe/G;IILjava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E1(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/B;->F1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E2(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LBe/B;->F2(LFe/o;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E4(LFe/o;LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LOe/p0;->g(LBe/B;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, LOe/p0;->k(LFe/o;LBe/J;)LFe/o;

    move-result-object p1

    invoke-static {v0, p1}, LOe/S0;->z8(Ljava/util/concurrent/Callable;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E5()LDe/c;
    .locals 4
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->f:LFe/g;

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, LBe/B;->I5(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;

    move-result-object v0

    return-object v0
.end method

.method public final E6(Ljava/util/concurrent/TimeUnit;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/B;->F6(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E7(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TB;>;)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/B;->F7(LBe/G;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F(ILjava/util/concurrent/Callable;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, LBe/B;->E(IILjava/util/concurrent/Callable;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/B;->R6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->G1(LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F2(LFe/o;Z)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;Z)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/b0;

    invoke-direct {v0, p0, p1, p2}, LOe/b0;-><init>(LBe/G;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F4()LVe/a;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LOe/S0;->y8(LBe/G;)LVe/a;

    move-result-object v0

    return-object v0
.end method

.method public final F5(LFe/g;)LDe/c;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->f:LFe/g;

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, LBe/B;->I5(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final F6(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/x1;

    invoke-direct {v0, p0, p1, p2}, LOe/x1;-><init>(LBe/G;Ljava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F7(LBe/G;I)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TB;>;I)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/G1;

    invoke-direct {v0, p0, p1, p2}, LOe/G1;-><init>(LBe/G;LBe/G;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final G(JJLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v6

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, LBe/B;->I(JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final G1(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/H;

    invoke-direct {v0, p0, p1}, LOe/H;-><init>(LBe/G;LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final G2(LFe/g;)LDe/c;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LDe/c;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/B;->F5(LFe/g;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final G4(I)LVe/a;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1}, LOe/S0;->u8(LBe/G;I)LVe/a;

    move-result-object p1

    return-object p1
.end method

.method public final G5(LFe/g;LFe/g;)LDe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->c:LFe/a;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, LBe/B;->I5(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final G6(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/B;->O6(JLjava/util/concurrent/TimeUnit;LBe/G;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final G7(LBe/G;LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;",
            "LFe/o<",
            "-TU;+",
            "LBe/G<",
            "TV;>;>;)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->H7(LBe/G;LFe/o;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final H(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, LBe/B;->I(JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final H1()LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/B<",
            "TT2;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, LOe/I;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LOe/I;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final H2(LFe/r;)LDe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->f:LFe/g;

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, v0, v1}, LBe/B;->J2(LFe/r;LFe/g;LFe/a;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final H4(IJLjava/util/concurrent/TimeUnit;)LVe/a;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->I4(IJLjava/util/concurrent/TimeUnit;LBe/J;)LVe/a;

    move-result-object p1

    return-object p1
.end method

.method public final H5(LFe/g;LFe/g;LFe/a;)LDe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            ")",
            "LDe/c;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/B;->I5(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final H6(JLjava/util/concurrent/TimeUnit;LBe/G;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, LBe/B;->O6(JLjava/util/concurrent/TimeUnit;LBe/G;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final H7(LBe/G;LFe/o;I)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;",
            "LFe/o<",
            "-TU;+",
            "LBe/G<",
            "TV;>;>;I)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/H1;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/H1;-><init>(LBe/G;LBe/G;LFe/o;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final I(JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;)LBe/B;
    .locals 12
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/q;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v11}, LOe/q;-><init>(LBe/G;JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final I1(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/e;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;",
            "LBe/A<",
            "TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/I;

    invoke-direct {v0, p0, p1}, LOe/I;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final I2(LFe/r;LFe/g;)LDe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->J2(LFe/r;LFe/g;LFe/a;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final I4(IJLjava/util/concurrent/TimeUnit;LBe/J;)LVe/a;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    invoke-static/range {v0 .. v5}, LOe/S0;->w8(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;I)LVe/a;

    move-result-object p1

    return-object p1
.end method

.method public final I5(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/u;

    invoke-direct {v0, p1, p2, p3, p4}, LJe/u;-><init>(LFe/g;LFe/g;LFe/a;LFe/g;)V

    invoke-virtual {p0, v0}, LBe/B;->c(LBe/I;)V

    return-object v0
.end method

.method public final I6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->O6(JLjava/util/concurrent/TimeUnit;LBe/G;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final I7(Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "TB;>;>;)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/B;->J7(Ljava/util/concurrent/Callable;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/B;->M(JLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final J1()LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-static {}, LHe/a;->g()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LBe/B;->L1(LFe/o;Ljava/util/concurrent/Callable;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final J2(LFe/r;LFe/g;LFe/a;)LDe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            ")",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/p;

    invoke-direct {v0, p1, p2, p3}, LJe/p;-><init>(LFe/r;LFe/g;LFe/a;)V

    invoke-virtual {p0, v0}, LBe/B;->c(LBe/I;)V

    return-object v0
.end method

.method public final J4(ILBe/J;)LVe/a;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LBe/J;",
            ")",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-virtual {p0, p1}, LBe/B;->G4(I)LVe/a;

    move-result-object p1

    invoke-static {p1, p2}, LOe/S0;->A8(LVe/a;LBe/J;)LVe/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract J5(LBe/I;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final J6(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/G;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->O6(JLjava/util/concurrent/TimeUnit;LBe/G;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final J7(Ljava/util/concurrent/Callable;I)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "TB;>;>;I)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/I1;

    invoke-direct {v0, p0, p1, p2}, LOe/I1;-><init>(LBe/G;Ljava/util/concurrent/Callable;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K(JLjava/util/concurrent/TimeUnit;I)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->M(JLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K1(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;TK;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->g()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/B;->L1(LFe/o;Ljava/util/concurrent/Callable;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K4(JLjava/util/concurrent/TimeUnit;)LVe/a;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/B;->L4(JLjava/util/concurrent/TimeUnit;LBe/J;)LVe/a;

    move-result-object p1

    return-object p1
.end method

.method public final K5(LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/l1;

    invoke-direct {v0, p0, p1}, LOe/l1;-><init>(LBe/G;LBe/J;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K6(LBe/G;LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TV;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->P6(LBe/G;LFe/o;LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K7(LBe/G;LBe/G;LBe/G;LBe/G;LFe/j;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT1;>;",
            "LBe/G<",
            "TT2;>;",
            "LBe/G<",
            "TT3;>;",
            "LBe/G<",
            "TT4;>;",
            "LFe/j<",
            "-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o3 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o4 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LHe/a;->A(LFe/j;)LFe/o;

    move-result-object p5

    const/4 v0, 0x4

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    invoke-virtual {p0, v0, p5}, LBe/B;->P7([LBe/G;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final L(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v7, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, LBe/B;->N(JLjava/util/concurrent/TimeUnit;LBe/J;ILjava/util/concurrent/Callable;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final L1(LFe/o;Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;TK;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/K;

    invoke-direct {v0, p0, p1, p2}, LOe/K;-><init>(LBe/G;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final L4(JLjava/util/concurrent/TimeUnit;LBe/J;)LVe/a;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3, p4}, LOe/S0;->v8(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;)LVe/a;

    move-result-object p1

    return-object p1
.end method

.method public final L5(LBe/I;)LBe/I;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LBe/I<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/B;->c(LBe/I;)V

    return-object p1
.end method

.method public final L6(LBe/G;LFe/o;LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TV;>;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "other is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, LBe/B;->P6(LBe/G;LFe/o;LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final L7(LBe/G;LBe/G;LBe/G;LFe/i;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT1;>;",
            "LBe/G<",
            "TT2;>;",
            "LBe/G<",
            "TT3;>;",
            "LFe/i<",
            "-TT;-TT1;-TT2;-TT3;TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o3 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LHe/a;->z(LFe/i;)LFe/o;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v0, p4}, LBe/B;->P7([LBe/G;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final M(JLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I)",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, LBe/B;->N(JLjava/util/concurrent/TimeUnit;LBe/J;ILjava/util/concurrent/Callable;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final M1()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/B;->O1(LFe/o;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final M4(LBe/J;)LVe/a;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LBe/B;->F4()LVe/a;

    move-result-object v0

    invoke-static {v0, p1}, LOe/S0;->A8(LVe/a;LBe/J;)LVe/a;

    move-result-object p1

    return-object p1
.end method

.method public final M5(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/m1;

    invoke-direct {v0, p0, p1}, LOe/m1;-><init>(LBe/G;LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final M6(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TV;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, LBe/B;->P6(LBe/G;LFe/o;LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final M7(LBe/G;LBe/G;LFe/h;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT1;>;",
            "LBe/G<",
            "TT2;>;",
            "LFe/h<",
            "-TT;-TT1;-TT2;TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LHe/a;->y(LFe/h;)LFe/o;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0, p3}, LBe/B;->P7([LBe/G;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N(JLjava/util/concurrent/TimeUnit;LBe/J;ILjava/util/concurrent/Callable;Z)LBe/B;
    .locals 12
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;Z)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object v7, p3

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move/from16 v10, p5

    invoke-static {v10, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/q;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, LOe/q;-><init>(LBe/G;JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final N0(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LBe/B;->O0(LFe/o;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N1(LFe/d;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/d<",
            "-TT;-TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/L;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LOe/L;-><init>(LBe/G;LFe/o;LFe/d;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N4()LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {}, LHe/a;->c()LFe/r;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, LBe/B;->P4(JLFe/r;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final N5(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/B;->O5(LFe/o;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N6(LFe/o;LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TV;>;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, LBe/B;->P6(LBe/G;LFe/o;LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N7(LBe/G;LFe/c;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/K1;

    invoke-direct {v0, p0, p2, p1}, LOe/K1;-><init>(LBe/G;LFe/c;LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TB;>;)",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/B;->S(LBe/G;Ljava/util/concurrent/Callable;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O0(LFe/o;I)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, LIe/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, LIe/m;

    invoke-interface {p2}, LIe/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, LOe/Y0;->a(Ljava/lang/Object;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LOe/v;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, p2, v1}, LOe/v;-><init>(LBe/G;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O1(LFe/o;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;TK;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/L;

    invoke-static {}, LHe/b;->d()LFe/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, LOe/L;-><init>(LBe/G;LFe/o;LFe/d;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O4(J)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->c()LFe/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->P4(JLFe/r;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O5(LFe/o;I)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, LIe/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, LIe/m;

    invoke-interface {p2}, LIe/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, LOe/Y0;->a(Ljava/lang/Object;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LOe/n1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LOe/n1;-><init>(LBe/G;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O6(JLjava/util/concurrent/TimeUnit;LBe/G;LBe/J;)LBe/B;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/G<",
            "+TT;>;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeUnit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/z1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, LOe/z1;-><init>(LBe/B;JLjava/util/concurrent/TimeUnit;LBe/J;LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O7(Ljava/lang/Iterable;LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/G<",
            "*>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/L1;

    invoke-direct {v0, p0, p1, p2}, LOe/L1;-><init>(LBe/G;Ljava/lang/Iterable;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final P(LBe/G;I)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TB;>;I)",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p2}, LHe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LBe/B;->S(LBe/G;Ljava/util/concurrent/Callable;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final P0(LFe/o;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LBe/B;->Q0(LFe/o;I)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final P1(LFe/g;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/M;

    invoke-direct {v0, p0, p1}, LOe/M;-><init>(LBe/G;LFe/g;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final P4(JLFe/r;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "predicate is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/U0;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/U0;-><init>(LBe/B;JLFe/r;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "times >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final P5(LFe/o;)LBe/c;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LNe/o;-><init>(LBe/B;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final P6(LBe/G;LFe/o;LBe/G;)LBe/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TV;>;>;",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemTimeoutIndicator is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/y1;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/y1;-><init>(LBe/B;LBe/G;LFe/o;LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final P7([LBe/G;LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "LBe/G<",
            "*>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/L1;

    invoke-direct {v0, p0, p1, p2}, LOe/L1;-><init>(LBe/G;[LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Q(LBe/G;LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TTOpening;>;",
            "LFe/o<",
            "-TTOpening;+",
            "LBe/G<",
            "+TTClosing;>;>;)",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->R(LBe/G;LFe/o;Ljava/util/concurrent/Callable;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(LFe/o;I)LBe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;I)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/l;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, LNe/l;-><init>(LBe/B;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Q1(LFe/a;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, v2, p1}, LBe/B;->W1(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Q4(LFe/d;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/T0;

    invoke-direct {v0, p0, p1}, LOe/T0;-><init>(LBe/B;LFe/d;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Q5(LFe/o;)LBe/c;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LNe/o;-><init>(LBe/B;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final R(LBe/G;LFe/o;Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "LBe/G<",
            "+TTOpening;>;",
            "LFe/o<",
            "-TTOpening;+",
            "LBe/G<",
            "+TTClosing;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/n;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/n;-><init>(LBe/G;LBe/G;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final R0(LFe/o;)LBe/c;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LBe/B;->T0(LFe/o;ZI)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final R1(LFe/a;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/N;

    invoke-direct {v0, p0, p1}, LOe/N;-><init>(LBe/G;LFe/a;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final R4(LFe/r;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, LBe/B;->P4(JLFe/r;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final R5(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/B;->S5(LFe/o;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S(LBe/G;Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "LBe/G<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/p;

    invoke-direct {v0, p0, p1, p2}, LOe/p;-><init>(LBe/G;LBe/G;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S0(LFe/o;Z)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;Z)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->T0(LFe/o;ZI)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final S1(LFe/a;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LBe/B;->W1(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S4(LFe/e;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/e;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p1}, LHe/a;->v(LFe/e;)LFe/r;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, LBe/B;->P4(JLFe/r;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S5(LFe/o;I)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, LIe/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, LIe/m;

    invoke-interface {p2}, LIe/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, LOe/Y0;->a(Ljava/lang/Object;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LOe/n1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LOe/n1;-><init>(LBe/G;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S6()LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LBe/B;->V6(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final T(Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "TB;>;>;)",
            "LBe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/B;->U(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final T0(LFe/o;ZI)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;ZI)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/l;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, LNe/l;-><init>(LBe/B;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final T1(LFe/a;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LBe/B;->Y1(LFe/g;LFe/a;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final T4(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "Ljava/lang/Throwable;",
            ">;+",
            "LBe/G<",
            "*>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/V0;

    invoke-direct {v0, p0, p1}, LOe/V0;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final T5(LFe/o;)LBe/B;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LNe/p;-><init>(LBe/B;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final T6(LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, LBe/B;->V6(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "TB;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundarySupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/o;

    invoke-direct {v0, p0, p1, p2}, LOe/o;-><init>(LBe/G;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U0(LFe/o;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LBe/B;->V0(LFe/o;IZ)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U1(LBe/I;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LOe/p0;->f(LBe/I;)LFe/g;

    move-result-object v0

    invoke-static {p1}, LOe/p0;->e(LBe/I;)LFe/g;

    move-result-object v1

    invoke-static {p1}, LOe/p0;->d(LBe/I;)LFe/a;

    move-result-object p1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LBe/B;->W1(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U4(LBe/I;)V
    .locals 1
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, LWe/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LBe/B;->c(LBe/I;)V

    goto :goto_0

    :cond_0
    new-instance v0, LWe/l;

    invoke-direct {v0, p1}, LWe/l;-><init>(LBe/I;)V

    invoke-virtual {p0, v0}, LBe/B;->c(LBe/I;)V

    :goto_0
    return-void
.end method

.method public final U5(LFe/o;)LBe/B;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LNe/p;-><init>(LBe/B;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U6(Ljava/util/concurrent/TimeUnit;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/B;->V6(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V0(LFe/o;IZ)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;IZ)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, LIe/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, LIe/m;

    invoke-interface {p2}, LIe/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, LOe/Y0;->a(Ljava/lang/Object;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LOe/v;

    if-eqz p3, :cond_2

    sget-object p3, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_2
    sget-object p3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, LOe/v;-><init>(LBe/G;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V1(LFe/g;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LBe/A<",
            "TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNotification is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->t(LFe/g;)LFe/g;

    move-result-object v0

    invoke-static {p1}, LHe/a;->s(LFe/g;)LFe/g;

    move-result-object v1

    invoke-static {p1}, LHe/a;->r(LFe/g;)LFe/a;

    move-result-object p1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LBe/B;->W1(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V4(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/B;->W4(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V5(LFe/o;)LBe/B;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LNe/q;-><init>(LBe/B;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V6(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, LHe/a;->w(Ljava/util/concurrent/TimeUnit;LBe/J;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->B3(LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LBe/B;->X(I)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final W0(LFe/o;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LBe/B;->X0(LFe/o;II)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W1(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/a;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/O;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LOe/O;-><init>(LBe/G;LFe/g;LFe/g;LFe/a;LFe/a;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W4(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/W0;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, LOe/W0;-><init>(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W5(LFe/o;)LBe/B;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LNe/q;-><init>(LBe/B;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W6(LFe/o;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/o;

    invoke-interface {p1, p0}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final X(I)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/r;

    invoke-direct {v0, p0, p1}, LOe/r;-><init>(LBe/B;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LFe/o;II)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;II)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/w;

    sget-object v4, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, LOe/w;-><init>(LBe/G;LFe/o;Lio/reactivex/internal/util/j;II)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X1(LFe/g;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, p1, v1, v1}, LBe/B;->W1(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X2(LFe/o;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;)",
            "LBe/B<",
            "LVe/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, LBe/B;->a3(LFe/o;LFe/o;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X3(LBe/i;)LBe/B;
    .locals 1
    .param p1    # LBe/i;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/i;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/A0;

    invoke-direct {v0, p0, p1}, LOe/A0;-><init>(LBe/B;LBe/i;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X4(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/W0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, LOe/W0;-><init>(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X6(LBe/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/b;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/l0;

    invoke-direct {v0, p0}, LLe/l0;-><init>(LBe/B;)V

    sget-object v1, LBe/B$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, LBe/l;->r4()LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, LLe/O0;

    invoke-direct {p1, v0}, LLe/O0;-><init>(LBe/l;)V

    invoke-static {p1}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, LBe/l;->B4()LBe/l;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0}, LBe/l;->z4()LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Ljava/lang/Class;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->e(Ljava/lang/Class;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->B3(LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(LFe/o;IIZ)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;IIZ)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/w;

    if-eqz p4, :cond_0

    sget-object p4, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    :goto_0
    move-object v4, p4

    goto :goto_1

    :cond_0
    sget-object p4, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, LOe/w;-><init>(LBe/G;LFe/o;Lio/reactivex/internal/util/j;II)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y1(LFe/g;LFe/a;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;",
            "LFe/a;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/P;

    invoke-direct {v0, p0, p1, p2}, LOe/P;-><init>(LBe/B;LFe/g;LFe/a;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y2(LFe/o;LFe/o;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;)",
            "LBe/B<",
            "LVe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LBe/B;->a3(LFe/o;LFe/o;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y3(LBe/y;)LBe/B;
    .locals 1
    .param p1    # LBe/y;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/B0;

    invoke-direct {v0, p0, p1}, LOe/B0;-><init>(LBe/B;LBe/y;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y4(JLjava/util/concurrent/TimeUnit;Z)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->X4(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y6()Ljava/util/concurrent/Future;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LJe/q;

    invoke-direct {v0}, LJe/q;-><init>()V

    invoke-virtual {p0, v0}, LBe/B;->L5(LBe/I;)LBe/I;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final Z(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "LFe/b<",
            "-TU;-TT;>;)",
            "LBe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValueSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/t;

    invoke-direct {v0, p0, p1, p2}, LOe/t;-><init>(LBe/G;Ljava/util/concurrent/Callable;LFe/b;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(LFe/o;Z)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;Z)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, LBe/B;->Y0(LFe/o;IIZ)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z1(LFe/g;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, v0, v1, v1}, LBe/B;->W1(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z2(LFe/o;LFe/o;Z)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;Z)",
            "LBe/B<",
            "LVe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/B;->a3(LFe/o;LFe/o;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z3(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LBe/B;->F3(LBe/G;LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z4(LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/X0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LOe/X0;-><init>(LBe/G;LBe/G;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z6()LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LBe/B;->a7(I)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final a0(Ljava/lang/Object;LFe/b;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "LFe/b<",
            "-TU;-TT;>;)",
            "LBe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LBe/B;->Z(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final a1(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/c0;

    invoke-direct {v0, p0, p1}, LOe/c0;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a2(LFe/g;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, v0}, LBe/B;->Y1(LFe/g;LFe/a;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a3(LFe/o;LFe/o;ZI)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;ZI)",
            "LBe/B<",
            "LVe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/k0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, LOe/k0;-><init>(LBe/G;LFe/o;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a4(LBe/Q;)LBe/B;
    .locals 1
    .param p1    # LBe/Q;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/C0;

    invoke-direct {v0, p0, p1}, LOe/C0;-><init>(LBe/B;LBe/Q;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a5(LBe/G;Z)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/X0;

    invoke-direct {v0, p0, p1, p2}, LOe/X0;-><init>(LBe/G;LBe/G;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a7(I)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/C1;

    invoke-direct {v0, p0, p1}, LOe/C1;-><init>(LBe/G;I)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final b1(LFe/o;I)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p1}, LOe/p0;->a(LFe/o;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LBe/B;->O0(LFe/o;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final b2(LFe/a;)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {p1}, LHe/a;->a(LFe/a;)LFe/g;

    move-result-object v1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LBe/B;->W1(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final b3(LFe/o;Z)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;Z)",
            "LBe/B<",
            "LVe/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, LBe/B;->a3(LFe/o;LFe/o;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final b5(LFe/c;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/c<",
            "TT;TT;TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "accumulator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/Z0;

    invoke-direct {v0, p0, p1}, LOe/Z0;-><init>(LBe/G;LFe/c;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final b6(J)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, LOe/o1;

    invoke-direct {v0, p0, p1, p2}, LOe/o1;-><init>(LBe/G;J)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b7(Ljava/util/concurrent/Callable;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/C1;

    invoke-direct {v0, p0, p1}, LOe/C1;-><init>(LBe/G;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final c(LBe/I;)V
    .locals 2
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, LYe/a;->f0(LBe/B;LBe/I;)LBe/I;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LBe/B;->J5(LBe/I;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    throw p1
.end method

.method public final c1(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LBe/B;->d1(LFe/o;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c2(J)LBe/s;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, LOe/S;

    invoke-direct {v0, p0, p1, p2}, LOe/S;-><init>(LBe/G;J)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c3(LBe/G;LFe/o;LFe/o;LFe/c;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TTRight;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LFe/o<",
            "-TTRight;+",
            "LBe/G<",
            "TTRightEnd;>;>;",
            "LFe/c<",
            "-TT;-",
            "LBe/B<",
            "TTRight;>;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/l0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LOe/l0;-><init>(LBe/G;LBe/G;LFe/o;LFe/o;LFe/c;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c4(LBe/J;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LBe/B;->e4(LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c5(Ljava/lang/Object;LFe/c;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LFe/c<",
            "TR;-TT;TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LBe/B;->d5(Ljava/util/concurrent/Callable;LFe/c;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c6(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LBe/B;->Q6(JLjava/util/concurrent/TimeUnit;)LBe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->n6(LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c7(LFe/o;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1}, LHe/a;->F(LFe/o;)LFe/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LBe/B;->Z(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final d(LFe/r;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/g;

    invoke-direct {v0, p0, p1}, LOe/g;-><init>(LBe/G;LFe/r;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final d1(LFe/o;I)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/m;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, LNe/m;-><init>(LBe/B;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final d2(JLjava/lang/Object;)LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "defaultItem is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/T;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/T;-><init>(LBe/G;JLjava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final d3()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/m0;

    invoke-direct {v0, p0}, LOe/m0;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final d4(LBe/J;Z)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->e4(LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final d5(Ljava/util/concurrent/Callable;LFe/c;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LFe/c<",
            "TR;-TT;TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/a1;

    invoke-direct {v0, p0, p1, p2}, LOe/a1;-><init>(LBe/G;Ljava/util/concurrent/Callable;LFe/c;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final d6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/B;->R6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->n6(LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final d7(LFe/o;LFe/o;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, LHe/a;->G(LFe/o;LFe/o;)LFe/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LBe/B;->Z(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final e1(LFe/o;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LBe/B;->g1(LFe/o;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final e2(J)LBe/K;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, LOe/T;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LOe/T;-><init>(LBe/G;JLjava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e3()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LOe/o0;

    invoke-direct {v0, p0}, LOe/o0;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final e4(LBe/J;ZI)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            "ZI)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/E0;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/E0;-><init>(LBe/G;LBe/J;ZI)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final e6(I)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    new-instance p1, LOe/n0;

    invoke-direct {p1, p0}, LOe/n0;-><init>(LBe/G;)V

    invoke-static {p1}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, LOe/q1;

    invoke-direct {p1, p0}, LOe/q1;-><init>(LBe/G;)V

    invoke-static {p1}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LOe/p1;

    invoke-direct {v0, p0, p1}, LOe/p1;-><init>(LBe/G;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, LHe/a;->G(LFe/o;LFe/o;)LFe/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, LBe/B;->Z(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LFe/o;Z)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;Z)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->g1(LFe/o;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final f4(Ljava/lang/Class;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->l(Ljava/lang/Class;)LFe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/B;->i2(LFe/r;)LBe/B;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/B;->Y(Ljava/lang/Class;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final f6(JJLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 9
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->i()LBe/J;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, LBe/B;->h6(JJLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final f7(LFe/o;)LBe/K;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/util/b;->c()LFe/o;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, LBe/B;->i7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f8(LBe/G;LFe/c;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2}, LBe/B;->Y7(LBe/G;LBe/G;LFe/c;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final g1(LFe/o;ZI)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;ZI)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/m;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, LNe/m;-><init>(LBe/B;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final g4(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->h4(LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final g6(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 9
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, LBe/B;->h6(JJLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final g7(LFe/o;LFe/o;)LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/util/b;->c()LFe/o;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, LBe/B;->i7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final g8(LBe/G;LFe/c;Z)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;Z)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LBe/B;->Z7(LBe/G;LBe/G;LFe/c;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final h1(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LBe/B;->i1(LFe/o;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final h4(LFe/o;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/F0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LOe/F0;-><init>(LBe/G;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final h6(JJLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;
    .locals 11
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "ZI)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    move-wide v2, p1

    const-string v0, "unit is null"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    move/from16 v8, p8

    invoke-static {v8, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    new-instance v10, LOe/r1;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, LOe/r1;-><init>(LBe/G;JJLjava/util/concurrent/TimeUnit;LBe/J;IZ)V

    invoke-static {v10}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->c()LFe/o;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/B;->i7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final h8(LBe/G;LFe/c;ZI)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;ZI)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, LBe/B;->a8(LBe/G;LBe/G;LFe/c;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i(LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LBe/B;->g([LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i1(LFe/o;I)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/n;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, LNe/n;-><init>(LBe/B;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i2(LFe/r;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/W;

    invoke-direct {v0, p0, p1}, LOe/W;-><init>(LBe/G;LFe/r;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i4(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/G0;

    invoke-direct {v0, p0, p1}, LOe/G0;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i5()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/d1;

    invoke-direct {v0, p0}, LOe/d1;-><init>(LBe/B;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final i6(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->i()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, LBe/B;->l6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;LFe/o;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "LFe/o<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionFactory is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2, p4}, LHe/a;->H(LFe/o;LFe/o;LFe/o;)LFe/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, LBe/B;->Z(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final i8(Ljava/lang/Iterable;LFe/c;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/N1;

    invoke-direct {v0, p0, p1, p2}, LOe/N1;-><init>(LBe/B;Ljava/lang/Iterable;LFe/c;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final j(LFe/r;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/j;

    invoke-direct {v0, p0, p1}, LOe/j;-><init>(LBe/G;LFe/r;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final j1(LFe/o;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LBe/B;->l1(LFe/o;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final j2(Ljava/lang/Object;)LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, LBe/B;->d2(JLjava/lang/Object;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final j4(Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->i4(LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final j5()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/B;->n4()LVe/a;

    move-result-object v0

    invoke-virtual {v0}, LVe/a;->o8()LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final j6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, LBe/B;->l6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final j7()LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->q()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/B;->l7(Ljava/util/Comparator;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final k(LBe/C;)Ljava/lang/Object;
    .locals 1
    .param p1    # LBe/C;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/C<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/C;

    invoke-interface {p1, p0}, LBe/C;->a(LBe/B;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k1(LFe/o;Z)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;Z)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->l1(LFe/o;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final k2()LBe/s;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LBe/B;->c2(J)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final k4(LBe/G;)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/F0;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LOe/F0;-><init>(LBe/G;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final k5(Ljava/lang/Object;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/f1;

    invoke-direct {v0, p0, p1}, LOe/f1;-><init>(LBe/G;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final k6(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, LBe/B;->l6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final k7(I)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->q()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LBe/B;->m7(Ljava/util/Comparator;I)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final l()Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, LJe/f;

    invoke-direct {v0}, LJe/f;-><init>()V

    invoke-virtual {p0, v0}, LBe/B;->c(LBe/I;)V

    invoke-virtual {v0}, LJe/e;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final l1(LFe/o;ZI)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;ZI)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/n;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, LNe/n;-><init>(LBe/B;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final l2()LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LBe/B;->e2(J)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final l3()LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LHe/a;->b()LFe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/B;->d(LFe/r;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final l4()LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/J;

    invoke-direct {v0, p0}, LOe/J;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final l5()LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/e1;

    invoke-direct {v0, p0}, LOe/e1;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final l6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;
    .locals 9
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "ZI)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide v1, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, LBe/B;->h6(JJLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final l7(Ljava/util/Comparator;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LBe/B;->Z6()LBe/K;

    move-result-object v0

    invoke-static {p1}, LHe/a;->o(Ljava/util/Comparator;)LFe/o;

    move-result-object p1

    invoke-virtual {v0, p1}, LBe/K;->u0(LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    new-instance v0, LJe/f;

    invoke-direct {v0}, LJe/f;-><init>()V

    invoke-virtual {p0, v0}, LBe/B;->c(LBe/I;)V

    invoke-virtual {v0}, LJe/e;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final m1(LBe/i;)LBe/B;
    .locals 1
    .param p1    # LBe/i;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/i;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/x;

    invoke-direct {v0, p0, p1}, LOe/x;-><init>(LBe/B;LBe/i;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m2(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LBe/B;->v2(LFe/o;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m3(LBe/G;LFe/o;LFe/o;LFe/c;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TTRight;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LFe/o<",
            "-TTRight;+",
            "LBe/G<",
            "TTRightEnd;>;>;",
            "LFe/c<",
            "-TT;-TTRight;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/s0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LOe/s0;-><init>(LBe/G;LBe/G;LFe/o;LFe/o;LFe/c;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m4(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/I0;

    invoke-direct {v0, p0, p1}, LOe/I0;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m5()LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/f1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LOe/f1;-><init>(LBe/G;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final m6(JLjava/util/concurrent/TimeUnit;Z)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->i()LBe/J;

    move-result-object v4

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, LBe/B;->l6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m7(Ljava/util/Comparator;I)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, LBe/B;->a7(I)LBe/K;

    move-result-object p2

    invoke-static {p1}, LHe/a;->o(Ljava/util/Comparator;)LFe/o;

    move-result-object p1

    invoke-virtual {p2, p1}, LBe/K;->u0(LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final n(LFe/g;)V
    .locals 2
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, LBe/B;->o()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    check-cast v0, LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final n1(LBe/y;)LBe/B;
    .locals 1
    .param p1    # LBe/y;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/y;

    invoke-direct {v0, p0, p1}, LOe/y;-><init>(LBe/B;LBe/y;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final n2(LFe/o;I)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, LBe/B;->x2(LFe/o;ZII)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final n4()LVe/a;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LOe/H0;->u8(LBe/G;)LVe/a;

    move-result-object v0

    return-object v0
.end method

.method public final n5(J)LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LOe/g1;

    invoke-direct {v0, p0, p1, p2}, LOe/g1;-><init>(LBe/G;J)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final n6(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/s1;

    invoke-direct {v0, p0, p1}, LOe/s1;-><init>(LBe/G;LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-virtual {p0, v0}, LBe/B;->p(I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final o1(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LBe/B;->w0(LBe/G;LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o2(LFe/o;LFe/c;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v4

    invoke-static {}, LBe/B;->V()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, LBe/B;->s2(LFe/o;LFe/c;ZII)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o5(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LBe/B;->Q6(JLjava/util/concurrent/TimeUnit;)LBe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->w5(LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o6(LFe/r;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stopPredicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/t1;

    invoke-direct {v0, p0, p1}, LOe/t1;-><init>(LBe/G;LFe/r;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o7(LBe/J;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/D1;

    invoke-direct {v0, p0, p1}, LOe/D1;-><init>(LBe/G;LBe/J;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final p(I)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/b;

    invoke-direct {v0, p0, p1}, LOe/b;-><init>(LBe/G;I)V

    return-object v0
.end method

.method public final p1(LBe/Q;)LBe/B;
    .locals 1
    .param p1    # LBe/Q;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/z;

    invoke-direct {v0, p0, p1}, LOe/z;-><init>(LBe/B;LBe/Q;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final p2(LFe/o;LFe/c;I)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, LBe/B;->s2(LFe/o;LFe/c;ZII)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final p5(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/B;->R6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->w5(LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final p6(LFe/r;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/u1;

    invoke-direct {v0, p0, p1}, LOe/u1;-><init>(LBe/G;LFe/r;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, LJe/g;

    invoke-direct {v0}, LJe/g;-><init>()V

    invoke-virtual {p0, v0}, LBe/B;->c(LBe/I;)V

    invoke-virtual {v0}, LJe/e;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final q1(Ljava/lang/Object;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "element is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->i(Ljava/lang/Object;)LFe/r;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->j(LFe/r;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final q2(LFe/o;LFe/c;Z)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;Z)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v4

    invoke-static {}, LBe/B;->V()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/B;->s2(LFe/o;LFe/c;ZII)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final q4(LFe/c;)LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/c<",
            "TT;TT;TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/L0;

    invoke-direct {v0, p0, p1}, LOe/L0;-><init>(LBe/G;LFe/c;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final q5(I)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    invoke-static {p0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LOe/h1;

    invoke-direct {v0, p0, p1}, LOe/h1;-><init>(LBe/G;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q6()LWe/n;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LWe/n<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LWe/n;

    invoke-direct {v0}, LWe/n;-><init>()V

    invoke-virtual {p0, v0}, LBe/B;->c(LBe/I;)V

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    new-instance v0, LJe/g;

    invoke-direct {v0}, LJe/g;-><init>()V

    invoke-virtual {p0, v0}, LBe/B;->c(LBe/I;)V

    invoke-virtual {v0}, LJe/e;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final r1()LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, LOe/B;

    invoke-direct {v0, p0}, LOe/B;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final r2(LFe/o;LFe/c;ZI)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;ZI)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->s2(LFe/o;LFe/c;ZII)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final r4(Ljava/lang/Object;LFe/c;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LFe/c<",
            "TR;-TT;TR;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seed is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/M0;

    invoke-direct {v0, p0, p1, p2}, LOe/M0;-><init>(LBe/G;Ljava/lang/Object;LFe/c;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final r5(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->i()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, LBe/B;->u5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final r6(Z)LWe/n;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LWe/n<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LWe/n;

    invoke-direct {v0}, LWe/n;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LWe/n;->dispose()V

    :cond_0
    invoke-virtual {p0, v0}, LBe/B;->c(LBe/I;)V

    return-object v0
.end method

.method public final r7(J)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, LBe/B;->t7(JJI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/c;

    invoke-direct {v0, p0}, LOe/c;-><init>(LBe/G;)V

    return-object v0
.end method

.method public final s2(LFe/o;LFe/c;ZII)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;ZII)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, LOe/p0;->b(LFe/o;LFe/c;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, LBe/B;->x2(LFe/o;ZII)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s4(Ljava/util/concurrent/Callable;LFe/c;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LFe/c<",
            "TR;-TT;TR;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/N0;

    invoke-direct {v0, p0, p1, p2}, LOe/N0;-><init>(LBe/G;Ljava/util/concurrent/Callable;LFe/c;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final s5(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, LBe/B;->u5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s6(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/B;->t6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s7(JJ)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/B;->t7(JJI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/d;

    invoke-direct {v0, p0, p1}, LOe/d;-><init>(LBe/G;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final t0(LBe/H;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/H<",
            "-TT;+TR;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/H;

    invoke-interface {p1, p0}, LBe/H;->a(LBe/B;)LBe/G;

    move-result-object p1

    invoke-static {p1}, LBe/B;->Q7(LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t1(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/B;->u1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t2(LFe/o;LFe/o;Ljava/util/concurrent/Callable;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/G<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/y0;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/y0;-><init>(LBe/G;LFe/o;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LBe/B;->D3(LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t4()LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, LBe/B;->u4(J)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final t5(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, LBe/B;->u5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/v1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LOe/v1;-><init>(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t7(JJI)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p1, p2, v0}, LHe/b;->i(JLjava/lang/String;)J

    const-string v0, "skip"

    invoke-static {p3, p4, v0}, LHe/b;->i(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    invoke-static {p5, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LOe/F1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, LOe/F1;-><init>(LBe/G;JJI)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/e;

    invoke-direct {v0, p0}, LOe/e;-><init>(LBe/G;)V

    return-object v0
.end method

.method public final u1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/E;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LOe/E;-><init>(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u2(LFe/o;LFe/o;Ljava/util/concurrent/Callable;I)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;",
            "LFe/o<",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/G<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LBe/G<",
            "+TR;>;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/y0;

    invoke-direct {v0, p0, p1, p2, p3}, LOe/y0;-><init>(LBe/G;LFe/o;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0, p4}, LBe/B;->E3(LBe/G;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u4(J)LBe/B;
    .locals 3
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LOe/P0;

    invoke-direct {v0, p0, p1, p2}, LOe/P0;-><init>(LBe/B;J)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;
    .locals 9
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "ZI)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p6, v0}, LHe/b;->h(ILjava/lang/String;)I

    shl-int/lit8 v7, p6, 0x1

    new-instance p6, LOe/i1;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, LOe/i1;-><init>(LBe/G;JLjava/util/concurrent/TimeUnit;LBe/J;IZ)V

    invoke-static {p6}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u6(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LBe/B;->V4(JLjava/util/concurrent/TimeUnit;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u7(JJLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v6

    invoke-static {}, LBe/B;->V()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, LBe/B;->w7(JJLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v()Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/B;->l5()LBe/s;

    move-result-object v0

    invoke-virtual {v0}, LBe/s;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final v1(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TU;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "debounceSelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/D;

    invoke-direct {v0, p0, p1}, LOe/D;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v2(LFe/o;Z)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;Z)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, LBe/B;->w2(LFe/o;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v4(LFe/e;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/e;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/Q0;

    invoke-direct {v0, p0, p1}, LOe/Q0;-><init>(LBe/B;LFe/e;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v5(JLjava/util/concurrent/TimeUnit;Z)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->i()LBe/J;

    move-result-object v4

    invoke-static {}, LBe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, LBe/B;->u5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LBe/B;->W4(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v7(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, LBe/B;->w7(JJLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/B;->k5(Ljava/lang/Object;)LBe/K;

    move-result-object p1

    invoke-virtual {p1}, LBe/K;->k()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w1(Ljava/lang/Object;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LBe/B;->n3(Ljava/lang/Object;)LBe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/B;->M5(LBe/G;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w2(LFe/o;ZI)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;ZI)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/B;->x2(LFe/o;ZII)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w4(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "Ljava/lang/Object;",
            ">;+",
            "LBe/G<",
            "*>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/R0;

    invoke-direct {v0, p0, p1}, LOe/R0;-><init>(LBe/G;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w5(LBe/G;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TU;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/j1;

    invoke-direct {v0, p0, p1}, LOe/j1;-><init>(LBe/G;LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w6(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/B;->y6(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w7(JJLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/B;
    .locals 13
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "timespan"

    move-wide v3, p1

    invoke-static {p1, p2, v0}, LHe/b;->i(JLjava/lang/String;)J

    const-string v0, "timeskip"

    move-wide/from16 v5, p3

    invoke-static {v5, v6, v0}, LHe/b;->i(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    move/from16 v11, p7

    invoke-static {v11, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/J1;

    const-wide v9, 0x7fffffffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, LOe/J1;-><init>(LBe/G;JJLjava/util/concurrent/TimeUnit;LBe/J;JIZ)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final x()V
    .locals 0
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {p0}, LOe/l;->a(LBe/G;)V

    return-void
.end method

.method public final x2(LFe/o;ZII)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;ZII)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, LHe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, LIe/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, LIe/m;

    invoke-interface {p2}, LIe/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LBe/B;->f2()LBe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, LOe/Y0;->a(Ljava/lang/Object;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v6, LOe/X;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LOe/X;-><init>(LBe/G;LFe/o;ZII)V

    invoke-static {v6}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final x3(Ljava/lang/Object;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/v0;

    invoke-direct {v0, p0, p1}, LOe/v0;-><init>(LBe/G;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final x4(LFe/o;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LOe/p0;->g(LBe/B;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0, p1}, LOe/S0;->z8(Ljava/util/concurrent/Callable;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final x5(LFe/r;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/k1;

    invoke-direct {v0, p0, p1}, LOe/k1;-><init>(LBe/G;LFe/r;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final x6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->y6(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final x7(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, LBe/B;->C7(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final y(LBe/I;)V
    .locals 0
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, LOe/l;->b(LBe/G;LBe/I;)V

    return-void
.end method

.method public final y1(JLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/B;->A1(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final y2(LFe/o;)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LBe/B;->z2(LFe/o;Z)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final y3()LBe/s;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/u0;

    invoke-direct {v0, p0}, LOe/u0;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final y4(LFe/o;I)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;I)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p2}, LOe/p0;->h(LBe/B;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, LOe/S0;->z8(Ljava/util/concurrent/Callable;LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final y5()LBe/B;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/B;->Z6()LBe/K;

    move-result-object v0

    invoke-virtual {v0}, LBe/K;->x1()LBe/B;

    move-result-object v0

    invoke-static {}, LHe/a;->p()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, LHe/a;->o(Ljava/util/Comparator;)LFe/o;

    move-result-object v1

    invoke-virtual {v0, v1}, LBe/B;->B3(LFe/o;)LBe/B;

    move-result-object v0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-virtual {v0, v1}, LBe/B;->A2(LFe/o;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final y6(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/w1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, LOe/w1;-><init>(LBe/B;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final y7(JLjava/util/concurrent/TimeUnit;J)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, LBe/B;->C7(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z(LFe/g;)V
    .locals 2
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, LHe/a;->f:LFe/g;

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-static {p0, p1, v0, v1}, LOe/l;->c(LBe/G;LFe/g;LFe/g;LFe/a;)V

    return-void
.end method

.method public final z1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->A1(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z2(LFe/o;Z)LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;Z)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/Z;

    invoke-direct {v0, p0, p1, p2}, LOe/Z;-><init>(LBe/G;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final z3()LBe/K;
    .locals 2
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/v0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LOe/v0;-><init>(LBe/G;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final z4(LFe/o;IJLjava/util/concurrent/TimeUnit;)LBe/B;
    .locals 7
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TT;>;+",
            "LBe/G<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, LBe/B;->A4(LFe/o;IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z5(Ljava/util/Comparator;)LBe/B;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sortFunction is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LBe/B;->Z6()LBe/K;

    move-result-object v0

    invoke-virtual {v0}, LBe/K;->x1()LBe/B;

    move-result-object v0

    invoke-static {p1}, LHe/a;->o(Ljava/util/Comparator;)LFe/o;

    move-result-object p1

    invoke-virtual {v0, p1}, LBe/B;->B3(LFe/o;)LBe/B;

    move-result-object p1

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p1, v0}, LBe/B;->A2(LFe/o;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z6(JLjava/util/concurrent/TimeUnit;Z)LBe/B;
    .locals 6
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/B;->y6(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z7(JLjava/util/concurrent/TimeUnit;JZ)LBe/B;
    .locals 8
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "JZ)",
            "LBe/B<",
            "LBe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, LBe/B;->C7(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/B;

    move-result-object p1

    return-object p1
.end method
