.class public final Lcom/android/tools/r8/internal/wg;
.super Lcom/android/tools/r8/internal/xg;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public f:Lcom/android/tools/r8/internal/xt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/xg;-><init>(Ljava/util/Set;)V

    sget-boolean p2, Lcom/android/tools/r8/internal/wg;->g:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->u()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must use BottomReceiverParameterState instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wg;->w()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must use UnknownParameterState instead"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final A()Lcom/android/tools/r8/internal/p10;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 7
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/xg;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/y7;->b:Lcom/android/tools/r8/internal/y7;

    return-object p1

    .line 5
    :cond_1
    sget-boolean p2, Lcom/android/tools/r8/internal/wg;->g:Z

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/wg;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->p()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/wg;-><init>(Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xg;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
    .locals 3

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/wg;->g:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xg;->z()Lcom/android/tools/r8/internal/xt;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    .line 12
    invoke-virtual {v2, p1, v1, p3, p4}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object p3

    if-eqz p4, :cond_4

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 14
    invoke-static {p1, p3, p4, v1}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object p3

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_3
    :goto_1
    iput-object p3, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    goto :goto_3

    :cond_4
    if-nez v0, :cond_6

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_6
    :goto_2
    iput-object p3, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    .line 19
    :goto_3
    iget-object p3, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wg;->w()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 21
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 22
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/yg;->a(Lcom/android/tools/r8/internal/yg;)Z

    move-result p4

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yg;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 25
    :cond_8
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/yg;->c:Z

    if-nez p1, :cond_9

    iget-boolean p1, p2, Lcom/android/tools/r8/internal/yg;->c:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/yg;->c:Z

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    :goto_4
    if-eqz p3, :cond_b

    if-nez p4, :cond_b

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    return-object p0

    .line 27
    :cond_b
    :goto_5
    invoke-interface {p5}, Lcom/android/tools/r8/internal/b2;->a()V

    return-object p0
.end method

.method public final a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/yg;
    .locals 2

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/wg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/wg;-><init>(Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/wg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/wg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    iget-object v3, p1, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Lcom/android/tools/r8/internal/wg;
    .locals 0

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/wg;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final q()Lcom/android/tools/r8/internal/B7;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/y7;->b:Lcom/android/tools/r8/internal/y7;

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/internal/iw0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/wg;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReceiverState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/wg;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v0

    return v0
.end method

.method public final z()Lcom/android/tools/r8/internal/xt;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/wg;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wg;->f:Lcom/android/tools/r8/internal/xt;

    return-object v0
.end method
