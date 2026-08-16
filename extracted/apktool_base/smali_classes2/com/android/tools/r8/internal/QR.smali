.class public final Lcom/android/tools/r8/internal/QR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/QR;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QR;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 475
    new-instance v0, Lcom/android/tools/r8/internal/sD;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/sD;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/XJ;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 504
    new-instance v0, Lcom/android/tools/r8/internal/XJ;

    .line 505
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 506
    invoke-direct {v0, p1, p2, p0}, Lcom/android/tools/r8/internal/XJ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/jc;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 497
    new-instance v0, Lcom/android/tools/r8/internal/jc;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 498
    iget-boolean p0, p0, Lcom/android/tools/r8/internal/jc;->l:Z

    .line 499
    invoke-direct {v0, p2, v1, p1, p0}, Lcom/android/tools/r8/internal/jc;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/mE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 500
    new-instance v0, Lcom/android/tools/r8/internal/mE;

    .line 501
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 502
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    .line 503
    invoke-direct {v0, p2, p0, p1}, Lcom/android/tools/r8/internal/mE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/oZ;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 510
    new-instance v0, Lcom/android/tools/r8/internal/oZ;

    .line 511
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 512
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    .line 513
    invoke-direct {v0, p2, p0, p1}, Lcom/android/tools/r8/internal/oZ;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/qZ;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 507
    new-instance v0, Lcom/android/tools/r8/internal/qZ;

    .line 508
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 509
    invoke-direct {v0, p1, p2, p0}, Lcom/android/tools/r8/internal/qZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Bm0;)Ljava/util/Map;
    .locals 0

    .line 483
    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/internal/Bv;)V
    .locals 0

    const/4 p1, 0x0

    .line 482
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/iw;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/l1;
    .locals 4

    .line 674
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IV;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 676
    iget-object v1, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 677
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 678
    iget-object v1, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 679
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 680
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v1

    .line 681
    iget-object v2, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 682
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    .line 683
    invoke-static {v1, v0, p2, v2, v3}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    .line 684
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 685
    iget-object p2, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 686
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 687
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 688
    invoke-static {p2, v1, p1}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1

    .line 689
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 690
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/EE;
    .locals 6

    .line 49
    iget-object p5, p5, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 50
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 53
    iget-object v1, p5, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 54
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 56
    iget-object v2, v1, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    if-eqz v2, :cond_5

    .line 57
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 58
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 59
    sget v3, Lcom/android/tools/r8/internal/Qk0;->n:I

    .line 60
    new-instance v3, Lcom/android/tools/r8/internal/Pk0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Pk0;-><init>()V

    .line 61
    iput-object v2, v3, Lcom/android/tools/r8/internal/ic;->e:Lcom/android/tools/r8/internal/xw0;

    .line 62
    iget-object v4, v1, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    .line 63
    iget-object v5, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 64
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-static {v4, v2, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 66
    invoke-virtual {v3, p1, v2}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ic;

    .line 67
    iget-object v1, v1, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    .line 68
    iput-object v1, v2, Lcom/android/tools/r8/internal/ic;->d:Lcom/android/tools/r8/graph/M2;

    .line 69
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 70
    iput-object v1, v2, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 71
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ic;->c()Lcom/android/tools/r8/internal/jc;

    move-result-object v1

    .line 72
    invoke-interface {p3, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {p4, v0, v2}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    .line 74
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-interface {p3, p1, p2, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/W5;

    move-result-object p3

    .line 76
    new-instance v1, Lcom/android/tools/r8/internal/ZS0;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/ZS0;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 77
    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 78
    sget-boolean v2, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v2, :cond_2

    if-ne v1, p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 79
    :cond_2
    :goto_1
    iget-object v1, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, p2, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 80
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    .line 81
    :cond_3
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 82
    sget-boolean v2, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v2, :cond_5

    if-ne v1, p4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/EE;
    .locals 4

    .line 22
    iget-object v0, p5, Lcom/android/tools/r8/internal/iw;->d:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_4

    .line 23
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 24
    sget v0, Lcom/android/tools/r8/internal/Qk0;->n:I

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/Pk0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Pk0;-><init>()V

    .line 26
    invoke-interface {p4}, Lcom/android/tools/r8/internal/ww;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/android/tools/r8/internal/ic;->e:Lcom/android/tools/r8/internal/xw0;

    .line 28
    iget-object v1, p5, Lcom/android/tools/r8/internal/iw;->d:Lcom/android/tools/r8/graph/M2;

    .line 29
    iget-object v2, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 30
    invoke-interface {p4}, Lcom/android/tools/r8/internal/ww;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {v1, v3, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ic;

    .line 33
    iget-object p5, p5, Lcom/android/tools/r8/internal/iw;->d:Lcom/android/tools/r8/graph/M2;

    .line 34
    iput-object p5, v0, Lcom/android/tools/r8/internal/ic;->d:Lcom/android/tools/r8/graph/M2;

    .line 35
    invoke-interface {p4}, Lcom/android/tools/r8/internal/ww;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p5

    .line 36
    iput-object p5, v0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 37
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ic;->c()Lcom/android/tools/r8/internal/jc;

    move-result-object p5

    .line 38
    invoke-interface {p3, p5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/android/tools/r8/internal/ww;->a(Lcom/android/tools/r8/internal/xw0;)V

    .line 40
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 41
    iget-object p5, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p5

    invoke-interface {p3, p1, p2, p5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 42
    new-instance p3, Lcom/android/tools/r8/internal/aT0;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/internal/aT0;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 43
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/W5;

    .line 44
    sget-boolean p5, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez p5, :cond_1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_1
    :goto_0
    iget-object p3, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/W5;

    iput-object p3, p2, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    .line 47
    :cond_2
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    .line 48
    sget-boolean p2, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez p2, :cond_4

    if-ne p1, p4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return-object p3
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/RR;
    .locals 2

    .line 474
    new-instance v0, Lcom/android/tools/r8/internal/RR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/RR;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/Bm0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Bv;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    .line 484
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 485
    iget-object p7, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 486
    invoke-virtual {p4, p7, p5}, Lcom/android/tools/r8/internal/Bv;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p4

    .line 487
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p5

    .line 488
    new-instance p6, Lcom/android/tools/r8/internal/CV;

    const/4 v0, 0x0

    invoke-direct {p6, v0, p4, p5}, Lcom/android/tools/r8/internal/CV;-><init>(Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/B60;)V

    .line 489
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p4

    invoke-virtual {p2, p7, p4, p3, p6}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 491
    sget-boolean p3, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez p3, :cond_1

    array-length p4, p2

    const/4 p5, 0x1

    if-ne p4, p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p4, 0x0

    .line 492
    aget-object p2, p2, p4

    if-nez p3, :cond_3

    .line 493
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 494
    :cond_3
    :goto_1
    invoke-interface {p1, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 495
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 496
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;
    .locals 6

    .line 691
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 692
    instance-of v0, v0, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_9

    .line 693
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    .line 696
    iget-object v0, p4, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    int-to-char v0, v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    iget-object p3, p3, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte p3, p3, v1

    int-to-char p3, p3

    invoke-static {p3}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p3

    if-eq v0, p3, :cond_9

    goto :goto_0

    .line 697
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 698
    :cond_1
    :goto_0
    sget-boolean p3, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez p3, :cond_3

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 699
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 700
    iget-object v2, p0, Lcom/android/tools/r8/internal/QR;->c:Lcom/android/tools/r8/internal/nJ;

    .line 701
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 702
    iget-object p3, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    const/4 p5, 0x0

    invoke-static {p4, p5, p3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    :goto_2
    move-object v5, p3

    goto :goto_3

    .line 703
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object p3

    goto :goto_2

    :goto_3
    const-wide/16 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    .line 704
    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 705
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    return-object p1

    .line 706
    :cond_5
    sget-boolean p1, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez p1, :cond_7

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    if-nez p1, :cond_9

    .line 707
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_5
    return-object p5
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 7

    .line 476
    iget-object v0, p0, Lcom/android/tools/r8/internal/QR;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0, p4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 477
    iget-object p4, p0, Lcom/android/tools/r8/internal/QR;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 478
    invoke-virtual {p4, p1, v0, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 479
    sget-object v1, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    .line 480
    iget-object v5, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, p5

    .line 481
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/NJ;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 514
    new-instance v11, Ljava/util/ArrayDeque;

    const/16 v0, 0x8

    invoke-direct {v11, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    iget-object v2, v9, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 516
    iget-object v2, v9, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 517
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    :goto_0
    if-eq v2, v1, :cond_4

    .line 518
    sget-boolean v4, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 519
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v2

    .line 520
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hz;->h()Z

    move-result v4

    if-nez v4, :cond_2

    .line 521
    iget-object v4, v2, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    move-object v5, v2

    .line 522
    :goto_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 523
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Hz;->h()Z

    move-result v6

    if-nez v6, :cond_3

    if-eq v4, v1, :cond_3

    .line 524
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v5

    .line 525
    iget-object v4, v5, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 526
    :cond_3
    new-instance v4, Lcom/android/tools/r8/internal/OR;

    .line 527
    iget-object v5, v5, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 528
    invoke-direct {v4, v2, v5, v3}, Lcom/android/tools/r8/internal/OR;-><init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)V

    .line 529
    invoke-virtual {v11, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 530
    invoke-virtual {v2, v5, v3}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    move-object v2, v5

    goto :goto_0

    .line 531
    :cond_4
    sget-boolean v1, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v1, :cond_6

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-gt v1, v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 532
    :cond_6
    :goto_3
    iget-object v0, v9, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 533
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 535
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 536
    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 537
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/OR;

    .line 538
    iget-object v1, v0, Lcom/android/tools/r8/internal/OR;->a:Lcom/android/tools/r8/internal/R00;

    .line 539
    iget-object v2, v0, Lcom/android/tools/r8/internal/OR;->c:Lcom/android/tools/r8/graph/A2;

    .line 540
    iget-object v3, v0, Lcom/android/tools/r8/internal/OR;->b:Lcom/android/tools/r8/internal/Hz;

    .line 541
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v5

    .line 542
    iget-object v3, v0, Lcom/android/tools/r8/internal/OR;->a:Lcom/android/tools/r8/internal/R00;

    .line 543
    iget-object v4, v0, Lcom/android/tools/r8/internal/OR;->b:Lcom/android/tools/r8/internal/Hz;

    .line 544
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    .line 545
    new-instance v7, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v7}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 546
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    .line 547
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 548
    iget-object v1, v5, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 549
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 550
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    .line 551
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 552
    :goto_5
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 553
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/tools/r8/internal/zE;

    .line 554
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v19

    if-nez v19, :cond_8

    :cond_7
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v18, v11

    move-object/from16 v23, v12

    goto/16 :goto_e

    .line 555
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v14

    move-object/from16 v18, v11

    .line 556
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v11

    .line 557
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v20

    move-object/from16 v21, v7

    const/4 v7, 0x0

    if-eqz v20, :cond_d

    .line 558
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/proto/b;->a()Lcom/android/tools/r8/graph/proto/g;

    move-result-object v11

    .line 559
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/proto/g;->f()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 560
    iget-object v7, v11, Lcom/android/tools/r8/graph/proto/g;->b:Lcom/android/tools/r8/internal/Pm0;

    .line 561
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v5

    .line 562
    instance-of v5, v7, Lcom/android/tools/r8/internal/Hm0;

    if-eqz v5, :cond_a

    .line 563
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v5

    goto :goto_6

    :cond_9
    move-object/from16 v20, v5

    .line 564
    :cond_a
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iget-object v11, v9, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 565
    :goto_6
    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v11

    move-object/from16 v22, v4

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/B60$b$a;

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/B60$b$a;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object v4

    .line 566
    iget-object v11, v9, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v23, v12

    .line 567
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v12

    move-object/from16 v24, v3

    .line 568
    new-instance v3, Lcom/android/tools/r8/internal/CV;

    invoke-direct {v3, v12, v5, v4}, Lcom/android/tools/r8/internal/CV;-><init>(Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/B60;)V

    .line 569
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    invoke-virtual {v7, v11, v4, v10, v3}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    goto :goto_7

    :cond_b
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v12

    .line 571
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/proto/g;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, v9, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 572
    sget v4, Lcom/android/tools/r8/internal/ew0;->k:I

    .line 573
    new-instance v4, Lcom/android/tools/r8/internal/dw0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/dw0;-><init>()V

    .line 574
    invoke-interface {v10, v3, v7}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 575
    iput-object v3, v4, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 576
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dw0;->a()Lcom/android/tools/r8/internal/sE;

    move-result-object v3

    .line 577
    check-cast v3, Lcom/android/tools/r8/internal/dw0;

    .line 578
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 579
    iput-object v4, v3, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 580
    new-instance v4, Lcom/android/tools/r8/internal/ew0;

    iget-object v5, v3, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/ew0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 581
    iget-object v3, v3, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v3, :cond_c

    .line 582
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 583
    :cond_c
    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 584
    new-array v3, v3, [Lcom/android/tools/r8/internal/zE;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 585
    :goto_7
    invoke-static {v3}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 586
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 587
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 588
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 589
    invoke-interface {v13}, Lcom/android/tools/r8/internal/EE;->i()V

    add-int/lit8 v16, v16, 0x1

    :goto_8
    const/4 v11, 0x0

    goto/16 :goto_d

    :cond_d
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v5

    move-object/from16 v23, v12

    sub-int v3, v15, v16

    .line 590
    iget-object v4, v1, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result v3

    .line 591
    instance-of v4, v11, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v4, :cond_f

    .line 592
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v4

    .line 593
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, v9, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 594
    sget-boolean v5, Lcom/android/tools/r8/internal/k3;->m:Z

    .line 595
    new-instance v5, Lcom/android/tools/r8/internal/j3;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/j3;-><init>()V

    .line 596
    iput v3, v5, Lcom/android/tools/r8/internal/j3;->d:I

    .line 597
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v11

    .line 598
    invoke-interface {v10, v4, v11}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 599
    iput-object v4, v5, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 600
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 601
    iput-object v4, v5, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 602
    new-instance v4, Lcom/android/tools/r8/internal/k3;

    iget-object v11, v5, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget v12, v5, Lcom/android/tools/r8/internal/j3;->d:I

    const/4 v7, 0x0

    invoke-direct {v4, v11, v12, v7}, Lcom/android/tools/r8/internal/k3;-><init>(Lcom/android/tools/r8/internal/xw0;IZ)V

    .line 603
    iget-object v5, v5, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v5, :cond_e

    .line 604
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 605
    :cond_e
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 606
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    :goto_9
    move/from16 v5, v17

    goto :goto_a

    :cond_f
    if-eq v3, v15, :cond_11

    .line 607
    sget-boolean v4, Lcom/android/tools/r8/internal/k3;->m:Z

    .line 608
    new-instance v4, Lcom/android/tools/r8/internal/j3;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/j3;-><init>()V

    .line 609
    iput v3, v4, Lcom/android/tools/r8/internal/j3;->d:I

    .line 610
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v7

    .line 611
    invoke-interface {v10, v5, v7}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 612
    iput-object v5, v4, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 613
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    .line 614
    iput-object v5, v4, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 615
    new-instance v5, Lcom/android/tools/r8/internal/k3;

    iget-object v7, v4, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget v11, v4, Lcom/android/tools/r8/internal/j3;->d:I

    const/4 v12, 0x0

    invoke-direct {v5, v7, v11, v12}, Lcom/android/tools/r8/internal/k3;-><init>(Lcom/android/tools/r8/internal/xw0;IZ)V

    .line 616
    iget-object v4, v4, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v4, :cond_10

    .line 617
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 618
    :cond_10
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    move-object v4, v5

    goto :goto_9

    :cond_11
    move-object v4, v14

    goto :goto_9

    :goto_a
    if-ne v3, v5, :cond_13

    if-eq v4, v14, :cond_12

    const/4 v3, 0x0

    .line 619
    invoke-interface {v13, v4, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    :cond_12
    add-int/lit8 v17, v5, 0x1

    goto/16 :goto_8

    .line 620
    :cond_13
    invoke-interface {v13}, Lcom/android/tools/r8/internal/EE;->s()V

    .line 621
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 622
    :cond_14
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 623
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 624
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v11, 0x0

    .line 625
    invoke-virtual {v4, v11}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v12

    .line 626
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v7

    .line 627
    invoke-virtual {v7, v11}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v7

    if-ge v12, v7, :cond_14

    goto :goto_b

    :cond_15
    const/4 v11, 0x0

    .line 628
    :goto_b
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_c

    :cond_16
    const/4 v11, 0x0

    .line 629
    :goto_c
    invoke-interface {v3, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    move/from16 v17, v5

    :goto_d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v18

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    move-object/from16 v4, v22

    move-object/from16 v12, v23

    move-object/from16 v3, v24

    goto/16 :goto_5

    .line 630
    :goto_e
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 631
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 632
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 633
    invoke-interface {v13, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_f

    .line 634
    :cond_17
    iget-object v1, v9, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 635
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 636
    invoke-virtual/range {v24 .. v24}, Lcom/android/tools/r8/internal/Hz;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 637
    sget-boolean v0, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v0, :cond_19

    move-object/from16 v3, v24

    .line 638
    iget-object v0, v3, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    move-object/from16 v4, v22

    if-ne v0, v4, :cond_18

    goto :goto_10

    .line 639
    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_19
    move-object/from16 v4, v22

    move-object/from16 v3, v24

    .line 640
    :goto_10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Hz;->f()Lcom/android/tools/r8/ir/optimize/A;

    move-result-object v0

    move-object/from16 v11, p3

    move-object/from16 v5, v20

    .line 641
    invoke-interface {v0, v10, v11, v5, v3}, Lcom/android/tools/r8/ir/optimize/A;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/R00;)Ljava/util/Set;

    move-result-object v0

    .line 642
    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    :cond_1a
    move-object/from16 v11, p3

    move-object/from16 v5, v20

    move-object/from16 v4, v22

    move-object/from16 v3, v24

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    .line 643
    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/proto/j;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)V

    move-object/from16 v11, v18

    move-object/from16 v12, v23

    goto/16 :goto_4

    .line 644
    :cond_1b
    sget-boolean v0, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v0, :cond_1c

    iget-object v0, v9, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v10, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/graph/y;)V

    :cond_1c
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/proto/j;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)V
    .locals 37

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v15

    .line 84
    new-instance v7, Lcom/android/tools/r8/internal/sR;

    new-instance v0, Lcom/android/tools/r8/internal/bT0;

    invoke-direct {v0, v8, v11, v12}, Lcom/android/tools/r8/internal/bT0;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    .line 85
    iget-object v0, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 86
    invoke-static {v0, v9, v11, v12}, Lcom/android/tools/r8/internal/KI;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/KI;

    move-result-object v6

    .line 87
    iget-object v0, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 88
    invoke-static {v0, v9, v11, v12}, Lcom/android/tools/r8/internal/l10;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/l10;

    move-result-object v5

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget-object v1, v15, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 90
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 91
    iget-object v1, v15, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    iput-object v2, v15, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 92
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    move-object/from16 v16, v6

    if-eqz v1, :cond_b

    iget-object v1, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 93
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    .line 94
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nx0;->b()Z

    move-result v1

    if-nez v1, :cond_b

    .line 95
    sget-boolean v1, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 97
    iget-object v3, v3, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 98
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    iget-object v3, v2, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 100
    iget-object v3, v3, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 101
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v17, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 102
    invoke-virtual {v11, v12, v4}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 103
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v6, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    or-int v17, v17, v4

    goto :goto_2

    :cond_3
    if-eqz v17, :cond_4

    .line 104
    new-instance v3, Lcom/android/tools/r8/internal/N8;

    iget-object v4, v2, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 105
    iget-object v4, v4, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 106
    invoke-direct {v3, v1, v4}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    :cond_4
    if-eqz v17, :cond_b

    .line 107
    sget-boolean v1, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_6
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v1

    .line 109
    iget-object v3, v1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 110
    iget-object v1, v1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 111
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v5

    const/4 v5, 0x0

    .line 113
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_8

    .line 114
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v11, v12, v14}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 115
    invoke-virtual {v4, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 116
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 117
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_9

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 118
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->R()V

    goto :goto_6

    .line 119
    :cond_9
    sget-boolean v1, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v1, :cond_a

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->c()V

    .line 120
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v6, 0x1

    xor-int/2addr v1, v6

    or-int/2addr v0, v1

    :goto_7
    move v14, v0

    goto :goto_8

    :cond_b
    move-object/from16 v17, v5

    const/4 v6, 0x1

    goto :goto_7

    .line 121
    :goto_8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    move-object v5, v0

    .line 122
    :goto_9
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 123
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/tools/r8/internal/zE;

    .line 124
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    const/16 v1, 0x14

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_49

    const/16 v1, 0x38

    if-eq v0, v1, :cond_45

    const/16 v1, 0x9

    if-eq v0, v1, :cond_43

    const/16 v1, 0xa

    if-eq v0, v1, :cond_42

    const/16 v1, 0x31

    if-eq v0, v1, :cond_41

    const/16 v1, 0x32

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_3a

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 125
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 126
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 127
    iget-object v1, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, v1, v11, v12, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    if-eq v1, v0, :cond_c

    .line 129
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    .line 130
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_c
    move-object v9, v2

    move-object/from16 v34, v7

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v12, v11

    move-object v6, v13

    move-object v13, v5

    goto/16 :goto_36

    .line 131
    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->h0()Lcom/android/tools/r8/internal/YJ;

    move-result-object v0

    .line 132
    sget-boolean v1, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v1, :cond_e

    iget-object v1, v8, Lcom/android/tools/r8/internal/QR;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/k2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_a

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_e
    :goto_a
    iget-object v1, v7, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v7, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    check-cast v1, Lcom/android/tools/r8/internal/RR;

    .line 135
    iget-object v3, v0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    .line 136
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 137
    iget-object v3, v0, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    if-eq v3, v1, :cond_c

    .line 138
    new-instance v3, Lcom/android/tools/r8/internal/YJ;

    .line 139
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 140
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 141
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 142
    invoke-direct {v3, v4, v1, v6, v0}, Lcom/android/tools/r8/internal/YJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 143
    invoke-interface {v5, v3}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    move-object v9, v2

    move-object/from16 v34, v7

    move-object v10, v12

    move-object v6, v13

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v17

    const/16 v16, 0x1

    move-object v13, v5

    :goto_b
    move-object v12, v11

    goto/16 :goto_36

    .line 144
    :pswitch_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v6

    .line 145
    new-instance v4, Lcom/android/tools/r8/internal/PR;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v3, v2

    move-object/from16 v2, p1

    move-object/from16 v21, v3

    move/from16 v20, v14

    const/4 v14, 0x0

    move-object/from16 v3, v18

    move-object v14, v4

    move-object v4, v5

    move-object/from16 v19, v5

    move-object/from16 v22, v17

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    .line 146
    iget-object v0, v6, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 147
    new-instance v1, Lcom/android/tools/r8/internal/RS0;

    invoke-direct {v1, v6}, Lcom/android/tools/r8/internal/RS0;-><init>(Lcom/android/tools/r8/internal/qZ;)V

    .line 148
    invoke-virtual {v14, v0, v1, v11, v12}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    :goto_c
    move-object/from16 v34, v7

    move-object v10, v12

    move-object v6, v13

    move-object/from16 v14, v16

    :goto_d
    move-object/from16 v13, v19

    move-object/from16 v9, v21

    const/16 v16, 0x1

    goto :goto_b

    :pswitch_2
    move-object/from16 v21, v2

    move-object/from16 v19, v5

    move/from16 v20, v14

    move-object/from16 v22, v17

    .line 149
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->g0()Lcom/android/tools/r8/internal/XJ;

    move-result-object v6

    .line 150
    new-instance v14, Lcom/android/tools/r8/internal/PR;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    .line 151
    iget-object v0, v6, Lcom/android/tools/r8/internal/XJ;->l:Lcom/android/tools/r8/graph/M2;

    .line 152
    new-instance v1, Lcom/android/tools/r8/internal/SS0;

    invoke-direct {v1, v6}, Lcom/android/tools/r8/internal/SS0;-><init>(Lcom/android/tools/r8/internal/XJ;)V

    .line 153
    invoke-virtual {v14, v0, v1, v11, v12}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    goto :goto_c

    :pswitch_3
    move-object/from16 v21, v2

    move-object/from16 v19, v5

    move/from16 v20, v14

    move-object/from16 v22, v17

    .line 154
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v14

    .line 155
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 156
    iget-object v5, v6, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 157
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 158
    iget-object v0, v8, Lcom/android/tools/r8/internal/QR;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v5, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 159
    new-instance v3, Lcom/android/tools/r8/internal/PR;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v17, v7

    move-object v7, v3

    move-object/from16 v3, v18

    move-object v13, v4

    move-object/from16 v4, v19

    move-object v9, v5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    new-instance v0, Lcom/android/tools/r8/internal/TS0;

    invoke-direct {v0, v8, v9, v6, v14}, Lcom/android/tools/r8/internal/TS0;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/VJ;)V

    .line 160
    invoke-virtual {v7, v13, v0, v11, v12}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    :goto_e
    move-object/from16 v6, p6

    move-object v10, v12

    move-object/from16 v14, v16

    move-object/from16 v34, v17

    goto :goto_d

    :cond_f
    move-object v9, v5

    move-object/from16 v17, v7

    .line 161
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_11

    .line 162
    sget-boolean v0, Lcom/android/tools/r8/internal/QR;->d:Z

    if-eqz v0, :cond_10

    goto :goto_e

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 163
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object v3

    .line 164
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object/from16 v0, p3

    move-object v1, v6

    move-object/from16 v4, p4

    .line 165
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object v9

    .line 166
    iget-object v0, v9, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 167
    move-object v13, v0

    check-cast v13, Lcom/android/tools/r8/graph/A2;

    .line 168
    iget-object v7, v9, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 169
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v19

    move-object v4, v14

    move-object/from16 v23, v15

    move v15, v5

    move-object v5, v9

    .line 170
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/EE;

    move-result-object v5

    .line 171
    iget-object v4, v9, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 172
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v0

    if-nez v0, :cond_14

    .line 173
    iget-object v0, v4, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_14

    .line 174
    iget-object v0, v4, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 175
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    instance-of v0, v0, Lcom/android/tools/r8/graph/proto/f;

    if-eqz v0, :cond_14

    .line 178
    iget-object v0, v4, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 179
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    const v1, 0x7fffffff

    .line 180
    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v0

    if-lez v0, :cond_12

    goto :goto_f

    .line 181
    :cond_12
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object v0

    if-ne v0, v7, :cond_14

    if-eq v13, v6, :cond_13

    goto :goto_f

    :cond_13
    move-object/from16 v14, p1

    move-object/from16 v13, p6

    move-object v1, v5

    move-object/from16 v9, v16

    move-object/from16 v34, v17

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v15, v23

    const/4 v10, 0x0

    goto/16 :goto_25

    .line 182
    :cond_14
    :goto_f
    iget-object v3, v4, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 183
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 184
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/j;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    iget-object v1, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    iget-object v1, v4, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 189
    new-instance v2, Lcom/android/tools/r8/internal/US0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/US0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :goto_10
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    move-object/from16 v30, v7

    move-object/from16 v29, v9

    move-object/from16 v24, v13

    move/from16 v25, v15

    move-object v9, v0

    :goto_11
    move-object v7, v4

    goto/16 :goto_15

    .line 190
    :cond_15
    iget-object v0, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    goto :goto_10

    .line 191
    :cond_16
    new-array v0, v15, [Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    const/16 v19, 0x0

    .line 192
    :goto_12
    iget-object v0, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 194
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v24

    if-eqz v24, :cond_17

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    move-object/from16 v30, v7

    move-object/from16 v29, v9

    move-object/from16 v24, v13

    move/from16 v25, v15

    move v13, v1

    move-object v9, v2

    move-object v7, v4

    goto/16 :goto_14

    :cond_17
    move-object/from16 v24, v2

    sub-int v2, v1, v19

    move-object/from16 v25, v4

    .line 196
    iget-object v4, v3, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result v4

    .line 197
    instance-of v2, v0, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v2, :cond_18

    .line 198
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v26

    .line 200
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v27

    .line 201
    invoke-virtual {v14, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v28

    move-object/from16 v0, p0

    move v2, v1

    move-object/from16 v1, p1

    move-object/from16 v29, v9

    move-object/from16 v9, v24

    move-object/from16 v24, v13

    move v13, v2

    move-object v2, v5

    move-object/from16 v30, v7

    move-object v7, v3

    move-object/from16 v3, v26

    move-object/from16 v26, v7

    move-object/from16 v7, v25

    move/from16 v25, v15

    move v15, v4

    move-object/from16 v4, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v28

    .line 202
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    goto :goto_13

    :cond_18
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    move-object/from16 v30, v7

    move-object/from16 v29, v9

    move-object/from16 v9, v24

    move-object/from16 v7, v25

    move-object/from16 v24, v13

    move/from16 v25, v15

    move v13, v1

    move v15, v4

    .line 203
    invoke-virtual {v14, v13}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 204
    :goto_13
    invoke-interface {v9, v15, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_14
    add-int/lit8 v1, v13, 0x1

    move-object v4, v7

    move-object v2, v9

    move-object/from16 v13, v24

    move/from16 v15, v25

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    move-object/from16 v9, v29

    move-object/from16 v7, v30

    goto/16 :goto_12

    :cond_19
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    move-object/from16 v30, v7

    move-object/from16 v29, v9

    move-object/from16 v24, v13

    move/from16 v25, v15

    move-object v9, v2

    goto/16 :goto_11

    .line 205
    :goto_15
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 206
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    .line 207
    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    :cond_1a
    move-object/from16 v15, p1

    move-object/from16 v6, p6

    move-object/from16 v13, p7

    goto/16 :goto_1a

    .line 208
    :cond_1b
    iget-object v0, v7, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    if-eqz v0, :cond_1a

    .line 209
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    .line 210
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 211
    new-instance v13, Lcom/android/tools/r8/internal/NR;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p3

    move-object v4, v6

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)V

    .line 212
    sget-boolean v0, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v0, :cond_1d

    iget-object v0, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 213
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 214
    iget-object v1, v7, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 215
    iget-object v1, v1, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    .line 216
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, v11}, Lcom/android/tools/r8/internal/Pm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object v1

    .line 217
    sget-boolean v2, Lcom/android/tools/r8/graph/proto/j;->e:Z

    if-nez v2, :cond_1d

    invoke-virtual {v1, v0, v10}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_16

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 218
    :cond_1d
    :goto_16
    iget-object v0, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 219
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 220
    sget-boolean v1, Lcom/android/tools/r8/graph/proto/j;->e:Z

    if-nez v1, :cond_1f

    iget-object v2, v7, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    if-eqz v2, :cond_1e

    goto :goto_17

    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    :goto_17
    if-nez v1, :cond_21

    .line 221
    iget-object v1, v7, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 222
    iget-object v1, v1, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    if-eqz v1, :cond_20

    goto :goto_18

    .line 223
    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_21
    :goto_18
    iget-object v1, v7, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 225
    iget-object v1, v1, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    .line 226
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    move-object/from16 v15, p1

    invoke-virtual {v1, v0, v2, v15, v13}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    .line 228
    invoke-static {v3}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 229
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 230
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 231
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/j0;)V

    .line 232
    :cond_22
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 233
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    move-object/from16 v13, p7

    .line 234
    invoke-virtual {v1, v2, v13}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 235
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 236
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 237
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    move-object/from16 v6, p6

    .line 238
    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_23
    move-object/from16 v6, p6

    :goto_19
    move-object v5, v3

    goto :goto_1b

    :goto_1a
    const/4 v5, 0x0

    .line 239
    :goto_1b
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 240
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 241
    iget-object v0, v7, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    if-eqz v0, :cond_24

    .line 242
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/k;->d:Lcom/android/tools/r8/graph/M2;

    .line 243
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_1d

    .line 244
    :cond_24
    iget-object v0, v7, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 245
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 246
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 247
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 248
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1c
    move-object v4, v3

    goto :goto_1e

    .line 249
    :cond_25
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 250
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 251
    iget-object v1, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, v1, v11, v12, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 253
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    goto :goto_1c

    :cond_26
    :goto_1d
    const/4 v4, 0x0

    .line 254
    :goto_1e
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 255
    iget-object v0, v7, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 256
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, v25, v0

    .line 257
    iget-object v1, v7, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    .line 258
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move v7, v0

    :goto_1f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/internal/Bv;

    move-object/from16 v1, v26

    .line 259
    iget-object v0, v1, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/proto/d;->a(I)I

    move-result v0

    .line 260
    invoke-virtual/range {v30 .. v30}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result v1

    move-object/from16 v13, v24

    .line 261
    invoke-virtual {v13, v0, v1}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    move/from16 v24, v0

    .line 262
    iget-object v0, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Bv;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Bm0;

    move-result-object v0

    move-object/from16 v25, v1

    .line 263
    new-instance v1, Lcom/android/tools/r8/internal/VS0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/VS0;-><init>()V

    .line 264
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v11, Lcom/android/tools/r8/internal/WS0;

    move/from16 v12, v24

    move-object/from16 v24, v0

    move-object v0, v11

    move-object v10, v1

    move-object/from16 v36, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v36

    move-object/from16 v1, p0

    move-object/from16 v28, v2

    move-object/from16 v2, v27

    move-object/from16 v31, v3

    move-object/from16 v3, v24

    move-object v15, v4

    move-object/from16 v4, p1

    move-object/from16 v32, v5

    move-object/from16 v5, v28

    move-object/from16 v33, v16

    move-object/from16 v6, v26

    move-object/from16 v34, v17

    move-object/from16 v16, v25

    move-object/from16 v35, v30

    move/from16 v17, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/WS0;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/Bm0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Bv;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/VJ;)V

    move-object/from16 v0, v26

    .line 265
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 266
    invoke-interface {v9, v12, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_27

    add-int/lit8 v7, v17, 0x1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v6, p6

    move-object/from16 v24, v13

    move-object v4, v15

    move-object/from16 v26, v16

    move-object/from16 v3, v31

    move-object/from16 v5, v32

    move-object/from16 v16, v33

    move-object/from16 v17, v34

    move-object/from16 v30, v35

    move-object/from16 v15, p1

    move-object/from16 v13, p7

    goto/16 :goto_1f

    .line 268
    :cond_27
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The addition of extra unused null parameters in R8 led to the overflow of the number of arguments of the method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object v15, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v16

    move-object/from16 v34, v17

    move-object/from16 v13, v24

    move-object/from16 v35, v30

    .line 269
    iget-object v0, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, v13, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Mz0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Mz0;-><init>()V

    const/4 v10, 0x0

    .line 271
    invoke-static {v0, v1, v10}, Lcom/android/tools/r8/internal/U30;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Z)Z

    move-result v0

    move-object/from16 v1, v35

    .line 272
    invoke-static {v1, v13, v15, v9, v0}, Lcom/android/tools/r8/internal/VJ;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    move-object/from16 v1, v27

    .line 273
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    move-object/from16 v11, v21

    move-object/from16 v2, v29

    move-object/from16 v9, v33

    .line 274
    invoke-virtual {v9, v14, v0, v2, v11}, Lcom/android/tools/r8/internal/KI;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/internal/W5;)V

    move-object/from16 v12, v22

    .line 275
    invoke-virtual {v12, v14, v0, v2}, Lcom/android/tools/r8/internal/l10;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/NW;)V

    if-eqz v15, :cond_29

    .line 276
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    if-eq v0, v2, :cond_29

    .line 277
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    move-object/from16 v13, p6

    invoke-interface {v13, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_20
    move-object/from16 v3, v32

    goto :goto_21

    :cond_29
    move-object/from16 v13, p6

    goto :goto_20

    :goto_21
    if-eqz v3, :cond_2e

    .line 278
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 279
    array-length v0, v3

    move-object v5, v1

    move v4, v10

    :goto_22
    if-ge v4, v0, :cond_2c

    aget-object v1, v3, v4

    .line 280
    iget-object v2, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 281
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    move-object/from16 v14, p1

    move-object/from16 v15, v23

    invoke-interface {v5, v14, v15, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 282
    invoke-virtual {v15, v2}, Lcom/android/tools/r8/internal/Z5;->b(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    .line 283
    sget-boolean v6, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v6, :cond_2b

    if-ne v5, v2, :cond_2a

    goto :goto_23

    :cond_2a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 284
    :cond_2b
    :goto_23
    iget-object v5, v15, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    iput-object v5, v15, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 285
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    .line 286
    invoke-interface {v5, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v23, v15

    goto :goto_22

    :cond_2c
    move-object/from16 v10, p2

    move-object/from16 v16, v9

    move-object v2, v11

    move-object/from16 v17, v12

    move/from16 v14, v20

    move-object/from16 v15, v23

    move-object/from16 v7, v34

    const/4 v6, 0x1

    move-object/from16 v9, p1

    :goto_24
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    goto/16 :goto_9

    :cond_2d
    move-object/from16 v14, p1

    move-object/from16 v15, v23

    .line 287
    invoke-interface {v1, v3}, Lcom/android/tools/r8/internal/EE;->a([Lcom/android/tools/r8/internal/zE;)V

    goto :goto_25

    :cond_2e
    move-object/from16 v14, p1

    move-object/from16 v15, v23

    :goto_25
    move-object/from16 v10, p2

    move-object v5, v1

    move-object/from16 v16, v9

    move-object v2, v11

    move-object/from16 v17, v12

    move-object v9, v14

    move/from16 v14, v20

    move-object/from16 v7, v34

    const/4 v6, 0x1

    goto :goto_24

    :pswitch_4
    move-object v11, v2

    move-object/from16 v19, v5

    move-object/from16 v34, v7

    move/from16 v20, v14

    move-object/from16 v12, v17

    const/4 v10, 0x0

    move-object v14, v9

    move-object/from16 v9, v16

    .line 288
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->b0()Lcom/android/tools/r8/internal/OJ;

    move-result-object v0

    .line 289
    iget-object v1, v0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 290
    iget-object v2, v7, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v7, v2}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 291
    check-cast v2, Lcom/android/tools/r8/internal/RR;

    move-object/from16 v6, p2

    invoke-virtual {v2, v1, v6}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object v2

    if-eq v2, v1, :cond_31

    .line 292
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 293
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 294
    iget-object v3, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object/from16 v5, p3

    move-object/from16 v10, p4

    invoke-virtual {v1, v3, v5, v10, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 296
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    goto :goto_26

    :cond_2f
    move-object/from16 v5, p3

    move-object/from16 v10, p4

    const/4 v3, 0x0

    .line 297
    :goto_26
    new-instance v1, Lcom/android/tools/r8/internal/OJ;

    .line 298
    iget-object v4, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 299
    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/internal/OJ;-><init>(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V

    move-object/from16 v4, v19

    .line 300
    invoke-interface {v4, v1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    if-eqz v3, :cond_30

    .line 301
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    if-eq v1, v0, :cond_30

    .line 302
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_30
    move-object/from16 v34, v7

    move-object v14, v9

    move-object v9, v11

    move-object/from16 v22, v12

    move-object v6, v13

    const/16 v16, 0x1

    move-object v13, v4

    move-object v12, v5

    goto/16 :goto_36

    :cond_31
    move-object/from16 v10, p4

    move-object/from16 v34, v7

    move-object v14, v9

    move-object v9, v11

    move-object/from16 v22, v12

    move-object v6, v13

    move-object/from16 v13, v19

    const/16 v16, 0x1

    move-object/from16 v12, p3

    goto/16 :goto_36

    :pswitch_5
    move-object v4, v5

    move-object v6, v10

    move-object v5, v11

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v12, v17

    move-object v11, v2

    move-object v14, v9

    move-object/from16 v9, v16

    .line 303
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v3

    .line 304
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 305
    invoke-virtual {v5, v10, v2}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    move-object/from16 v34, v7

    move-object v7, v2

    move-object v2, v15

    move-object/from16 v17, v3

    move-object v3, v4

    move-object/from16 v4, v17

    move-object/from16 v22, v12

    move-object v12, v5

    move-object/from16 v5, v16

    .line 306
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/EE;

    move-result-object v5

    move-object/from16 v0, v16

    .line 307
    invoke-virtual {v8, v0, v6}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/iw;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    if-eq v4, v7, :cond_32

    .line 308
    iget-object v3, v7, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v4, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 309
    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v13, v4

    move-object v4, v7

    move-object v7, v5

    move-object/from16 v5, v16

    .line 310
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 311
    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 312
    new-instance v2, Lcom/android/tools/r8/internal/rE;

    const/4 v5, 0x1

    invoke-direct {v2, v13, v1, v0, v5}, Lcom/android/tools/r8/internal/rE;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Z)V

    .line 313
    invoke-interface {v7, v2}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    move-object/from16 v0, v17

    .line 314
    invoke-virtual {v9, v0, v2, v11}, Lcom/android/tools/r8/internal/KI;->a(Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/internal/W5;)V

    goto :goto_27

    :cond_32
    move-object v7, v5

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v13, p6

    move-object/from16 v16, v9

    move-object v2, v11

    move-object v11, v12

    move-object v9, v14

    move/from16 v14, v20

    move-object/from16 v17, v22

    move-object v12, v10

    move-object v10, v6

    move v6, v5

    move-object v5, v7

    move-object/from16 v7, v34

    goto/16 :goto_9

    :pswitch_6
    move-object v4, v5

    move v5, v6

    move-object/from16 v34, v7

    move-object v6, v10

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v22, v17

    move-object v14, v9

    move-object v12, v11

    move-object/from16 v9, v16

    move-object v11, v2

    .line 315
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->Y()Lcom/android/tools/r8/internal/mE;

    move-result-object v7

    .line 316
    new-instance v13, Lcom/android/tools/r8/internal/PR;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v19, v4

    move/from16 v16, v5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    .line 317
    iget-object v0, v7, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 318
    new-instance v1, Lcom/android/tools/r8/internal/XS0;

    invoke-direct {v1, v7}, Lcom/android/tools/r8/internal/XS0;-><init>(Lcom/android/tools/r8/internal/mE;)V

    .line 319
    invoke-virtual {v13, v0, v1, v12, v10}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    move-object/from16 v6, p6

    move-object v14, v9

    move-object v9, v11

    move-object/from16 v13, v19

    goto/16 :goto_36

    :pswitch_7
    move-object/from16 v19, v5

    move-object/from16 v34, v7

    move/from16 v20, v14

    move-object/from16 v22, v17

    move-object v14, v9

    move-object/from16 v9, v16

    move/from16 v16, v6

    move-object v6, v10

    move-object v10, v12

    move-object v12, v11

    move-object v11, v2

    .line 320
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v4

    .line 321
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 322
    invoke-virtual {v12, v10, v0}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object v5

    .line 323
    invoke-virtual {v8, v5, v6}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/iw;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    if-eq v1, v0, :cond_34

    .line 324
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 325
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 326
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v0, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 327
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    goto :goto_28

    :cond_33
    const/4 v3, 0x0

    .line 328
    :goto_28
    new-instance v0, Lcom/android/tools/r8/internal/bE;

    .line 329
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-direct {v0, v3, v2, v1}, Lcom/android/tools/r8/internal/bE;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/l1;)V

    move-object/from16 v13, v19

    .line 330
    invoke-interface {v13, v0}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    move-object v7, v3

    goto :goto_29

    :cond_34
    move-object/from16 v13, v19

    const/4 v7, 0x0

    :goto_29
    if-eqz v7, :cond_37

    .line 331
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/iw;->b()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->A()Z

    move-result v0

    if-eqz v0, :cond_35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v13

    move-object/from16 v33, v9

    move-object v9, v6

    move-object v6, v7

    move-object/from16 v21, v11

    move-object/from16 v11, v34

    move-object/from16 v7, p6

    .line 332
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/ew;Lcom/android/tools/r8/internal/iw;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    move-object/from16 v6, p6

    :goto_2a
    move-object/from16 v9, v21

    :goto_2b
    move-object/from16 v14, v33

    goto/16 :goto_36

    :cond_35
    move-object/from16 v33, v9

    move-object/from16 v21, v11

    move-object/from16 v11, v34

    move-object v9, v6

    .line 333
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    if-eq v0, v1, :cond_36

    .line 334
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    move-object/from16 v7, p6

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v6, v7

    :goto_2c
    move-object/from16 v34, v11

    goto :goto_2a

    :cond_36
    :goto_2d
    move-object/from16 v6, p6

    goto :goto_2c

    :cond_37
    move-object/from16 v33, v9

    move-object v9, v6

    move-object/from16 v6, p6

    move-object v9, v11

    goto :goto_2b

    :pswitch_8
    move-object/from16 v21, v2

    move/from16 v20, v14

    move-object/from16 v33, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v14, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v11

    move-object v11, v7

    move-object v7, v13

    move-object v13, v5

    .line 335
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->W()Lcom/android/tools/r8/internal/sD;

    move-result-object v6

    .line 336
    new-instance v5, Lcom/android/tools/r8/internal/PR;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object v4, v13

    move-object v7, v5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    .line 337
    iget-object v0, v6, Lcom/android/tools/r8/internal/sD;->k:Lcom/android/tools/r8/graph/M2;

    .line 338
    new-instance v1, Lcom/android/tools/r8/internal/YS0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/YS0;-><init>()V

    .line 339
    invoke-virtual {v7, v0, v1, v12, v10}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    goto :goto_2d

    :pswitch_9
    move-object/from16 v21, v2

    move-object v13, v5

    move/from16 v20, v14

    move-object/from16 v33, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v14, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v11

    move-object v11, v7

    .line 340
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->I()Lcom/android/tools/r8/internal/nh;

    move-result-object v0

    .line 341
    iget-object v1, v11, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 342
    check-cast v1, Lcom/android/tools/r8/internal/RR;

    .line 343
    iget-object v2, v0, Lcom/android/tools/r8/internal/nh;->l:Lcom/android/tools/r8/graph/I2;

    .line 344
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 345
    iget-object v2, v0, Lcom/android/tools/r8/internal/nh;->l:Lcom/android/tools/r8/graph/I2;

    if-eq v2, v1, :cond_36

    .line 346
    new-instance v2, Lcom/android/tools/r8/internal/nh;

    .line 347
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/nh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/I2;)V

    .line 348
    invoke-interface {v13, v2}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_2d

    :pswitch_a
    move-object/from16 v21, v2

    move-object v13, v5

    move/from16 v20, v14

    move-object/from16 v33, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v14, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v11

    move-object v11, v7

    .line 349
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->H()Lcom/android/tools/r8/internal/mh;

    move-result-object v0

    .line 350
    iget-object v0, v0, Lcom/android/tools/r8/internal/mh;->l:Lcom/android/tools/r8/graph/C2;

    .line 351
    iget-object v1, v11, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 352
    check-cast v1, Lcom/android/tools/r8/internal/RR;

    .line 353
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/C2;ILcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object v1

    if-eq v1, v0, :cond_36

    .line 355
    new-instance v0, Lcom/android/tools/r8/internal/mh;

    .line 356
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/mh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/C2;)V

    .line 357
    invoke-interface {v13, v0}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_2d

    :pswitch_b
    move-object/from16 v21, v2

    move-object v13, v5

    move/from16 v20, v14

    move-object/from16 v33, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v14, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v11

    move-object v11, v7

    .line 358
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v6

    .line 359
    new-instance v7, Lcom/android/tools/r8/internal/PR;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object v4, v13

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    .line 360
    iget-object v0, v6, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 361
    new-instance v1, Lcom/android/tools/r8/internal/cT0;

    invoke-direct {v1, v8}, Lcom/android/tools/r8/internal/cT0;-><init>(Lcom/android/tools/r8/internal/QR;)V

    .line 362
    invoke-virtual {v7, v0, v1, v12, v10}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    if-eqz v6, :cond_36

    .line 363
    instance-of v0, v6, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v0, :cond_36

    .line 364
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    .line 367
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object v0

    .line 368
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    .line 369
    invoke-virtual {v14, v0, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 370
    invoke-virtual {v6, v2}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    .line 371
    sget-boolean v0, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v0, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    iget-object v4, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    move-object v3, v6

    move-object/from16 v5, p2

    .line 372
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/C4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/C4;

    move-result-object v0

    .line 373
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    iget-object v2, v8, Lcom/android/tools/r8/internal/QR;->c:Lcom/android/tools/r8/internal/nJ;

    .line 374
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v3

    if-nez v3, :cond_39

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v2, :cond_38

    goto :goto_2e

    .line 375
    :cond_38
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    goto :goto_2f

    .line 376
    :cond_39
    :goto_2e
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 377
    :goto_2f
    invoke-interface {v13, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_2d

    :cond_3a
    move-object/from16 v21, v2

    move-object v13, v5

    move/from16 v20, v14

    move-object/from16 v33, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v14, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v11

    move-object v11, v7

    .line 378
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v6

    .line 379
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    .line 380
    invoke-virtual {v12, v10, v7}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v13

    move-object v4, v6

    move-object v13, v5

    .line 381
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/EE;

    move-result-object v5

    .line 382
    invoke-virtual {v8, v13, v9}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/iw;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/l1;

    move-result-object v13

    if-eq v13, v7, :cond_3b

    .line 383
    iget-object v3, v7, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v13, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 384
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v34, v11

    move-object v11, v5

    move-object v5, v7

    .line 385
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 386
    new-instance v1, Lcom/android/tools/r8/internal/No0;

    invoke-direct {v1, v13, v0}, Lcom/android/tools/r8/internal/No0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 387
    invoke-interface {v11, v1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    move-object/from16 v5, v21

    move-object/from16 v7, v33

    .line 388
    invoke-virtual {v7, v6, v1, v5}, Lcom/android/tools/r8/internal/KI;->a(Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/internal/W5;)V

    goto :goto_30

    :cond_3b
    move-object/from16 v34, v11

    move-object/from16 v7, v33

    move-object v11, v5

    move-object/from16 v5, v21

    :goto_30
    move-object/from16 v13, p6

    move-object v2, v5

    move-object v5, v11

    move-object v11, v12

    move/from16 v6, v16

    move-object/from16 v17, v22

    move-object/from16 v16, v7

    move-object v12, v10

    move-object/from16 v7, v34

    move-object v10, v9

    move-object v9, v14

    :goto_31
    move/from16 v14, v20

    goto/16 :goto_9

    :cond_3c
    move-object v13, v5

    move-object/from16 v34, v7

    move/from16 v20, v14

    move-object/from16 v7, v16

    move-object/from16 v22, v17

    move-object v5, v2

    move/from16 v16, v6

    move-object v14, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v11

    .line 389
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v4

    .line 390
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 391
    invoke-virtual {v12, v10, v0}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object v6

    .line 392
    invoke-virtual {v8, v6, v9}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/iw;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    if-eq v1, v0, :cond_3e

    .line 393
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 394
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 395
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v0, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 396
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    goto :goto_32

    :cond_3d
    const/4 v3, 0x0

    .line 397
    :goto_32
    new-instance v0, Lcom/android/tools/r8/internal/Mo0;

    invoke-direct {v0, v1, v3}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v13, v0}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    move-object v11, v3

    goto :goto_33

    :cond_3e
    const/4 v11, 0x0

    :goto_33
    if-eqz v11, :cond_40

    .line 398
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/iw;->b()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->A()Z

    move-result v0

    if-eqz v0, :cond_3f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v13

    move-object v9, v5

    move-object v5, v6

    move-object v6, v11

    move-object/from16 v11, p6

    move-object v14, v7

    move-object/from16 v7, p6

    .line 399
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/ew;Lcom/android/tools/r8/internal/iw;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    move-object v6, v11

    goto/16 :goto_36

    :cond_3f
    move-object/from16 v6, p6

    move-object v9, v5

    move-object v14, v7

    .line 400
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    if-eq v0, v1, :cond_4c

    .line 401
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_36

    :cond_40
    move-object/from16 v6, p6

    move-object v9, v5

    move-object v14, v7

    goto/16 :goto_36

    :cond_41
    move-object v9, v2

    move-object/from16 v34, v7

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v12, v11

    move-object v6, v13

    move-object v13, v5

    .line 402
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    iget-object v7, v0, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    .line 403
    new-instance v11, Lcom/android/tools/r8/internal/PR;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object v4, v13

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    new-instance v0, Lcom/android/tools/r8/internal/dT0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dT0;-><init>()V

    .line 404
    invoke-virtual {v11, v7, v0, v12, v10}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    goto/16 :goto_36

    :cond_42
    move-object v9, v2

    move-object/from16 v34, v7

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v12, v11

    move-object v6, v13

    move-object v13, v5

    .line 405
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v7

    .line 406
    new-instance v11, Lcom/android/tools/r8/internal/PR;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object v4, v13

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    .line 407
    iget-object v0, v7, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 408
    new-instance v1, Lcom/android/tools/r8/internal/eT0;

    invoke-direct {v1, v7}, Lcom/android/tools/r8/internal/eT0;-><init>(Lcom/android/tools/r8/internal/jc;)V

    .line 409
    invoke-virtual {v11, v0, v1, v12, v10}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    goto/16 :goto_36

    :cond_43
    move-object v9, v2

    move-object/from16 v34, v7

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v12, v11

    move-object v6, v13

    move-object v13, v5

    .line 410
    sget-boolean v0, Lcom/android/tools/r8/internal/QR;->d:Z

    if-eqz v0, :cond_44

    goto/16 :goto_36

    :cond_44
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_45
    move-object v9, v2

    move-object/from16 v34, v7

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v12, v11

    move-object v6, v13

    move-object v13, v5

    .line 411
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v7

    .line 412
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-eqz v0, :cond_46

    goto/16 :goto_36

    :cond_46
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v13

    move-object v4, v7

    move-object/from16 v5, p5

    .line 413
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/yk0;Lcom/android/tools/r8/graph/proto/j;)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 415
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    .line 416
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 417
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    iget-object v1, v8, Lcom/android/tools/r8/internal/QR;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    :goto_34
    move-object v3, v0

    goto :goto_35

    .line 418
    :cond_47
    iget-object v0, v8, Lcom/android/tools/r8/internal/QR;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    goto :goto_34

    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v5, v11

    .line 419
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq v11, v0, :cond_48

    .line 420
    new-instance v7, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/yk0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 421
    invoke-interface {v13, v7}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 422
    :cond_48
    invoke-virtual {v14, v7, v9}, Lcom/android/tools/r8/internal/KI;->a(Lcom/android/tools/r8/internal/yk0;Lcom/android/tools/r8/internal/W5;)V

    goto/16 :goto_36

    :cond_49
    move-object v9, v2

    move-object/from16 v34, v7

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v12, v11

    move-object v6, v13

    move-object v13, v5

    .line 423
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v7

    .line 424
    new-instance v11, Lcom/android/tools/r8/internal/PR;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object v4, v13

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    iget-object v0, v7, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Lcom/android/tools/r8/internal/fT0;

    invoke-direct {v1, v7}, Lcom/android/tools/r8/internal/fT0;-><init>(Lcom/android/tools/r8/internal/oZ;)V

    .line 425
    invoke-virtual {v11, v0, v1, v12, v10}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    goto/16 :goto_36

    :cond_4a
    move-object v9, v2

    move-object/from16 v34, v7

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v12, v11

    move-object v6, v13

    move-object v13, v5

    .line 426
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->q0()Lcom/android/tools/r8/internal/bY;

    move-result-object v7

    .line 427
    new-instance v11, Lcom/android/tools/r8/internal/PR;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object v4, v13

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PR;-><init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;)V

    .line 428
    iget-object v0, v7, Lcom/android/tools/r8/internal/bY;->k:Lcom/android/tools/r8/graph/M2;

    .line 429
    new-instance v1, Lcom/android/tools/r8/internal/gT0;

    invoke-direct {v1, v8}, Lcom/android/tools/r8/internal/gT0;-><init>(Lcom/android/tools/r8/internal/QR;)V

    .line 430
    invoke-virtual {v11, v0, v1, v12, v10}, Lcom/android/tools/r8/internal/PR;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/zE;

    goto :goto_36

    :cond_4b
    move-object v9, v2

    move-object/from16 v34, v7

    move-object v10, v12

    move/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v17

    move/from16 v16, v6

    move-object v12, v11

    move-object v6, v13

    move-object v13, v5

    .line 431
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object v0

    .line 432
    new-instance v1, Lcom/android/tools/r8/internal/uq;

    .line 433
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 434
    iget-object v3, v0, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 435
    invoke-virtual {v12, v3, v10}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;

    move-result-object v3

    .line 436
    iget-object v0, v0, Lcom/android/tools/r8/internal/uq;->m:Lcom/android/tools/r8/internal/ZY;

    .line 437
    invoke-virtual {v0, v12, v10}, Lcom/android/tools/r8/internal/ZY;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/ZY;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    .line 438
    invoke-interface {v13, v1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    :cond_4c
    :goto_36
    move-object v2, v9

    move-object v11, v12

    move-object v5, v13

    move-object/from16 v17, v22

    move-object/from16 v7, v34

    move-object/from16 v9, p1

    move-object v13, v6

    move-object v12, v10

    move/from16 v6, v16

    move-object/from16 v10, p2

    move-object/from16 v16, v14

    goto/16 :goto_31

    :cond_4d
    move/from16 v20, v14

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v14, p7

    move-object/from16 v6, v16

    move-object/from16 v5, v17

    move/from16 v0, v20

    goto/16 :goto_0

    :cond_4e
    move-object/from16 v22, v5

    move-object v14, v6

    move-object v10, v12

    move-object v6, v13

    move-object v12, v11

    if-eqz v0, :cond_4f

    .line 439
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/hT0;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/hT0;-><init>(Ljava/util/Set;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object v3, v14

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    goto :goto_37

    :cond_4f
    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object v3, v14

    .line 440
    :goto_37
    iget-object v0, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 441
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 442
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 443
    new-instance v0, Lcom/android/tools/r8/internal/Vl;

    iget-object v2, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v2, v12, v10}, Lcom/android/tools/r8/internal/Vl;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    .line 444
    invoke-virtual {v0, v1, v6}, Lcom/android/tools/r8/internal/Vl;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/Set;)V

    .line 445
    :cond_50
    invoke-virtual/range {v22 .. v22}, Lcom/android/tools/r8/internal/l10;->a()V

    const/4 v0, 0x0

    .line 446
    invoke-virtual {v1, v0, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 448
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 449
    invoke-interface/range {p8 .. p8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/ew0;

    .line 450
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    new-instance v7, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v7, v5, v6}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    .line 452
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 453
    sget-boolean v5, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v5, :cond_52

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v6

    if-eqz v6, :cond_51

    goto :goto_39

    :cond_51
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_52
    :goto_39
    if-nez v5, :cond_54

    .line 454
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v6

    if-nez v6, :cond_53

    goto :goto_3a

    :cond_53
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_54
    :goto_3a
    if-nez v5, :cond_56

    .line 455
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_3b

    :cond_55
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 456
    :cond_56
    :goto_3b
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 457
    sget-boolean v5, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 458
    new-instance v5, Lcom/android/tools/r8/internal/ph;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ph;-><init>()V

    .line 459
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v4

    :cond_57
    const/4 v6, 0x0

    .line 460
    invoke-interface {v1, v4, v6}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 461
    iput-object v4, v5, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 462
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ph;->a()Lcom/android/tools/r8/internal/sE;

    move-result-object v4

    .line 463
    check-cast v4, Lcom/android/tools/r8/internal/ph;

    .line 464
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    .line 465
    iput-object v5, v4, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    const-wide/16 v9, 0x0

    .line 466
    iput-wide v9, v4, Lcom/android/tools/r8/internal/ph;->d:J

    .line 467
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    .line 468
    invoke-virtual {v7, v4, v0}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_38

    :cond_58
    const/4 v6, 0x0

    .line 469
    iget-object v4, v7, Lcom/android/tools/r8/internal/Y5;->e:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Y5;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_38

    .line 470
    :cond_59
    iget-object v2, v8, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 471
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 472
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/KI;->a()V

    .line 473
    sget-boolean v0, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v0, :cond_5a

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->r()V

    :cond_5a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/ew;Lcom/android/tools/r8/internal/iw;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V
    .locals 3

    .line 2
    iget-object v0, p5, Lcom/android/tools/r8/internal/iw;->c:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 6
    invoke-virtual {p6, v0}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 7
    sget v1, Lcom/android/tools/r8/internal/Qk0;->n:I

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/Pk0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Pk0;-><init>()V

    .line 9
    iget-object p5, p5, Lcom/android/tools/r8/internal/iw;->c:Lcom/android/tools/r8/graph/M2;

    .line 10
    iput-object p5, v1, Lcom/android/tools/r8/internal/ic;->d:Lcom/android/tools/r8/graph/M2;

    .line 11
    iput-object p6, v1, Lcom/android/tools/r8/internal/ic;->e:Lcom/android/tools/r8/internal/xw0;

    .line 12
    iput-object v0, v1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 13
    check-cast p4, Lcom/android/tools/r8/internal/hw;

    .line 14
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p4

    .line 15
    iput-object p4, v1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ic;->c()Lcom/android/tools/r8/internal/jc;

    move-result-object p4

    .line 17
    sget p5, Lcom/android/tools/r8/internal/hC;->c:I

    .line 18
    new-instance p5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p5, p4}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 19
    iget-object p6, p0, Lcom/android/tools/r8/internal/QR;->c:Lcom/android/tools/r8/internal/nJ;

    .line 20
    invoke-interface {p3, p1, p2, p5, p6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    .line 21
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p7, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/yk0;Lcom/android/tools/r8/graph/proto/j;)V
    .locals 2

    .line 645
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 646
    iget-object v0, p5, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 647
    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_4

    .line 648
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 649
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/android/tools/r8/internal/QR;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-interface {p3, p1, p2, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/W5;

    move-result-object p3

    .line 651
    new-instance v0, Lcom/android/tools/r8/internal/QS0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/QS0;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 652
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 653
    sget-boolean v1, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 654
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iput-object v0, p2, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 655
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    .line 656
    :cond_2
    iget-object p2, p5, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 657
    iget-object p2, p2, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    .line 658
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 659
    sget v0, Lcom/android/tools/r8/internal/Qk0;->n:I

    .line 660
    new-instance v0, Lcom/android/tools/r8/internal/Pk0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Pk0;-><init>()V

    .line 661
    iput-object p5, v0, Lcom/android/tools/r8/internal/ic;->e:Lcom/android/tools/r8/internal/xw0;

    .line 662
    iget-object v1, p0, Lcom/android/tools/r8/internal/QR;->a:Lcom/android/tools/r8/graph/y;

    .line 663
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    invoke-static {p2, p5, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p5

    .line 665
    invoke-virtual {v0, p1, p5}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ic;

    .line 666
    iput-object p2, p1, Lcom/android/tools/r8/internal/ic;->d:Lcom/android/tools/r8/graph/M2;

    .line 667
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    .line 668
    iput-object p2, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 669
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ic;->c()Lcom/android/tools/r8/internal/jc;

    move-result-object p1

    .line 670
    invoke-interface {p3, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 671
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    .line 672
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    .line 673
    sget-boolean p2, Lcom/android/tools/r8/internal/QR;->d:Z

    if-nez p2, :cond_4

    if-ne p1, p4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/bY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/QR;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v0, p2, p1, v1}, Lcom/android/tools/r8/internal/bY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)V

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/jh;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p2, p1, v1}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    return-object v0

    .line 5
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Mo0;->m:Z

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Lo0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lo0;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/QR;->b:Lcom/android/tools/r8/graph/u1;

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/u1;->e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/C1;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C1;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 10
    iput-object p1, v0, Lcom/android/tools/r8/internal/Lo0;->d:Lcom/android/tools/r8/graph/l1;

    .line 11
    iput-object p2, v0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/Mo0;

    iget-object p2, v0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Lo0;->d:Lcom/android/tools/r8/graph/l1;

    invoke-direct {p1, v1, p2}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 13
    iget-object p2, v0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz p2, :cond_2

    .line 14
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_2
    return-object p1
.end method
