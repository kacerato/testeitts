.class public final Lcom/android/tools/r8/internal/FB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/r;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Vf;

.field public final b:Lcom/android/tools/r8/internal/Q00;

.field public final c:Lcom/android/tools/r8/internal/Q00;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/Q00;Lcom/android/tools/r8/internal/Q00;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/FB;->d:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/Vf;->y()Lcom/android/tools/r8/internal/Q5;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p2, Lcom/android/tools/r8/internal/zv0;

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p3, Lcom/android/tools/r8/internal/zv0;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ZC;

    sget-boolean v3, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez v3, :cond_4

    invoke-interface {v2}, Lcom/android/tools/r8/internal/ZC;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    if-nez v0, :cond_9

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ZC;

    sget-boolean v2, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez v2, :cond_7

    invoke-interface {v1}, Lcom/android/tools/r8/internal/ZC;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    iput-object p1, p0, Lcom/android/tools/r8/internal/FB;->a:Lcom/android/tools/r8/internal/Vf;

    iput-object p2, p0, Lcom/android/tools/r8/internal/FB;->b:Lcom/android/tools/r8/internal/Q00;

    iput-object p3, p0, Lcom/android/tools/r8/internal/FB;->c:Lcom/android/tools/r8/internal/Q00;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yg;->y()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ZC;

    sget-boolean v2, Lcom/android/tools/r8/internal/FB;->d:Z

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/ZC;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_1
    invoke-interface {v1}, Lcom/android/tools/r8/internal/ZC;->b()Lcom/android/tools/r8/internal/Q5;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/nE0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/nE0;-><init>()V

    invoke-interface {p1, v1, v2}, Lcom/android/tools/r8/internal/Qx;->a(Lcom/android/tools/r8/internal/Q5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object p0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p0

    :cond_2
    sget-object v2, Lcom/android/tools/r8/internal/Bo0;->a:Lcom/android/tools/r8/internal/zo0;

    invoke-virtual {v0, p0, v1, p3, v2}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static synthetic h()Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final B()Lcom/android/tools/r8/internal/FB;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/android/tools/r8/internal/bD;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$b;

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/internal/bD;->d:Z

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
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->B()Lcom/android/tools/r8/internal/FB;

    move-result-object p1

    .line 4
    iget-object p2, p2, Lcom/android/tools/r8/internal/bD;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/B60$b;

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    .line 7
    iget-object p3, p0, Lcom/android/tools/r8/internal/FB;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/Vf;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;

    move-result-object p3

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object p3, p0, Lcom/android/tools/r8/internal/FB;->b:Lcom/android/tools/r8/internal/Q00;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/F1;->Z()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 11
    iget-object p3, p0, Lcom/android/tools/r8/internal/FB;->c:Lcom/android/tools/r8/internal/Q00;

    .line 12
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v0, p3, Lcom/android/tools/r8/internal/zv0;

    if-eqz v0, :cond_1

    return-object p3

    .line 14
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/FB;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p3

    .line 16
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v0

    if-nez v0, :cond_4

    return-object p3

    .line 17
    :cond_4
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/FB;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1

    .line 18
    :cond_5
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/FB;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/FB;->b:Lcom/android/tools/r8/internal/Q00;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/FB;->b:Lcom/android/tools/r8/internal/Q00;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ZC;

    .line 26
    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    move-object v0, v1

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/FB;->c:Lcom/android/tools/r8/internal/Q00;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/FB;->c:Lcom/android/tools/r8/internal/Q00;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ZC;

    .line 34
    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_5
    return-object v1

    :cond_6
    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/FB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/FB;

    iget-object v1, p0, Lcom/android/tools/r8/internal/FB;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object v3, p1, Lcom/android/tools/r8/internal/FB;->a:Lcom/android/tools/r8/internal/Vf;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/FB;->b:Lcom/android/tools/r8/internal/Q00;

    iget-object v3, p1, Lcom/android/tools/r8/internal/FB;->b:Lcom/android/tools/r8/internal/Q00;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Iw0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/FB;->c:Lcom/android/tools/r8/internal/Q00;

    iget-object p1, p1, Lcom/android/tools/r8/internal/FB;->c:Lcom/android/tools/r8/internal/Q00;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Iw0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getKind()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/FB;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/FB;->b:Lcom/android/tools/r8/internal/Q00;

    iget-object v2, p0, Lcom/android/tools/r8/internal/FB;->c:Lcom/android/tools/r8/internal/Q00;

    const-class v3, Lcom/android/tools/r8/internal/FB;

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
