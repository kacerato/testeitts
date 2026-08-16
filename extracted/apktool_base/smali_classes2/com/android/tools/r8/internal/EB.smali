.class public Lcom/android/tools/r8/internal/EB;
.super Lcom/android/tools/r8/internal/sL;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public l:Lcom/android/tools/r8/internal/NB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/sL;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/NB;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/sL;-><init>(Ljava/util/List;)V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/NB;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p0, Lcom/android/tools/r8/internal/uI;

    if-nez v0, :cond_2

    .line 4
    instance-of v0, p0, Lcom/android/tools/r8/internal/Fx;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-eq p1, v0, :cond_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final H1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final V()Lcom/android/tools/r8/internal/EB;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/W5;
    .locals 3

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/EB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/NB;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide p1

    if-nez v0, :cond_7

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    sub-long/2addr v1, p1

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->signum(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 2

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->q:Lcom/android/tools/r8/internal/W5;

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/En;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/En;-><init>(Lcom/android/tools/r8/internal/EB;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 6

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    iget-object v3, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/tools/r8/internal/PS;->a(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;)V

    return-void

    .line 25
    :cond_0
    sget-boolean v2, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v2, :cond_4

    .line 26
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/android/tools/r8/internal/PS;->a(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 6

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/O9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {p1, v1, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 19
    :cond_0
    sget-boolean v2, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v2, :cond_4

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_4
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/Q9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {p1, v1, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(I)Lcom/android/tools/r8/internal/W5;
    .locals 3

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/internal/DB;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected condition type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-gez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :pswitch_1
    if-gtz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :pswitch_2
    if-lez p1, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :pswitch_3
    if-ltz p1, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :pswitch_4
    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-nez p1, :cond_7

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    iget-object v0, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final p2()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0
.end method

.method public final q2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/EB;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "If instructions define no values."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x5a

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const-string v1, " block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (fallthrough "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u2()Lcom/android/tools/r8/internal/W5;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v1

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public v2()Lcom/android/tools/r8/internal/W5;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public final w2()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/cD0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/cD0;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public x2()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y2()Lcom/android/tools/r8/internal/xw0;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    return-object v0
.end method

.method public final z2()Lcom/android/tools/r8/internal/W5;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    return-object v0
.end method
