.class public final Lcom/android/tools/r8/internal/xA;
.super Lcom/android/tools/r8/internal/pd;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public final n:Ljava/util/IdentityHashMap;

.field public final o:Lcom/android/tools/r8/internal/CA;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/CA;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/l6;Lcom/android/tools/r8/internal/n6;)V
    .locals 6

    iget-object v3, p5, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    iget-object v4, p2, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/pd;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o6;Ljava/util/Map;Lcom/android/tools/r8/internal/k6;Lcom/android/tools/r8/internal/o6;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/xA;->n:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xA;->o:Lcom/android/tools/r8/internal/CA;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 2

    .line 11
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/xA;->p:Z

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v1, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/Hv;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p3

    .line 18
    sget-object v0, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    const/4 v0, 0x0

    .line 19
    sget-object v1, Lcom/android/tools/r8/graph/proto/c;->f:Lcom/android/tools/r8/graph/proto/c;

    .line 20
    invoke-static {p3, v0, v1}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p3

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/xA;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Av;

    if-eqz p2, :cond_2

    .line 22
    iget-object v0, p3, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 23
    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_2
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1

    .line 25
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/xA;->p:Z

    if-nez v0, :cond_5

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p2

    if-ne p3, p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    if-ne p0, p5, :cond_0

    .line 1
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 2
    sget-object v5, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 3
    new-instance p2, Lcom/android/tools/r8/internal/NW;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 4
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 5
    invoke-interface {p6, p1}, Lcom/android/tools/r8/internal/Gz;->a(Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IV;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/lZ;->a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/xA;->p:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IV;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/lZ;->a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;
    .locals 4

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/lZ;->b(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 4
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 6
    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 8
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 9
    iget-object v2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 10
    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 11
    iget-object v3, v0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 12
    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 14
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 15
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 16
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/vy1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/vy1;-><init>(Lcom/android/tools/r8/internal/xA;)V

    .line 17
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/iw;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/iw;

    invoke-direct {v1, v3, v0, v2, p1}, Lcom/android/tools/r8/internal/iw;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-object v1
.end method

.method public final b()Lcom/android/tools/r8/internal/xA;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->g:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 3

    if-ne p0, p1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 8
    sget-boolean v1, Lcom/android/tools/r8/internal/xA;->p:Z

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v2, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_2
    :goto_0
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/Hv;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p2

    .line 14
    sget-object v0, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    const/4 v0, 0x0

    .line 15
    sget-object v1, Lcom/android/tools/r8/graph/proto/c;->f:Lcom/android/tools/r8/graph/proto/c;

    .line 16
    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xA;->o:Lcom/android/tools/r8/internal/CA;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/CA;->d(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Iterable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    return-object p1
.end method
