.class public abstract Lcom/android/tools/r8/internal/i40;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xt;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/i40;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/i40;
.end method

.method public abstract a()Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/E0;)Z
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 25
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/i40;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Nd1;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/Nd1;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/y;)V

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/i40;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/pu0;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/pu0;)Z
    .locals 5

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_1

    return v1

    .line 8
    :cond_1
    iget-object v2, v0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/Od1;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/Od1;-><init>(Lcom/android/tools/r8/internal/i40;Lcom/android/tools/r8/graph/y;)V

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 12
    invoke-interface {v0}, Lcom/android/tools/r8/internal/Ic0;->g()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Hc0;

    .line 13
    invoke-interface {v3}, Lcom/android/tools/r8/internal/Hc0;->getBooleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    invoke-interface {v2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 14
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xt;

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    return v1

    .line 17
    :cond_5
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1

    .line 20
    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-nez v0, :cond_8

    .line 21
    sget-boolean p1, Lcom/android/tools/r8/internal/i40;->a:Z

    if-eqz p1, :cond_7

    return v1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v2, :cond_9

    .line 24
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1

    :cond_9
    return v1
.end method
