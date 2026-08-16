.class public final Lcom/android/tools/r8/internal/ou0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/aB;

.field public final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/aB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ou0;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ou0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ou0;->b:Lcom/android/tools/r8/internal/aB;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/pu0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected constraint type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->q()Lcom/android/tools/r8/internal/Hx0;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_1
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_2
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_3
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->p()Lcom/android/tools/r8/internal/xs0;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_4
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->o()Lcom/android/tools/r8/internal/Km0;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_5
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->j()Lcom/android/tools/r8/internal/Fx;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_6
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_7
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/QC;)V
    .locals 5

    .line 66
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 67
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 72
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    sget-boolean v2, Lcom/android/tools/r8/internal/ou0;->d:Z

    if-nez v2, :cond_0

    .line 74
    sget v2, Lcom/android/tools/r8/internal/QC;->c:I

    .line 75
    new-instance v2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 76
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 77
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/IC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/WB;

    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v2, p0}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/QC;)V

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 81
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v1

    .line 82
    sget-boolean v2, Lcom/android/tools/r8/internal/ou0;->d:Z

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    if-ne p0, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_2
    if-nez v2, :cond_8

    .line 83
    iget-object v3, v1, Lcom/android/tools/r8/internal/T3;->k:Lcom/android/tools/r8/internal/YV;

    .line 84
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/YV;->a()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_3
    if-nez v2, :cond_0

    .line 85
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_0

    .line 88
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 89
    :cond_a
    sget-boolean v1, Lcom/android/tools/r8/internal/ou0;->d:Z

    if-eqz v1, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(ZLcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Mw0;
    .locals 3

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    instance-of v1, v0, Lcom/android/tools/r8/internal/z7;

    if-eqz v1, :cond_0

    .line 52
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    .line 53
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 54
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/ou0;->d:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 55
    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    .line 56
    sget-object v1, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    .line 57
    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/QC;)V

    :cond_2
    if-eqz p1, :cond_8

    .line 58
    sget-object p1, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    return-object p1

    .line 59
    :cond_3
    sget-boolean p2, Lcom/android/tools/r8/internal/ou0;->d:Z

    if-nez p2, :cond_5

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_5
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/Mw0;->e:Lcom/android/tools/r8/internal/Mw0;

    return-object p1

    .line 61
    :cond_6
    sget-boolean v1, Lcom/android/tools/r8/internal/ou0;->d:Z

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    .line 62
    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    .line 63
    sget-object v1, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    .line 64
    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/QC;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 65
    sget-object p1, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    return-object p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;
    .locals 3

    move-object v0, p1

    :goto_0
    if-eqz p1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/tools/r8/internal/ou0;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/tools/r8/internal/ou0;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/function/Consumer;)V
    .locals 2

    .line 36
    sget-boolean v0, Lcom/android/tools/r8/internal/ou0;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/YV;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ou0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 38
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p3

    .line 40
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W3;->G()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    .line 41
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/internal/ou0;->a(ZLcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object p3

    .line 42
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ou0;->b:Lcom/android/tools/r8/internal/aB;

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    .line 44
    iget-object v0, v0, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 47
    invoke-virtual {p2, p3, v1, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ef0;)V

    .line 48
    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/YV;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/YV;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/YC;

    .line 12
    invoke-interface {v3, p0}, Lcom/android/tools/r8/internal/YC;->a(Lcom/android/tools/r8/internal/ou0;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 15
    iget-object v4, p0, Lcom/android/tools/r8/internal/ou0;->b:Lcom/android/tools/r8/internal/aB;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v3}, Lcom/android/tools/r8/internal/ou0;->a(ZLcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v5

    .line 16
    iget-object v6, v4, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    iget-object v4, v4, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    .line 18
    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 19
    invoke-virtual {v3, v5, v6, v4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/Mw0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ef0;)V

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v4

    if-nez v4, :cond_1

    .line 21
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 23
    :cond_3
    iget-object p3, p0, Lcom/android/tools/r8/internal/ou0;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    .line 25
    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 26
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 27
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 28
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot determine precise type for value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", its imprecise type is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 32
    new-instance v2, Lcom/android/tools/r8/position/MethodPosition;

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    invoke-direct {v1, p2, v0, v2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p3, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 35
    iget-object p1, p3, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 5

    if-ne p1, p2, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eq v0, v1, :cond_4

    .line 93
    instance-of v2, v0, Lcom/android/tools/r8/internal/z7;

    if-eqz v2, :cond_1

    .line 94
    sget-object v2, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v2

    .line 95
    :goto_0
    instance-of v3, v1, Lcom/android/tools/r8/internal/z7;

    if-eqz v3, :cond_2

    .line 96
    sget-object v3, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v3

    :goto_1
    if-ne v2, v3, :cond_3

    goto :goto_2

    .line 97
    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/If;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot unify types for values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_2
    return-void

    .line 98
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/internal/ou0;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/ou0;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
