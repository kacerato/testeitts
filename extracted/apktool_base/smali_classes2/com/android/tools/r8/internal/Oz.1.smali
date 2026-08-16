.class public final Lcom/android/tools/r8/internal/Oz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lcom/android/tools/r8/internal/Wh;

.field public final d:Lcom/android/tools/r8/internal/aL;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    sget-object v1, Lcom/android/tools/r8/internal/pv;->e:Lcom/android/tools/r8/internal/pv;

    sget-object v2, Lcom/android/tools/r8/internal/sw;->b:Lcom/android/tools/r8/internal/lw;

    .line 2
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 3
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    sget-object v9, Lcom/android/tools/r8/internal/ss0;->b:Lcom/android/tools/r8/internal/os0;

    sget-object v10, Lcom/android/tools/r8/internal/ss0;->c:Lcom/android/tools/r8/internal/ps0;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v8, v11

    .line 5
    invoke-direct/range {v0 .. v11}, Lcom/android/tools/r8/internal/Oz;-><init>(Lcom/android/tools/r8/internal/pv;Lcom/android/tools/r8/internal/sw;Ljava/util/Map;ZZZILjava/util/List;Lcom/android/tools/r8/internal/ss0;Lcom/android/tools/r8/internal/ss0;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/pv;Lcom/android/tools/r8/internal/sw;Ljava/util/Map;ZZZILjava/util/List;Lcom/android/tools/r8/internal/ss0;Lcom/android/tools/r8/internal/ss0;Ljava/util/List;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Oz;->a:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Oz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Wh;

    invoke-direct {v0, p3, p6, p11}, Lcom/android/tools/r8/internal/Wh;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Oz;->c:Lcom/android/tools/r8/internal/Wh;

    .line 10
    iput-boolean p4, p0, Lcom/android/tools/r8/internal/Oz;->f:Z

    .line 11
    iput-boolean p5, p0, Lcom/android/tools/r8/internal/Oz;->g:Z

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->A:Lcom/android/tools/r8/internal/au0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p3, Lcom/android/tools/r8/internal/ss0;->b:Lcom/android/tools/r8/internal/os0;

    if-ne p9, p3, :cond_0

    .line 15
    sget-object p3, Lcom/android/tools/r8/internal/T30;->c:Lcom/android/tools/r8/internal/S30;

    goto :goto_0

    .line 16
    :cond_0
    new-instance p3, Lcom/android/tools/r8/internal/S30;

    invoke-direct {p3, p9}, Lcom/android/tools/r8/internal/S30;-><init>(Lcom/android/tools/r8/internal/ss0;)V

    .line 17
    :goto_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->p:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->g:Lcom/android/tools/r8/internal/Xt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->d:Lcom/android/tools/r8/internal/Xt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->e:Lcom/android/tools/r8/internal/Xt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->f:Lcom/android/tools/r8/internal/Xt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x1

    if-ne p7, p3, :cond_1

    .line 25
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->k:Lcom/android/tools/r8/internal/zt0;

    goto :goto_1

    .line 26
    :cond_1
    new-instance p3, Lcom/android/tools/r8/internal/Kz;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/Kz;-><init>()V

    .line 27
    :goto_1
    sget-object p4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 28
    new-instance p5, Lcom/android/tools/r8/internal/Xt0;

    const-class p6, Ljava/lang/Long;

    invoke-direct {p5, p4, p6, p3}, Lcom/android/tools/r8/internal/Xt0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    .line 29
    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object p4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 31
    new-instance p5, Lcom/android/tools/r8/internal/Iz;

    invoke-direct {p5}, Lcom/android/tools/r8/internal/Iz;-><init>()V

    .line 32
    new-instance p6, Lcom/android/tools/r8/internal/Xt0;

    const-class p7, Ljava/lang/Double;

    invoke-direct {p6, p4, p7, p5}, Lcom/android/tools/r8/internal/Xt0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    .line 33
    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object p4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 35
    new-instance p5, Lcom/android/tools/r8/internal/Jz;

    invoke-direct {p5}, Lcom/android/tools/r8/internal/Jz;-><init>()V

    .line 36
    new-instance p6, Lcom/android/tools/r8/internal/Xt0;

    const-class p7, Ljava/lang/Float;

    invoke-direct {p6, p4, p7, p5}, Lcom/android/tools/r8/internal/Xt0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    .line 37
    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object p4, Lcom/android/tools/r8/internal/ss0;->c:Lcom/android/tools/r8/internal/ps0;

    if-ne p10, p4, :cond_2

    .line 39
    sget-object p4, Lcom/android/tools/r8/internal/C10;->b:Lcom/android/tools/r8/internal/B10;

    goto :goto_2

    .line 40
    :cond_2
    new-instance p4, Lcom/android/tools/r8/internal/C10;

    invoke-direct {p4, p10}, Lcom/android/tools/r8/internal/C10;-><init>(Lcom/android/tools/r8/internal/ss0;)V

    .line 41
    new-instance p5, Lcom/android/tools/r8/internal/B10;

    invoke-direct {p5, p4}, Lcom/android/tools/r8/internal/B10;-><init>(Lcom/android/tools/r8/internal/C10;)V

    move-object p4, p5

    .line 42
    :goto_2
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object p4, Lcom/android/tools/r8/internal/ku0;->h:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object p4, Lcom/android/tools/r8/internal/ku0;->i:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p4, Lcom/android/tools/r8/internal/Lz;

    invoke-direct {p4, p3}, Lcom/android/tools/r8/internal/Lz;-><init>(Lcom/android/tools/r8/internal/vt0;)V

    .line 46
    new-instance p5, Lcom/android/tools/r8/internal/ut0;

    invoke-direct {p5, p4}, Lcom/android/tools/r8/internal/ut0;-><init>(Lcom/android/tools/r8/internal/vt0;)V

    .line 47
    new-instance p4, Lcom/android/tools/r8/internal/Wt0;

    const-class p6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p4, p6, p5}, Lcom/android/tools/r8/internal/Wt0;-><init>(Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    .line 48
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance p4, Lcom/android/tools/r8/internal/Mz;

    invoke-direct {p4, p3}, Lcom/android/tools/r8/internal/Mz;-><init>(Lcom/android/tools/r8/internal/vt0;)V

    .line 50
    new-instance p3, Lcom/android/tools/r8/internal/ut0;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/internal/ut0;-><init>(Lcom/android/tools/r8/internal/vt0;)V

    .line 51
    new-instance p4, Lcom/android/tools/r8/internal/Wt0;

    const-class p5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {p4, p5, p3}, Lcom/android/tools/r8/internal/Wt0;-><init>(Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    .line 52
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->j:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->l:Lcom/android/tools/r8/internal/Xt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->q:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->r:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->m:Lcom/android/tools/r8/internal/Et0;

    .line 58
    new-instance p4, Lcom/android/tools/r8/internal/Wt0;

    const-class p5, Ljava/math/BigDecimal;

    invoke-direct {p4, p5, p3}, Lcom/android/tools/r8/internal/Wt0;-><init>(Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    .line 59
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->n:Lcom/android/tools/r8/internal/Ft0;

    .line 61
    new-instance p4, Lcom/android/tools/r8/internal/Wt0;

    const-class p5, Ljava/math/BigInteger;

    invoke-direct {p4, p5, p3}, Lcom/android/tools/r8/internal/Wt0;-><init>(Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    .line 62
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->o:Lcom/android/tools/r8/internal/Gt0;

    .line 64
    new-instance p4, Lcom/android/tools/r8/internal/Wt0;

    const-class p5, Lcom/android/tools/r8/internal/rR;

    invoke-direct {p4, p5, p3}, Lcom/android/tools/r8/internal/Wt0;-><init>(Ljava/lang/Class;Lcom/android/tools/r8/internal/vt0;)V

    .line 65
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->s:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->t:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->v:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->w:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->y:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->u:Lcom/android/tools/r8/internal/au0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->b:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object p3, Lcom/android/tools/r8/internal/aj;->b:Lcom/android/tools/r8/internal/Zi;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->x:Lcom/android/tools/r8/internal/Yt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-boolean p3, Lcom/android/tools/r8/internal/Nn0;->a:Z

    if-eqz p3, :cond_3

    .line 76
    sget-object p3, Lcom/android/tools/r8/internal/Nn0;->e:Lcom/android/tools/r8/internal/Hn0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object p3, Lcom/android/tools/r8/internal/Nn0;->d:Lcom/android/tools/r8/internal/Fn0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object p3, Lcom/android/tools/r8/internal/Nn0;->f:Lcom/android/tools/r8/internal/Jn0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_3
    sget-object p3, Lcom/android/tools/r8/internal/V3;->c:Lcom/android/tools/r8/internal/U3;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->a:Lcom/android/tools/r8/internal/Wt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p3, Lcom/android/tools/r8/internal/Xe;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/Xe;-><init>(Lcom/android/tools/r8/internal/Wh;)V

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p3, Lcom/android/tools/r8/internal/SU;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/SU;-><init>(Lcom/android/tools/r8/internal/Wh;)V

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p7, Lcom/android/tools/r8/internal/aL;

    invoke-direct {p7, v0}, Lcom/android/tools/r8/internal/aL;-><init>(Lcom/android/tools/r8/internal/Wh;)V

    iput-object p7, p0, Lcom/android/tools/r8/internal/Oz;->d:Lcom/android/tools/r8/internal/aL;

    .line 84
    invoke-virtual {v1, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object p3, Lcom/android/tools/r8/internal/ku0;->B:Lcom/android/tools/r8/internal/Tt0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance p9, Lcom/android/tools/r8/internal/He0;

    move-object p3, p9

    move-object p4, v0

    move-object p5, p2

    move-object p6, p1

    move-object p8, p11

    invoke-direct/range {p3 .. p8}, Lcom/android/tools/r8/internal/He0;-><init>(Lcom/android/tools/r8/internal/Wh;Lcom/android/tools/r8/internal/sw;Lcom/android/tools/r8/internal/pv;Lcom/android/tools/r8/internal/aL;Ljava/util/List;)V

    invoke-virtual {v1, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oz;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 6

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_0

    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oz;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/Oz;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/vt0;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    .line 25
    :goto_0
    :try_start_0
    new-instance v2, Lcom/android/tools/r8/internal/Nz;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Nz;-><init>()V

    .line 26
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v3, p0, Lcom/android/tools/r8/internal/Oz;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/wt0;

    .line 28
    invoke-interface {v4, p0, p1}, Lcom/android/tools/r8/internal/wt0;->a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 29
    iget-object v3, v2, Lcom/android/tools/r8/internal/Nz;->a:Lcom/android/tools/r8/internal/vt0;

    if-nez v3, :cond_4

    .line 30
    iput-object v4, v2, Lcom/android/tools/r8/internal/Nz;->a:Lcom/android/tools/r8/internal/vt0;

    .line 31
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 32
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Delegate is already set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 33
    iget-object v2, p0, Lcom/android/tools/r8/internal/Oz;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    if-eqz v4, :cond_8

    if-eqz v1, :cond_7

    .line 34
    iget-object p1, p0, Lcom/android/tools/r8/internal/Oz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    return-object v4

    .line 35
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON (2.10.1) cannot handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    if-eqz v1, :cond_9

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oz;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 37
    :cond_9
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/wt0;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oz;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object p1, p0, Lcom/android/tools/r8/internal/Oz;->d:Lcom/android/tools/r8/internal/aL;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oz;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/wt0;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/android/tools/r8/internal/wt0;->a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSON cannot serialize "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/lL;Lcom/android/tools/r8/internal/Cu0;)Ljava/lang/Object;
    .locals 4

    .line 75
    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 76
    iget-boolean v1, p1, Lcom/android/tools/r8/internal/lL;->b:Z

    const/4 v2, 0x1

    .line 77
    iput-boolean v2, p1, Lcom/android/tools/r8/internal/lL;->b:Z

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iput-boolean v1, p1, Lcom/android/tools/r8/internal/lL;->b:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_2

    :catch_3
    move-exception p2

    goto :goto_3

    .line 82
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 83
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 84
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_0

    .line 85
    iput-boolean v1, p1, Lcom/android/tools/r8/internal/lL;->b:Z

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :goto_4
    iput-boolean v1, p1, Lcom/android/tools/r8/internal/lL;->b:Z

    .line 88
    throw p2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/lL;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/lL;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p1, Lcom/android/tools/r8/internal/lL;->b:Z

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/lL;Lcom/android/tools/r8/internal/Cu0;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/mL;

    const-string p2, "JSON document was not fully consumed."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/android/tools/r8/internal/GU; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 8
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/eL;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/eL;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 9
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/mL;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_2
    :goto_2
    move-object p1, v0

    .line 10
    :goto_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    const-class p2, Ljava/lang/Integer;

    goto :goto_4

    .line 11
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    const-class p2, Ljava/lang/Float;

    goto :goto_4

    .line 12
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    const-class p2, Ljava/lang/Byte;

    goto :goto_4

    .line 13
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    const-class p2, Ljava/lang/Double;

    goto :goto_4

    .line 14
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    const-class p2, Ljava/lang/Long;

    goto :goto_4

    .line 15
    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_8

    const-class p2, Ljava/lang/Character;

    goto :goto_4

    .line 16
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_9

    const-class p2, Ljava/lang/Boolean;

    goto :goto_4

    .line 17
    :cond_9
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_a

    const-class p2, Ljava/lang/Short;

    goto :goto_4

    .line 18
    :cond_a
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_b

    const-class p2, Ljava/lang/Void;

    .line 19
    :cond_b
    :goto_4
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 45
    :try_start_0
    new-instance v2, Lcom/android/tools/r8/internal/qL;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/qL;-><init>(Ljava/io/Writer;)V

    .line 46
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Oz;->g:Z

    .line 47
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/qL;->f:Z

    const/4 v3, 0x0

    .line 48
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/qL;->e:Z

    .line 49
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Oz;->f:Z

    .line 50
    iput-boolean v3, v2, Lcom/android/tools/r8/internal/qL;->h:Z

    .line 51
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/tools/r8/internal/Oz;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/android/tools/r8/internal/qL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Lcom/android/tools/r8/internal/eL;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/eL;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Class;Lcom/android/tools/r8/internal/qL;)V
    .locals 5

    .line 54
    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 55
    new-instance v1, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object p2

    .line 57
    iget-boolean v1, p3, Lcom/android/tools/r8/internal/qL;->e:Z

    const/4 v2, 0x1

    .line 58
    iput-boolean v2, p3, Lcom/android/tools/r8/internal/qL;->e:Z

    .line 59
    iget-boolean v2, p3, Lcom/android/tools/r8/internal/qL;->f:Z

    .line 60
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/Oz;->g:Z

    .line 61
    iput-boolean v3, p3, Lcom/android/tools/r8/internal/qL;->f:Z

    .line 62
    iget-boolean v3, p3, Lcom/android/tools/r8/internal/qL;->h:Z

    .line 63
    iget-boolean v4, p0, Lcom/android/tools/r8/internal/Oz;->f:Z

    .line 64
    iput-boolean v4, p3, Lcom/android/tools/r8/internal/qL;->h:Z

    .line 65
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iput-boolean v1, p3, Lcom/android/tools/r8/internal/qL;->e:Z

    .line 67
    iput-boolean v2, p3, Lcom/android/tools/r8/internal/qL;->f:Z

    .line 68
    iput-boolean v3, p3, Lcom/android/tools/r8/internal/qL;->h:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 70
    new-instance p2, Lcom/android/tools/r8/internal/eL;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/eL;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_0
    iput-boolean v1, p3, Lcom/android/tools/r8/internal/qL;->e:Z

    .line 72
    iput-boolean v2, p3, Lcom/android/tools/r8/internal/qL;->f:Z

    .line 73
    iput-boolean v3, p3, Lcom/android/tools/r8/internal/qL;->h:Z

    .line 74
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Oz;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oz;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oz;->c:Lcom/android/tools/r8/internal/Wh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
