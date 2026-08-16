.class public final Lcom/android/tools/r8/internal/px0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/AX;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Ljava/util/HashMap;

.field public final synthetic d:Lcom/android/tools/r8/internal/qx0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/qx0;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    iput-object p1, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/AX;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/AX;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/px0;->a:Lcom/android/tools/r8/internal/AX;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/px0;->b:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/px0;->c:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v0, Lcom/android/tools/r8/internal/oq1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/oq1;-><init>(Lcom/android/tools/r8/internal/px0;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v1, v0, p2}, Lcom/android/tools/r8/graph/c4;->a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/wX;)V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 34
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    .line 39
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 40
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/graph/j;->d(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 44
    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 46
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    iget-object v1, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 49
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 50
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 51
    sget-boolean v2, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v2, :cond_4

    .line 52
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_4

    .line 53
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    :goto_4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 57
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eq p2, p1, :cond_6

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/qx0;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/px0;

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 62
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 63
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/tools/r8/internal/px0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V

    :cond_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qx0;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H2;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/px0;

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/internal/px0;->e:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/px0;->a:Lcom/android/tools/r8/internal/AX;

    iget-object v2, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    iget-object v3, v0, Lcom/android/tools/r8/internal/px0;->a:Lcom/android/tools/r8/internal/AX;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AX;)V

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/internal/px0;->b:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/qq1;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/qq1;-><init>(Lcom/android/tools/r8/internal/px0;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/px0;->c:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/rq1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/rq1;-><init>(Lcom/android/tools/r8/internal/px0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/internal/AX;)V
    .locals 4

    .line 10
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v2, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq p2, v2, :cond_0

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0, p2}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object p2

    .line 18
    iget-object p2, p2, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 19
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;)Z

    move-result p2

    goto :goto_0

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0, p2}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    :goto_0
    if-nez p2, :cond_2

    .line 22
    invoke-virtual {p0, p3, p4}, Lcom/android/tools/r8/internal/px0;->a(Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/internal/AX;)V

    return-void

    .line 23
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 27
    iget-object p3, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 28
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 29
    invoke-virtual {p0, p2, p4}, Lcom/android/tools/r8/internal/px0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/AX;)V

    goto :goto_1

    :cond_3
    return-void

    .line 30
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/internal/px0;->a:Lcom/android/tools/r8/internal/AX;

    iget-object p3, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p3, p4}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AX;)V

    .line 31
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/pq1;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/pq1;-><init>(Lcom/android/tools/r8/internal/px0;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/internal/yX;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/AX;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/px0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/AX;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/nq1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/nq1;-><init>()V

    .line 65
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AX;

    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 68
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/AX;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/nq1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/nq1;-><init>()V

    .line 70
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AX;

    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 71
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AX;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/pg;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->c:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/nq1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/nq1;-><init>()V

    .line 73
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AX;

    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 76
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/internal/AX;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->c:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/nq1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/nq1;-><init>()V

    .line 78
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AX;

    iget-object v0, p0, Lcom/android/tools/r8/internal/px0;->d:Lcom/android/tools/r8/internal/qx0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qx0;->g:Lcom/android/tools/r8/graph/y;

    .line 79
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AX;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/px0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
