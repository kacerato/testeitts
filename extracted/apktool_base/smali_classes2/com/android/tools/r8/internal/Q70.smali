.class public final Lcom/android/tools/r8/internal/Q70;
.super Lcom/android/tools/r8/internal/ea;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/y;

.field public final d:Lcom/android/tools/r8/internal/vg;

.field public final e:Lcom/android/tools/r8/internal/ea;

.field public final f:Lcom/android/tools/r8/internal/kZ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/ea;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ea;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Q70;->c:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    sget-object p1, Lcom/android/tools/r8/internal/jZ;->c:Lcom/android/tools/r8/internal/jZ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/tools/r8/internal/V70;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/vg;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/V70;-><init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/kZ;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Q70;->f:Lcom/android/tools/r8/internal/kZ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 16
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p2

    .line 17
    invoke-interface {p2, p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 2

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 60
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/H2;->i(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 20
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->i(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/internal/hR;Lcom/android/tools/r8/internal/K70;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iR;->c()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 48
    iget-object p0, p1, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hR;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 50
    iget-object p0, p1, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    .line 51
    invoke-interface {p2, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xh;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/internal/xh;->h:Lcom/android/tools/r8/graph/H2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 68
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/xh;->h:Lcom/android/tools/r8/graph/H2;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    .line 71
    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 2

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 26
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/H2;->i(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/iR;->i:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    .line 8
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/internal/hR;Lcom/android/tools/r8/internal/K70;)V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iR;->c()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 15
    iget-object p0, p1, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hR;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 17
    iget-object p0, p1, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    .line 18
    invoke-interface {p2, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ea;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/l5;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->f:Lcom/android/tools/r8/internal/kZ;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/mc0;->a(Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Q70;->c:Lcom/android/tools/r8/graph/y;

    .line 76
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v1

    .line 77
    invoke-static {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/Y70;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/s4;)V

    .line 78
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Rw0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/AS0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/AS0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/zu0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/BS0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/BS0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/yh;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->f:Lcom/android/tools/r8/internal/kZ;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)V

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->f:Lcom/android/tools/r8/internal/kZ;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/rm;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/bK;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    .line 26
    iget-object v1, p1, Lcom/android/tools/r8/internal/bK;->b:Lcom/android/tools/r8/graph/H5;

    .line 27
    iget-object v2, p1, Lcom/android/tools/r8/internal/bK;->c:Lcom/android/tools/r8/graph/H5;

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/eK;->a(Lcom/android/tools/r8/internal/bK;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Q70;->b(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Q70;->c(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Q70;->d(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/mR;->a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/internal/K70;)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iR;->c()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 40
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    .line 41
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    .line 42
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H2;->g(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->g1:Z

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->n(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xh;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v0

    .line 8
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/s4;->b:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/zS0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/zS0;-><init>(Lcom/android/tools/r8/internal/xh;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/yh;->a(Lcom/android/tools/r8/internal/xh;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 31
    sget-boolean v0, Lcom/android/tools/r8/internal/Q70;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ea;->b()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->f:Lcom/android/tools/r8/internal/kZ;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kZ;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/kZ;->b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/lc0;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/U2;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Fm;->b(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/CS0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/CS0;-><init>(Lcom/android/tools/r8/internal/Q70;Lcom/android/tools/r8/internal/iR;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Rw0;->c(Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->c:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/s4;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/sS0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/sS0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/q5;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/q5;->s(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Fm;->c(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/iR;->f:Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/vS0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/vS0;-><init>(Lcom/android/tools/r8/internal/iR;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/CI;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/fu;->d(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/iR;->g:Lcom/android/tools/r8/internal/hR;

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/internal/hR;->b:Lcom/android/tools/r8/internal/kK;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    iget-object v1, v0, Lcom/android/tools/r8/internal/hR;->b:Lcom/android/tools/r8/internal/kK;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hR;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Q70;->c:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/Q70;->c:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->l()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hR;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 16
    iget-boolean v3, v0, Lcom/android/tools/r8/internal/hR;->c:Z

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 19
    instance-of v1, v1, Lcom/android/tools/r8/graph/H5;

    if-eqz v1, :cond_3

    .line 20
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hR;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/rS0;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/rS0;-><init>(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/internal/hR;)V

    .line 22
    invoke-virtual {p2, v1, v2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void

    .line 23
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v2, Lcom/android/tools/r8/internal/uS0;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/uS0;-><init>(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/internal/hR;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/rt0;->e(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Fm;->e(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/lc0;->f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/CI;->g(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/lc0;->h(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/wS0;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/wS0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/AI;->i(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/AI;->j(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final k(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/N0;->k(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Em;->l(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/N0;->m(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final n(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/N0;->n(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final o(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/N0;->o(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final p(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/N0;->p(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final q(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/yS0;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/yS0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/AI;->q(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final r(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/N0;->r(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final s(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/q5;->s(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final t(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/tS0;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/tS0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/AI;->t(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/l5;->u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final v(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/rm;->v(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final w(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/lc0;->w(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final x(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/cm;->x(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final y(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/lc0;->y(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->d:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q70;->e:Lcom/android/tools/r8/internal/ea;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Hm;->z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
