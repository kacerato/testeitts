.class public final Lcom/android/tools/r8/internal/kp0;
.super Lcom/android/tools/r8/internal/Tj;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/internal/EJ;

.field public final synthetic g:Lcom/android/tools/r8/internal/qp0;

.field public final synthetic h:Lcom/android/tools/r8/internal/np0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/np0;Lcom/android/tools/r8/internal/EJ;Lcom/android/tools/r8/internal/qp0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/kp0;->f:Lcom/android/tools/r8/internal/EJ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/kp0;->g:Lcom/android/tools/r8/internal/qp0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Tj;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)Lcom/android/tools/r8/internal/Hp0;
    .locals 1

    .line 133
    new-instance p0, Lcom/android/tools/r8/internal/Ap0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ap0;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p1, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/mp0;Ljava/util/List;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)V
    .locals 2

    .line 114
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/x1;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/x1;->b(ILjava/lang/Object;)I

    .line 115
    iget-object p0, p1, Lcom/android/tools/r8/internal/mp0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Hp0;

    .line 116
    iget-object v0, p1, Lcom/android/tools/r8/internal/mp0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Hp0;

    if-nez p0, :cond_3

    .line 117
    sget-boolean p0, Lcom/android/tools/r8/internal/kp0;->i:Z

    if-nez p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 118
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_2

    .line 119
    iget-object p0, p1, Lcom/android/tools/r8/internal/mp0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object p0, p1, Lcom/android/tools/r8/internal/mp0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p3, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 121
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/Ep0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ep0;-><init>()V

    .line 122
    iget-object p0, p1, Lcom/android/tools/r8/internal/mp0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object p0, p1, Lcom/android/tools/r8/internal/mp0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_3
    sget-boolean p0, Lcom/android/tools/r8/internal/kp0;->i:Z

    if-nez p0, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 125
    :cond_5
    :goto_1
    iget-object p0, v0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    .line 126
    invoke-interface {p0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p0, p4, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object p0, p4, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/yp0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/BiConsumer;)V
    .locals 3

    .line 106
    sget-boolean v0, Lcom/android/tools/r8/internal/kp0;->i:Z

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p3, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    .line 108
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 110
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/wp0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/wp0;-><init>(Lcom/android/tools/r8/internal/yp0;)V

    .line 111
    new-instance v1, Lcom/android/tools/r8/internal/wh1;

    invoke-direct {v1, p4, v0}, Lcom/android/tools/r8/internal/wh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/wp0;)V

    new-instance v2, Lcom/android/tools/r8/internal/xh1;

    invoke-direct {v2, p4, p1}, Lcom/android/tools/r8/internal/xh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    invoke-static {p0, p3, v1, v2}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 112
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/yp0;->a(Lcom/android/tools/r8/internal/wp0;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)V
    .locals 2

    .line 70
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Hp0;

    if-nez v0, :cond_0

    .line 71
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 73
    :cond_0
    instance-of p0, v0, Lcom/android/tools/r8/internal/Bp0;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 74
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    instance-of p0, p3, Lcom/android/tools/r8/internal/Bp0;

    if-nez p0, :cond_1

    .line 76
    instance-of p0, p3, Lcom/android/tools/r8/internal/zp0;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 77
    :cond_2
    instance-of p0, v0, Lcom/android/tools/r8/internal/zp0;

    if-eqz p0, :cond_3

    .line 78
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    instance-of p0, p3, Lcom/android/tools/r8/internal/zp0;

    goto :goto_0

    .line 80
    :cond_3
    instance-of p0, v0, Lcom/android/tools/r8/internal/vp0;

    if-eqz p0, :cond_4

    .line 81
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    instance-of p0, p3, Lcom/android/tools/r8/internal/vp0;

    :goto_0
    xor-int/2addr v1, p0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 83
    iget-object p0, v0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p0, p3, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/up0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    .line 102
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/wp0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    .line 113
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/xp0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    .line 101
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 129
    new-instance v0, Lcom/android/tools/r8/internal/vp0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vp0;-><init>()V

    .line 130
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    .line 104
    new-instance v0, Lcom/android/tools/r8/internal/Gp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Gp0;-><init>(Lcom/android/tools/r8/internal/VJ;)V

    .line 105
    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Z
    .locals 5

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    move v1, p0

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 6
    iget-object v3, p1, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    .line 7
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr p0, v3

    .line 8
    iget-object v3, p1, Lcom/android/tools/r8/internal/pp0;->b:Ljava/util/Map;

    .line 9
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 10
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 11
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    if-nez v1, :cond_2

    .line 12
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v4

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/kp0;->i:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/kp0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Z

    move-result p2

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/internal/pp0;->c:Ljava/util/Map;

    .line 7
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 9
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    const/4 p0, 0x0

    .line 10
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 12
    iget-object v3, p1, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr p0, v3

    .line 13
    invoke-interface {v2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    :cond_3
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 16
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_4
    or-int/2addr p0, p2

    if-eqz p0, :cond_5

    .line 17
    iget-object p0, p1, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    .line 18
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 19
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public static b(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 92
    new-instance v0, Lcom/android/tools/r8/internal/vp0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vp0;-><init>()V

    .line 93
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 94
    new-instance v0, Lcom/android/tools/r8/internal/zp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zp0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    .line 95
    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Bp0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bp0;-><init>()V

    .line 2
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/zp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zp0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    .line 4
    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Bp0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bp0;-><init>()V

    .line 2
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/zp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zp0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    .line 4
    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Bp0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bp0;-><init>()V

    .line 2
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Dp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Dp0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    .line 4
    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static f(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Dp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Dp0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static g(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Gp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Gp0;-><init>(Lcom/android/tools/r8/internal/VJ;)V

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static h(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zp0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zp0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static j(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zp0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Rj;Ljava/util/List;)Lcom/android/tools/r8/internal/Ys0;
    .locals 6

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 15
    check-cast p1, Lcom/android/tools/r8/internal/mp0;

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/gd0;

    const/16 v1, 0x10

    .line 17
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/gd0;-><init>(I)V

    .line 18
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Rj;

    .line 19
    iget-object v3, v2, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 20
    check-cast v3, Lcom/android/tools/r8/internal/mp0;

    .line 21
    iget-object v4, v3, Lcom/android/tools/r8/internal/mp0;->a:Ljava/util/LinkedHashMap;

    new-instance v5, Lcom/android/tools/r8/internal/Oh1;

    invoke-direct {v5, v0, p1, p2}, Lcom/android/tools/r8/internal/Oh1;-><init>(Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/mp0;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 22
    iget v2, v2, Lcom/android/tools/r8/internal/Qj;->b:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    .line 23
    iput-boolean v2, v3, Lcom/android/tools/r8/internal/mp0;->c:Z

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->k()Lcom/android/tools/r8/internal/rd0;

    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/tools/r8/internal/dd0;

    .line 26
    new-instance v1, Lcom/android/tools/r8/internal/Zc0;

    .line 27
    iget-object v0, v0, Lcom/android/tools/r8/internal/dd0;->b:Lcom/android/tools/r8/internal/gd0;

    .line 28
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Zc0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    .line 29
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ed0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zc0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/hd0;

    .line 30
    sget-boolean v2, Lcom/android/tools/r8/internal/kp0;->i:Z

    if-nez v2, :cond_4

    invoke-interface {v0}, Lcom/android/tools/r8/internal/hd0;->getIntValue()I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_4
    :goto_2
    invoke-interface {v0}, Lcom/android/tools/r8/internal/hd0;->getIntValue()I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 32
    new-instance v3, Lcom/android/tools/r8/internal/Ep0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Ep0;-><init>()V

    .line 33
    iget-object v4, p1, Lcom/android/tools/r8/internal/mp0;->b:Ljava/util/IdentityHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Hp0;

    if-nez v2, :cond_6

    if-eqz v0, :cond_5

    goto :goto_3

    .line 34
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_6
    :goto_3
    iget-object v2, v3, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v2, v0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    .line 37
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, v3, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :cond_7
    iget-boolean p2, p1, Lcom/android/tools/r8/internal/mp0;->c:Z

    if-eqz p2, :cond_8

    .line 40
    iget-object p2, p1, Lcom/android/tools/r8/internal/mp0;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/Ph1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ph1;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 41
    :cond_8
    new-instance p2, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/Rj;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 8

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 44
    iget-object v2, p1, Lcom/android/tools/r8/internal/Qj;->a:Ljava/lang/Object;

    .line 45
    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 46
    iget-object v3, p0, Lcom/android/tools/r8/internal/kp0;->f:Lcom/android/tools/r8/internal/EJ;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/CJ;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/D1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/pp0;

    .line 47
    iget-object v4, p0, Lcom/android/tools/r8/internal/kp0;->g:Lcom/android/tools/r8/internal/qp0;

    .line 48
    invoke-virtual {v4, v2, v3}, Lcom/android/tools/r8/internal/qp0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pp0;)Lcom/android/tools/r8/internal/pp0;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/f60;

    .line 51
    iget-object v6, v3, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    new-instance v6, Lcom/android/tools/r8/internal/Qh1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/Qh1;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/Rh1;

    invoke-direct {v7, p0, v0, v1}, Lcom/android/tools/r8/internal/Rh1;-><init>(Lcom/android/tools/r8/internal/kp0;Ljava/util/Map;Ljava/util/Map;)V

    .line 53
    invoke-static {v5, v3, v6, v7}, Lcom/android/tools/r8/internal/kp0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    new-instance v6, Lcom/android/tools/r8/internal/vp0;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/vp0;-><init>()V

    .line 55
    invoke-static {v0, v1, v5, v6}, Lcom/android/tools/r8/internal/kp0;->a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 57
    iget-object v6, p0, Lcom/android/tools/r8/internal/kp0;->g:Lcom/android/tools/r8/internal/qp0;

    invoke-virtual {v6, v5, v3}, Lcom/android/tools/r8/internal/qp0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/pp0;)Lcom/android/tools/r8/internal/pp0;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    new-instance v6, Lcom/android/tools/r8/internal/Sh1;

    invoke-direct {v6, p0, v0, v1}, Lcom/android/tools/r8/internal/Sh1;-><init>(Lcom/android/tools/r8/internal/kp0;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p0, v5, v3, v6}, Lcom/android/tools/r8/internal/kp0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/BiConsumer;)V

    goto :goto_1

    .line 60
    :cond_2
    sget-boolean v4, Lcom/android/tools/r8/internal/kp0;->i:Z

    if-nez v4, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    if-nez v4, :cond_6

    .line 61
    iget-object v4, v3, Lcom/android/tools/r8/internal/pp0;->e:Ljava/util/Set;

    .line 62
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 63
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pp0;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    .line 64
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Seen root that is not a live string builder"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 65
    :cond_6
    :goto_3
    new-instance v3, Lcom/android/tools/r8/internal/mp0;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/mp0;-><init>(Ljava/util/LinkedHashMap;Ljava/util/IdentityHashMap;)V

    .line 66
    iput-object v3, p1, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 67
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 68
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 69
    :cond_7
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/BiConsumer;)V
    .locals 4

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    instance-of v0, p1, Lcom/android/tools/r8/internal/C4;

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    .line 89
    new-instance v1, Lcom/android/tools/r8/internal/vh1;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/vh1;-><init>(Lcom/android/tools/r8/internal/pp0;)V

    .line 90
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Pp0;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/BiConsumer;)V

    return-void

    .line 92
    :cond_1
    iget-object v0, p2, Lcom/android/tools/r8/internal/pp0;->f:Ljava/util/Set;

    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 94
    new-instance v2, Lcom/android/tools/r8/internal/Gh1;

    invoke-direct {v2, p3}, Lcom/android/tools/r8/internal/Gh1;-><init>(Ljava/util/function/BiConsumer;)V

    new-instance v3, Lcom/android/tools/r8/internal/Lh1;

    invoke-direct {v3, p3}, Lcom/android/tools/r8/internal/Lh1;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-static {v1, p2, v2, v3}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->E1()Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    :cond_3
    iget-object p1, p2, Lcom/android/tools/r8/internal/pp0;->d:Ljava/util/Set;

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 100
    new-instance v1, Lcom/android/tools/r8/internal/Mh1;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/Mh1;-><init>(Ljava/util/function/BiConsumer;)V

    new-instance v2, Lcom/android/tools/r8/internal/Nh1;

    invoke-direct {v2, p3}, Lcom/android/tools/r8/internal/Nh1;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-static {v0, p2, v1, v2}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/tools/r8/internal/vp0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vp0;-><init>()V

    .line 132
    invoke-static {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/kp0;->a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/BiConsumer;)V
    .locals 6

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 23
    sget-boolean v0, Lcom/android/tools/r8/internal/kp0;->i:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/Cp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Cp0;-><init>(Lcom/android/tools/r8/internal/tZ;)V

    .line 26
    invoke-interface {p3, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 33
    iget-object v4, v2, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 34
    iget-object v4, v4, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    .line 35
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 36
    iget-object v2, v2, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 37
    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    .line 38
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_6

    .line 39
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Pp0;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v2

    .line 41
    new-instance v3, Lcom/android/tools/r8/internal/up0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/up0;-><init>(Lcom/android/tools/r8/internal/mK;)V

    .line 42
    iget-object v2, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Pp0;->a(Lcom/android/tools/r8/internal/zE;)Ljava/lang/String;

    move-result-object v2

    .line 43
    iput-object v2, v3, Lcom/android/tools/r8/internal/up0;->g:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->z2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-nez v2, :cond_7

    .line 45
    iget-object v2, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 48
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 49
    iget-object v2, v2, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v2, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    .line 50
    iget-object v5, v5, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    if-ne v4, v5, :cond_6

    goto :goto_2

    .line 51
    :cond_6
    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    .line 52
    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    if-ne v4, v2, :cond_7

    .line 53
    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 54
    iput-object v0, v3, Lcom/android/tools/r8/internal/up0;->h:Lcom/android/tools/r8/internal/xw0;

    .line 55
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/Pp0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 56
    invoke-static {v0, p1, v3, p2, p3}, Lcom/android/tools/r8/internal/kp0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/yp0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/BiConsumer;)V

    .line 57
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/yh1;

    invoke-direct {p1, p3, v3}, Lcom/android/tools/r8/internal/yh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/up0;)V

    new-instance v0, Lcom/android/tools/r8/internal/Bh1;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/Bh1;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-static {v1, p2, p1, v0}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void

    .line 58
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Pp0;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    new-instance v0, Lcom/android/tools/r8/internal/Ch1;

    invoke-direct {v0, p3, p1}, Lcom/android/tools/r8/internal/Ch1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    new-instance v2, Lcom/android/tools/r8/internal/Dh1;

    invoke-direct {v2, p3, p1}, Lcom/android/tools/r8/internal/Dh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    invoke-static {v1, p2, v0, v2}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void

    .line 60
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    .line 62
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 63
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/q2;->m:Lcom/android/tools/r8/graph/A2;

    if-eq v3, v2, :cond_d

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/q2;->m:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v2, :cond_c

    goto :goto_5

    .line 64
    :cond_c
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/Eh1;

    invoke-direct {v0, p3, p1}, Lcom/android/tools/r8/internal/Eh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    new-instance v2, Lcom/android/tools/r8/internal/Fh1;

    invoke-direct {v2, p3, p1}, Lcom/android/tools/r8/internal/Fh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    invoke-static {v1, p2, v0, v2}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void

    .line 65
    :cond_d
    :goto_5
    new-instance v0, Lcom/android/tools/r8/internal/Hh1;

    invoke-direct {v0, p3, p1}, Lcom/android/tools/r8/internal/Hh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    new-instance v2, Lcom/android/tools/r8/internal/Ih1;

    invoke-direct {v2, p3, p1}, Lcom/android/tools/r8/internal/Ih1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    invoke-static {v1, p2, v0, v2}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void

    .line 66
    :cond_e
    :goto_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v2

    .line 67
    new-instance v3, Lcom/android/tools/r8/internal/xp0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/xp0;-><init>(Lcom/android/tools/r8/internal/QJ;)V

    .line 68
    iget-object v2, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Pp0;->a(Lcom/android/tools/r8/internal/zE;)Ljava/lang/String;

    move-result-object v2

    .line 69
    iput-object v2, v3, Lcom/android/tools/r8/internal/xp0;->g:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 70
    iget-object v2, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_7

    .line 73
    :cond_f
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 74
    iget-object v2, v2, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v2, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/q2;->q:Lcom/android/tools/r8/graph/A2;

    if-eq v4, v5, :cond_10

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->q:Lcom/android/tools/r8/graph/A2;

    if-ne v4, v2, :cond_11

    .line 75
    :cond_10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->z2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 76
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->z2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 77
    iput-object v2, v3, Lcom/android/tools/r8/internal/xp0;->h:Lcom/android/tools/r8/internal/xw0;

    .line 78
    :cond_11
    :goto_7
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_12

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/np0;->e:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Pp0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 82
    invoke-static {v0, p1, v3, p2, p3}, Lcom/android/tools/r8/internal/kp0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/yp0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/BiConsumer;)V

    .line 83
    :cond_12
    new-instance v0, Lcom/android/tools/r8/internal/Jh1;

    invoke-direct {v0, p3, v3}, Lcom/android/tools/r8/internal/Jh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/xp0;)V

    new-instance v2, Lcom/android/tools/r8/internal/Kh1;

    invoke-direct {v2, p3, p1}, Lcom/android/tools/r8/internal/Kh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    invoke-static {v1, p2, v0, v2}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void

    .line 84
    :cond_13
    sget-boolean v0, Lcom/android/tools/r8/internal/kp0;->i:Z

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_8

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 85
    :cond_15
    :goto_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v1

    if-nez v0, :cond_17

    .line 86
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/kp0;->h:Lcom/android/tools/r8/internal/np0;

    .line 87
    iget-object v2, v2, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 88
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v2, :cond_16

    goto :goto_9

    .line 89
    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 90
    :cond_17
    :goto_9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/zh1;

    invoke-direct {v1, p3, p1}, Lcom/android/tools/r8/internal/zh1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    new-instance v2, Lcom/android/tools/r8/internal/Ah1;

    invoke-direct {v2, p3, p1}, Lcom/android/tools/r8/internal/Ah1;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/zE;)V

    .line 91
    invoke-static {v0, p2, v1, v2}, Lcom/android/tools/r8/internal/kp0;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/pp0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic b(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)V
    .locals 0

    .line 20
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/kp0;->a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)V

    return-void
.end method
