.class public abstract Lcom/android/tools/r8/internal/SJ;
.super Lcom/android/tools/r8/graph/m0;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/y;

.field public final f:Lcom/android/tools/r8/internal/E00;

.field public final g:Ljava/util/function/Function;

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;

.field public final i:Ljava/util/function/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/E00;Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Predicate;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/graph/m0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/SJ;->f:Lcom/android/tools/r8/internal/E00;

    iput-object p3, p0, Lcom/android/tools/r8/internal/SJ;->g:Ljava/util/function/Function;

    iput-object p4, p0, Lcom/android/tools/r8/internal/SJ;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Lcom/android/tools/r8/internal/SJ;->i:Ljava/util/function/Predicate;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/C4;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/C4;->b:Lcom/android/tools/r8/graph/H0;

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/D4;)V
    .locals 1

    .line 60
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D4;->l()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    instance-of v0, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/m80;
    .locals 0

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object p3, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H4;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H4;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p2

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H4;->a()Lcom/android/tools/r8/graph/H4$a;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/aW0;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/aW0;-><init>(Lcom/android/tools/r8/internal/m80;)V

    new-instance p4, Lcom/android/tools/r8/internal/bW0;

    invoke-direct {p4, p2}, Lcom/android/tools/r8/internal/bW0;-><init>(Lcom/android/tools/r8/internal/m80;)V

    .line 59
    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/graph/H4$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 65
    sget-object v0, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V
    .locals 10

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->f:Lcom/android/tools/r8/internal/E00;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->b()Lcom/android/tools/r8/internal/Hz;

    move-result-object v6

    .line 19
    sget-object v7, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v3, p1

    move-object v5, p2

    .line 20
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 21
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 22
    move-object v3, p2

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result v1

    invoke-virtual {p2, v3, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 27
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_6

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v2, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v4

    iget-object v7, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    .line 32
    sget-boolean p2, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez p2, :cond_4

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_2

    .line 34
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p2

    const/4 v9, 0x0

    if-nez p2, :cond_5

    goto :goto_3

    .line 36
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_9

    const/4 v5, 0x1

    if-eq p2, v5, :cond_8

    const/4 v5, 0x2

    if-eq p2, v5, :cond_7

    const/4 v5, 0x3

    if-eq p2, v5, :cond_6

    const/4 v5, 0x4

    if-eq p2, v5, :cond_8

    :goto_3
    move-object p1, v9

    goto :goto_4

    .line 37
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {v1, v3, p2, v2, p1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    goto :goto_4

    .line 40
    :cond_7
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    goto :goto_4

    .line 41
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result v6

    .line 42
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v8

    move-object v5, v0

    .line 43
    invoke-virtual/range {v1 .. v8}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/shaking/i2;Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    goto :goto_4

    .line 44
    :cond_9
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 45
    :goto_4
    sget-boolean p2, Lcom/android/tools/r8/graph/H0;->e:Z

    if-eqz p1, :cond_a

    .line 46
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v9

    :cond_a
    if-eqz v9, :cond_b

    .line 47
    invoke-virtual {p0, v9, v0}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    :cond_b
    :goto_5
    return-void

    .line 48
    :cond_c
    :goto_6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/D0;)V
    .locals 1

    .line 64
    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/f6;->a(ILcom/android/tools/r8/graph/C2;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/android/tools/r8/internal/SJ;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->e1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 52
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/SJ;->a(ZLcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 66
    iget-object p1, p2, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 67
    iget-object v0, p2, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/SJ;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/cW0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/cW0;-><init>(Lcom/android/tools/r8/internal/SJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)V

    .line 73
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/m80;

    if-eqz p1, :cond_2

    .line 74
    iget-object p2, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    .line 75
    iget-object p3, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    .line 76
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    iget p3, p3, Lcom/android/tools/r8/internal/nJ;->X:I

    if-lt p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 77
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 78
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/H5;

    .line 79
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/SJ;->a(ZLcom/android/tools/r8/graph/H5;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final a(ZLcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->i:Ljava/util/function/Predicate;

    invoke-interface {v0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/SJ;->e:Lcom/android/tools/r8/graph/y;

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/I1;->h(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    :goto_1
    return-void

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->g:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/E00;

    iget-object v0, p0, Lcom/android/tools/r8/internal/SJ;->f:Lcom/android/tools/r8/internal/E00;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/E00;->a(Lcom/android/tools/r8/internal/E00;Z)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method
