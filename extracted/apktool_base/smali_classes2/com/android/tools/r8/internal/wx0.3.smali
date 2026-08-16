.class public abstract Lcom/android/tools/r8/internal/wx0;
.super Lcom/android/tools/r8/internal/Wj;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Lcom/android/tools/r8/internal/m80;

.field public final h:Lcom/android/tools/r8/internal/m80;

.field public final i:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Wj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wx0;->f:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wx0;->g:Lcom/android/tools/r8/internal/m80;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wx0;->h:Lcom/android/tools/r8/internal/m80;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wx0;->i:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/vx0;)Lcom/android/tools/r8/internal/vx0;
    .locals 0

    if-nez p2, :cond_0

    .line 36
    new-instance p1, Lcom/android/tools/r8/internal/vx0;

    const/4 p2, 0x0

    .line 37
    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/vx0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vx0;)V

    return-object p1

    .line 38
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/vx0;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/vx0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vx0;)V

    .line 39
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/vx0;->a(Lcom/android/tools/r8/internal/vx0;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/vx0;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/vx0;)Lcom/android/tools/r8/internal/vx0;
    .locals 1

    if-eqz p2, :cond_9

    if-ne p2, p0, :cond_0

    goto/16 :goto_2

    .line 17
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/wx0;->j:Z

    if-nez p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 20
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    .line 21
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    iget-object p1, p2, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p0

    .line 23
    :cond_4
    iget-object p1, p2, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 24
    iget-object p1, p2, Lcom/android/tools/r8/internal/vx0;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p2, Lcom/android/tools/r8/internal/vx0;->d:Ljava/util/List;

    .line 26
    :cond_5
    iget-object p1, p2, Lcom/android/tools/r8/internal/vx0;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/vx0;->a(Lcom/android/tools/r8/internal/vx0;)V

    return-object p2

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/vx0;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vx0;->d:Ljava/util/List;

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/vx0;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p2, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 33
    iget-object p1, p0, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p1

    if-nez p1, :cond_8

    .line 34
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/vx0;->a(Lcom/android/tools/r8/internal/vx0;)V

    return-object p0

    :cond_8
    :goto_1
    return-object p2

    :cond_9
    :goto_2
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/ay1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/ay1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Cq;->a(Lcom/android/tools/r8/graph/H5;Ljava/util/function/BiFunction;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vx0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wx0;->f:Ljava/util/IdentityHashMap;

    .line 3
    invoke-virtual {v0, p3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Cq;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/fy1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fy1;-><init>(Lcom/android/tools/r8/internal/wx0;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Cq;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/vx0;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/ey1;

    invoke-direct {v0, p5}, Lcom/android/tools/r8/internal/ey1;-><init>(Lcom/android/tools/r8/internal/vx0;)V

    invoke-virtual {p1, p4, v0}, Lcom/android/tools/r8/internal/Cq;->a(Lcom/android/tools/r8/graph/F2;Ljava/util/function/BiFunction;)V

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    .line 9
    sget-boolean p3, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez p3, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    instance-of p2, p1, Lcom/android/tools/r8/graph/H5;

    if-nez p2, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p5, Lcom/android/tools/r8/internal/vx0;->e:Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/vx0;Lcom/android/tools/r8/internal/vx0;)V
    .locals 1

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/vx0;->a()Lcom/android/tools/r8/internal/vx0;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 48
    iget-object p1, p1, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/internal/wx0;->i:Ljava/util/IdentityHashMap;

    .line 51
    iget-object p2, p2, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    .line 52
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 53
    sget-boolean v0, Lcom/android/tools/r8/internal/wx0;->j:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/vx0;Lcom/android/tools/r8/internal/vx0;Lcom/android/tools/r8/internal/vx0;)V
    .locals 1

    .line 40
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/vx0;->a()Lcom/android/tools/r8/internal/vx0;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 41
    iget-object p1, p2, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 43
    iget-object p2, p0, Lcom/android/tools/r8/internal/wx0;->i:Ljava/util/IdentityHashMap;

    .line 44
    iget-object p3, p3, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    .line 45
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p3, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 46
    sget-boolean p3, Lcom/android/tools/r8/internal/wx0;->j:Z

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/vx0;

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/wx0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vx0;)V

    iget-object v0, p1, Lcom/android/tools/r8/internal/vx0;->a:Lcom/android/tools/r8/internal/vx0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/tools/r8/internal/vx0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/tools/r8/internal/vx0;->e:Z

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/wx0;->g:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-nez p2, :cond_c

    sget-boolean p2, Lcom/android/tools/r8/internal/vx0;->f:Z

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/android/tools/r8/internal/vx0;->a:Lcom/android/tools/r8/internal/vx0;

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    iget-boolean p2, p1, Lcom/android/tools/r8/internal/vx0;->e:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    iget-object p2, p1, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p2

    if-eqz p2, :cond_6

    move-object p2, v0

    goto :goto_1

    :cond_6
    move-object p2, p1

    :goto_1
    iget-object v1, p1, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/vx0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    move-object p2, v2

    goto :goto_2

    :cond_9
    sget-boolean v0, Lcom/android/tools/r8/internal/vx0;->f:Z

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    iget-object v0, p2, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_3
    move-object v0, p2

    :goto_4
    if-eqz v0, :cond_c

    new-instance p2, Lcom/android/tools/r8/internal/cy1;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/cy1;-><init>(Lcom/android/tools/r8/internal/wx0;Lcom/android/tools/r8/internal/vx0;Lcom/android/tools/r8/internal/vx0;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/vx0;->a(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/wx0;->h:Lcom/android/tools/r8/internal/m80;

    iget-object p2, v0, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void

    :cond_c
    new-instance p2, Lcom/android/tools/r8/internal/dy1;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/dy1;-><init>(Lcom/android/tools/r8/internal/wx0;Lcom/android/tools/r8/internal/vx0;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/vx0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wx0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Cq;

    new-instance v1, Lcom/android/tools/r8/internal/by1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/by1;-><init>(Lcom/android/tools/r8/internal/wx0;Lcom/android/tools/r8/internal/Cq;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/wx0;->m(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Cq;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/wx0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Cq;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Cq;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v2, Lcom/android/tools/r8/internal/Yx1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/tools/r8/internal/Yx1;-><init>(Lcom/android/tools/r8/internal/wx0;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v3, v2, p1}, Lcom/android/tools/r8/graph/c4;->a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    new-instance v1, Lcom/android/tools/r8/internal/Zx1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Zx1;-><init>(Lcom/android/tools/r8/internal/Cq;)V

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-object v0
.end method
