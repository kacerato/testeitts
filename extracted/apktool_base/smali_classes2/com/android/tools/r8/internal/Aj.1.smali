.class public final Lcom/android/tools/r8/internal/Aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/Set;

.field public final c:Lcom/android/tools/r8/internal/Mw;

.field public final d:Ljava/util/List;

.field public final e:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/internal/Mw;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Aj;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Aj;->c:Lcom/android/tools/r8/internal/Mw;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Aj;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Aj;->e:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ix;Ljava/util/Deque;)V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jx;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Jx;

    .line 153
    iget-object v1, v1, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 155
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Jx;->a(Ljava/util/Deque;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;Ljava/util/IdentityHashMap;)V
    .locals 1

    .line 158
    new-instance v0, Lcom/android/tools/r8/internal/nz0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/nz0;-><init>(Ljava/util/IdentityHashMap;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/o50;)V
    .locals 1

    .line 157
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Gx;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Deque;

    invoke-virtual {p0, v0, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/internal/f80;Lcom/android/tools/r8/graph/F5;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/uz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uz0;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    .line 45
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/f80;

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/o50;)Z
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/xw;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/F5;)Z
    .locals 0

    .line 22
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/xw;->a(Lcom/android/tools/r8/graph/F5;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 23
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/F5;)Z
    .locals 1

    .line 69
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/uz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uz0;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    .line 71
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/f80;

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/YS;)Z
    .locals 1

    .line 137
    instance-of v0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/f80;Lcom/android/tools/r8/internal/Gx;)Lcom/android/tools/r8/internal/o50;
    .locals 2

    .line 148
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 149
    new-instance v1, Lcom/android/tools/r8/internal/vz0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/internal/vz0;-><init>(Lcom/android/tools/r8/internal/Aj;Lcom/android/tools/r8/internal/f80;Ljava/util/Deque;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Gx;->b(Ljava/util/function/Consumer;)V

    .line 150
    new-instance p1, Lcom/android/tools/r8/internal/o50;

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/yg;
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 160
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 161
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/G1;->a()Lcom/android/tools/r8/internal/Im0;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    sget-object v0, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    .line 168
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    .line 171
    invoke-static {p1}, Lcom/android/tools/r8/internal/ig;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    goto/16 :goto_4

    .line 172
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    sget-boolean p1, Lcom/android/tools/r8/internal/Aj;->f:Z

    if-nez p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    instance-of p1, v0, Lcom/android/tools/r8/internal/Hm0;

    if-nez p1, :cond_4

    .line 176
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->g0()Z

    move-result p1

    if-nez p1, :cond_4

    .line 177
    instance-of p1, v0, Lcom/android/tools/r8/internal/Dm0;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 178
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 179
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    instance-of p1, v0, Lcom/android/tools/r8/internal/Hm0;

    if-eqz p1, :cond_5

    .line 181
    sget-boolean p1, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 182
    sget-object p1, Lcom/android/tools/r8/internal/zt;->d:Lcom/android/tools/r8/internal/zt;

    goto :goto_2

    .line 183
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 184
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    .line 185
    sget-boolean v1, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 186
    new-instance v1, Lcom/android/tools/r8/internal/kv;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    move-object p1, v1

    .line 187
    :goto_2
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    goto :goto_4

    .line 188
    :cond_6
    sget-boolean v1, Lcom/android/tools/r8/internal/Aj;->f:Z

    if-nez v1, :cond_8

    .line 189
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 191
    :cond_8
    :goto_3
    invoke-static {v0}, Lcom/android/tools/r8/internal/ug;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    .line 192
    :goto_4
    instance-of v0, p1, Lcom/android/tools/r8/internal/zv0;

    if-nez v0, :cond_9

    .line 193
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p1

    return-object p1

    .line 194
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a()Ljava/util/IdentityHashMap;
    .locals 5

    .line 48
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 50
    new-instance v3, Lcom/android/tools/r8/internal/mz0;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/mz0;-><init>(Lcom/android/tools/r8/internal/Aj;Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    sget-object v4, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/f80;Ljava/util/concurrent/ExecutorService;)Ljava/util/IdentityHashMap;
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->d:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/internal/yz0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/yz0;-><init>(Lcom/android/tools/r8/internal/Aj;Lcom/android/tools/r8/internal/f80;)V

    new-instance v2, Lcom/android/tools/r8/internal/dz0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/dz0;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 139
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    .line 140
    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Ljava/util/function/Predicate;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p2

    .line 141
    iget-object p1, p1, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 142
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 143
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/F5;

    .line 144
    iget-object v1, p0, Lcom/android/tools/r8/internal/Aj;->c:Lcom/android/tools/r8/internal/Mw;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/ez0;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/ez0;-><init>(Lcom/android/tools/r8/internal/Aj;Lcom/android/tools/r8/graph/F5;)V

    .line 145
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v4

    .line 146
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/tools/r8/internal/Mw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F5;Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/ns0;)V

    goto :goto_0

    .line 147
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/fz0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/fz0;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Consumer;)Ljava/util/IdentityHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Ljava/util/Map;
    .locals 4

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Aj;->a()Ljava/util/IdentityHashMap;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    .line 37
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/f80;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Aj;->a(Ljava/util/IdentityHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 39
    new-instance v3, Lcom/android/tools/r8/internal/oz0;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/oz0;-><init>(Ljava/util/Map;Lcom/android/tools/r8/internal/f80;)V

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/tools/r8/internal/Aj;->a(Ljava/util/IdentityHashMap;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    .line 40
    new-instance v0, Lcom/android/tools/r8/internal/pz0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/pz0;-><init>(Lcom/android/tools/r8/internal/f80;)V

    .line 41
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/tools/r8/internal/Aj;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    .line 42
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/Aj;->a(Lcom/android/tools/r8/internal/f80;Ljava/util/concurrent/ExecutorService;)Ljava/util/IdentityHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/IdentityHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/android/tools/r8/internal/Aj;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Aj;->b:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    .line 64
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/cz0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/cz0;-><init>(Lcom/android/tools/r8/internal/Aj;Ljava/util/Map;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Vr0;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;)V
    .locals 2

    .line 25
    iget-object v0, p2, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 26
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 30
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    .line 31
    new-instance v0, Lcom/android/tools/r8/internal/xw;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/xw;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 32
    new-instance p1, Lcom/android/tools/r8/internal/rz0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/rz0;-><init>(Lcom/android/tools/r8/internal/xw;)V

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/internal/V60;)V

    .line 33
    :cond_1
    invoke-interface {p2, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/f80;Ljava/util/Deque;Lcom/android/tools/r8/internal/Ix;)V
    .locals 8

    .line 1
    iget-object v0, p3, Lcom/android/tools/r8/internal/Ix;->e:Lcom/android/tools/r8/graph/F5;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/F5;

    if-eqz p1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Aj;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/yg;

    move-result-object v3

    new-instance p1, Lcom/android/tools/r8/internal/tz0;

    invoke-direct {p1, p3, p2}, Lcom/android/tools/r8/internal/tz0;-><init>(Lcom/android/tools/r8/internal/Ix;Ljava/util/Deque;)V

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Ix;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object p2

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Ix;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 9
    sget-object v6, Lcom/android/tools/r8/internal/Bo0;->a:Lcom/android/tools/r8/internal/zo0;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v7, p1

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/internal/Iw0;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 12
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Ix;->a(Lcom/android/tools/r8/internal/Iw0;)V

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/internal/b2;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/IdentityHashMap;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/android/tools/r8/internal/qz0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/qz0;-><init>(Lcom/android/tools/r8/internal/Aj;Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/Aj;->e:Lcom/android/tools/r8/internal/nJ;

    .line 74
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p2

    .line 75
    invoke-static {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Tr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/graph/F5;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->c:Lcom/android/tools/r8/internal/Mw;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Mw;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    .line 53
    instance-of v1, v0, Lcom/android/tools/r8/internal/zv0;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->g()Lcom/android/tools/r8/internal/xg;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xg;->A()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/p10;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 59
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 11

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/gz0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/gz0;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/Aj;->a(Lcom/android/tools/r8/graph/H5;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p3

    .line 116
    new-instance v0, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/tZ;

    .line 117
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/tools/r8/internal/f80;

    if-nez v9, :cond_2

    goto :goto_0

    .line 118
    :cond_2
    new-instance v10, Lcom/android/tools/r8/internal/yj;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    move-object v2, v10

    move-object v4, p3

    move-object v5, v9

    move-object v6, v1

    move-object v7, v9

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/yj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/f80;Lcom/android/tools/r8/internal/tZ;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;)V

    .line 119
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Cw;->b()V

    .line 120
    iget-object v2, v9, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 77
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l;->a()Ljava/util/Set;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/android/tools/r8/internal/kz0;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/tools/r8/internal/kz0;-><init>(Lcom/android/tools/r8/internal/Aj;Ljava/util/Set;Ljava/util/function/Consumer;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Vr0;)V

    .line 80
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/internal/lz0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/lz0;-><init>(Lcom/android/tools/r8/internal/Aj;Ljava/util/Map;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 81
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 82
    invoke-static {v0, v1, p1, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V
    .locals 4

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/f80;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/f80;

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    .line 16
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/F5;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/tools/r8/internal/Aj;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;)V

    .line 21
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/Aj;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Ljava/util/function/Predicate;)Z
    .locals 4

    .line 122
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 123
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->B0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/sz0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/sz0;-><init>(Ljava/util/function/Predicate;)V

    .line 126
    iget-object p1, p1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 127
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    .line 128
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/Aj;->f:Z

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    .line 131
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 132
    :cond_5
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/zj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 133
    invoke-direct {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/zj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Predicate;)V

    .line 134
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 135
    iget-object p1, v0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 136
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/wz0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/wz0;-><init>(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V

    invoke-interface {p3, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 68
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/Set;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/f80;)Z
    .locals 4

    .line 83
    sget-boolean p3, Lcom/android/tools/r8/internal/Aj;->f:Z

    if-nez p3, :cond_1

    .line 84
    iget-object v0, p4, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 87
    :cond_1
    :goto_0
    iget-object v0, p4, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 88
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    .line 91
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/tools/r8/internal/Aj;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9

    .line 94
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Aj;->e:Lcom/android/tools/r8/internal/nJ;

    .line 96
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 97
    instance-of p1, p1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->K1()Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/iz0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/iz0;-><init>(Lcom/android/tools/r8/internal/Aj;)V

    .line 99
    iget-object v3, p1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object p1, p1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v3, p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p1

    .line 100
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 101
    invoke-interface {p4, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return v2

    .line 102
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    .line 103
    sget-boolean v1, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v1, :cond_4

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    .line 105
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 107
    :cond_5
    invoke-interface {p4, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return v2

    :cond_6
    :goto_1
    if-nez p3, :cond_8

    .line 108
    iget-object p1, p4, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 109
    new-instance p2, Lcom/android/tools/r8/internal/jz0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/jz0;-><init>(Lcom/android/tools/r8/internal/Aj;)V

    .line 110
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 111
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    const/4 p1, 0x0

    return p1

    .line 112
    :cond_9
    :goto_3
    invoke-interface {p4, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return v2
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/f80;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->K1()Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p1

    .line 6
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/xw;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/internal/xw;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/xz0;

    invoke-direct {v1, v2, v0, p3}, Lcom/android/tools/r8/internal/xz0;-><init>(Lcom/android/tools/r8/internal/xw;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/internal/V60;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final synthetic b(Ljava/util/Map;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Aj;->a(Ljava/util/Map;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/F5;)Z
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Aj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result p1

    return p1
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Q00;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Aj;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/yg;

    move-result-object p1

    return-object p1
.end method
