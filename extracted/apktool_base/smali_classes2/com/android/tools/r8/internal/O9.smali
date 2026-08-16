.class public Lcom/android/tools/r8/internal/O9;
.super Lcom/android/tools/r8/internal/s9;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/s9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/Ys0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Zs0;

    return-object p0
.end method


# virtual methods
.method public final B()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O9;->W()I

    move-result v0

    return v0
.end method

.method public W()I
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/N9;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/s9;->c:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc7

    return v0

    :cond_0
    const/16 v0, 0x9a

    return v0

    :pswitch_1
    const/16 v0, 0x9b

    return v0

    :pswitch_2
    const/16 v0, 0x9e

    return v0

    :pswitch_3
    const/16 v0, 0x9d

    return v0

    :pswitch_4
    const/16 v0, 0x9c

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc6

    return v0

    :cond_1
    const/16 v0, 0x99

    return v0

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

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 3

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/O9;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/O9;->f:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/s9;->c:Lcom/android/tools/r8/internal/NB;

    iget-object v2, p1, Lcom/android/tools/r8/internal/s9;->c:Lcom/android/tools/r8/internal/NB;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/s9;->e:Lcom/android/tools/r8/internal/ka;

    iget-object p1, p1, Lcom/android/tools/r8/internal/s9;->e:Lcom/android/tools/r8/internal/ka;

    .line 6
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object p3

    .line 7
    check-cast p3, Lcom/android/tools/r8/graph/K;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v1, p3, Lcom/android/tools/r8/graph/K;->a:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object p3, p3, Lcom/android/tools/r8/graph/K;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/Kw0;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/H9;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/s9;->e:Lcom/android/tools/r8/internal/ka;

    invoke-interface {p1, v0, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/Zs0;

    new-instance v0, Lcom/android/tools/r8/internal/nP0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/nP0;-><init>(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;)V

    .line 10
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Zs0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/O9;->W()I

    move-result p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/s9;->e:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ka;->V()Lcom/android/tools/r8/internal/XQ;

    move-result-object p2

    invoke-virtual {p9, p1, p2}, Lcom/android/tools/r8/internal/EX;->a(ILcom/android/tools/r8/internal/XQ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/O9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 4

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/s9;->e:Lcom/android/tools/r8/internal/ka;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/hb;->a(Lcom/android/tools/r8/internal/ka;)I

    move-result v0

    .line 16
    iget p3, p3, Lcom/android/tools/r8/internal/hb;->n:I

    add-int/lit8 p3, p3, 0x1

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/s9;->c:Lcom/android/tools/r8/internal/NB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/s9;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v2}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/Kw0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v2

    if-ne v0, p3, :cond_2

    .line 19
    sget-boolean p2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez p2, :cond_1

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/VA;

    iget-object p2, p2, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->d()V

    .line 22
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 23
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 24
    new-instance p2, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/sL;)V

    return-void

    .line 25
    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/EB;

    invoke-virtual {p1, p2, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-direct {v3, v1, p2}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    .line 26
    iget-object p2, p1, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/VA;

    iget-object p2, p2, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 27
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/VA;

    iget-object v1, v1, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 28
    iget-object v2, p1, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 29
    iget-object v2, p1, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 30
    iget-object v2, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v2, p3}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result p3

    invoke-virtual {p1, v1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 31
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {p3, v0}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 32
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/sL;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 1
    return-void
.end method
