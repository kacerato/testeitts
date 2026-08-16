.class public final Lcom/android/tools/r8/internal/vg;
.super Lcom/android/tools/r8/internal/M70;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lcom/android/tools/r8/internal/C7;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/C7;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/M70;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/vg;->c:Z

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/vg;->b:Lcom/android/tools/r8/internal/C7;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/M70;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/vg;->c:Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l4;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l4;->a()Lcom/android/tools/r8/internal/G00;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/c4;

    .line 13
    iget-object v3, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/tools/r8/internal/d4;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/d4;-><init>(Lcom/android/tools/r8/internal/c4;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/vg;->d:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_2
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/C7;

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/ro0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/ro0;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    move-object p2, v0

    :goto_2
    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vg;->b:Lcom/android/tools/r8/internal/C7;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/ro0;)Lcom/android/tools/r8/internal/ro0;
    .locals 0

    .line 42
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/L70;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/L70;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/ro0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/L70;)V
    .locals 0

    .line 28
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/L70;->b(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/L70;)V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 18
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/L70;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/jE0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jE0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/L70;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/internal/ro0;)V
    .locals 0

    .line 53
    iput-object p0, p1, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    .line 3
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/l4;)Lcom/android/tools/r8/internal/M70;
    .locals 5

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l4;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l4;->a()Lcom/android/tools/r8/internal/G00;

    move-result-object p1

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/d4;

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/c4;

    .line 49
    iput-object v4, v3, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    goto :goto_0

    .line 50
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/vg;->d:Z

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 51
    iget-object p1, p0, Lcom/android/tools/r8/internal/vg;->b:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/qo0;)Lcom/android/tools/r8/internal/M70;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/vg;->b:Lcom/android/tools/r8/internal/C7;

    new-instance v1, Lcom/android/tools/r8/internal/Cw1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Cw1;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public final bridge synthetic a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/M70;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/vg;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/vg;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/vg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/Aw1;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Aw1;-><init>(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/Fw1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Fw1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 20
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 21
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void

    .line 22
    :cond_0
    sget-boolean p2, Lcom/android/tools/r8/internal/vg;->d:Z

    if-nez p2, :cond_2

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    instance-of v0, p2, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 11
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Bw1;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Bw1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Dw1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Dw1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 5

    .line 29
    sget-boolean v0, Lcom/android/tools/r8/internal/vg;->d:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/vg;->c:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vg;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/d4;

    .line 34
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/L70;->b()Lcom/android/tools/r8/internal/m1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/c4;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/G00;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/G00;-><init>(Ljava/util/ArrayList;)V

    .line 36
    iput-object v1, p1, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 37
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vg;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    sget-boolean v0, Lcom/android/tools/r8/internal/vg;->d:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vg;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/vg;->b:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ro0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/L70;->b()Lcom/android/tools/r8/internal/m1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/qo0;

    .line 40
    iput-object v0, p1, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    :cond_8
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/vg;->c:Z

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/d4;

    .line 4
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vg;->b:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/yw1;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/yw1;-><init>(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/vg;
    .locals 5

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/d4;

    .line 11
    invoke-virtual {v4, p1}, Lcom/android/tools/r8/internal/L70;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/L70;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/d4;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/vg;->b:Lcom/android/tools/r8/internal/C7;

    new-instance v2, Lcom/android/tools/r8/internal/xw1;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/xw1;-><init>(Ljava/util/function/Function;)V

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/C7;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 16
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/vg;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/vg;-><init>(Lcom/android/tools/r8/internal/C7;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/zw1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zw1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/vg;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/vg;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vg;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/ww1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ww1;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vg;->b:Lcom/android/tools/r8/internal/C7;

    new-instance v1, Lcom/android/tools/r8/internal/Ew1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ew1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
