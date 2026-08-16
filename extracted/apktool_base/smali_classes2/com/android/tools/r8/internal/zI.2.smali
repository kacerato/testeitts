.class public final Lcom/android/tools/r8/internal/zI;
.super Lcom/android/tools/r8/internal/CW;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final g:Lcom/android/tools/r8/graph/y;

.field public final h:Ljava/util/IdentityHashMap;

.field public final i:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/zX;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/CW;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/zX;)V

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/zI;->h:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/zI;->g:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/internal/zI;->i:Ljava/util/function/Consumer;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/internal/zX;)Lcom/android/tools/r8/internal/wX;
    .locals 2

    .line 47
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 48
    :cond_0
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget-boolean p0, Lcom/android/tools/r8/internal/zI;->j:Z

    if-eqz p0, :cond_1

    .line 50
    sget-object p0, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    return-object p0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 52
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/zI;->j:Z

    if-nez v0, :cond_4

    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 53
    :cond_4
    :goto_0
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->j()Lcom/android/tools/r8/internal/sg;

    move-result-object p3

    .line 54
    new-instance v1, Lcom/android/tools/r8/internal/HE1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/tools/r8/internal/HE1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;)V

    .line 55
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 56
    invoke-virtual {p3, p0, v1, p1}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Lcom/android/tools/r8/graph/D2;)Lcom/android/tools/r8/internal/xX;

    move-result-object p0

    .line 57
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 59
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/zX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    .line 60
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 61
    instance-of p1, p0, Lcom/android/tools/r8/internal/sg;

    if-eqz p1, :cond_7

    .line 62
    invoke-interface {p0}, Lcom/android/tools/r8/internal/wX;->j()Lcom/android/tools/r8/internal/sg;

    move-result-object p0

    if-nez v0, :cond_6

    .line 63
    iget-object p1, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    .line 64
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 66
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    .line 67
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/wX;

    :cond_7
    return-object p0

    :cond_8
    :goto_2
    return-object p3
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/zt;
    .locals 1

    .line 69
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->c()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p3

    .line 75
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object p3

    new-instance v0, Lcom/android/tools/r8/internal/PE1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/PE1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)V

    .line 76
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/BiPredicate;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    .line 78
    invoke-static {p1, p2, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p0

    .line 80
    new-instance p1, Lcom/android/tools/r8/internal/kv;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)Z
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/wX;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/zI;->g:Lcom/android/tools/r8/graph/y;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 28
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    sget-boolean p1, Lcom/android/tools/r8/internal/zI;->j:Z

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$a;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/zI;->j:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    instance-of v1, v1, Lcom/android/tools/r8/graph/H5;

    if-nez v1, :cond_5

    .line 37
    iget-object p1, p0, Lcom/android/tools/r8/internal/zI;->i:Ljava/util/function/Consumer;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-ne v0, p1, :cond_6

    goto :goto_2

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/zI;->g:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CW;->f:Lcom/android/tools/r8/internal/zX;

    .line 41
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/tools/r8/internal/zI;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/internal/zX;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    .line 42
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result p3

    if-nez p3, :cond_7

    .line 43
    iget-object p3, p0, Lcom/android/tools/r8/internal/CW;->f:Lcom/android/tools/r8/internal/zX;

    iget-object v0, p0, Lcom/android/tools/r8/internal/zI;->g:Lcom/android/tools/r8/graph/y;

    .line 44
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 46
    invoke-virtual {p3, v0, p2, p1}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/AX;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/zI;->h:Ljava/util/IdentityHashMap;

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/AX;

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/zI;->j:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zI;->g:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AX;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/AX;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/CW;->f:Lcom/android/tools/r8/internal/zX;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 19
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/zI;->j:Z

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->d()Lcom/android/tools/r8/internal/mg;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of v1, v1, Lcom/android/tools/r8/internal/sg;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/zI;->g:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 25
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/Collection;)V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/zI;->j:Z

    if-nez v0, :cond_0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zI;->a(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1

    .line 82
    sget-boolean v0, Lcom/android/tools/r8/internal/zI;->j:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/LE1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/LE1;-><init>()V

    .line 83
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/ME1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ME1;-><init>(Lcom/android/tools/r8/internal/zI;)V

    .line 84
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/graph/c4;->b:Ljava/util/IdentityHashMap;

    .line 5
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/AX;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/KE1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/KE1;-><init>(Lcom/android/tools/r8/internal/zI;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/yX;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/AX;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v1, Lcom/android/tools/r8/internal/IE1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IE1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/JE1;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/JE1;-><init>(Lcom/android/tools/r8/internal/zI;Lcom/android/tools/r8/internal/AX;)V

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/tools/r8/graph/c4;->b(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Wj;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final j(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zI;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/zI;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zI;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zI;->m(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/AX;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/zI;->c(Lcom/android/tools/r8/internal/AX;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/AX;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/AX;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/AX;-><init>(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v2, Lcom/android/tools/r8/internal/NE1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/NE1;-><init>(Lcom/android/tools/r8/internal/zI;Lcom/android/tools/r8/internal/AX;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v3, v2, p1}, Lcom/android/tools/r8/graph/c4;->a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    new-instance v1, Lcom/android/tools/r8/internal/OE1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/OE1;-><init>(Lcom/android/tools/r8/internal/zI;Lcom/android/tools/r8/internal/AX;)V

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/zI;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
