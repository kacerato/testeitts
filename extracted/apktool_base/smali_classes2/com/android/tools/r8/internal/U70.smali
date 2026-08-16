.class public final Lcom/android/tools/r8/internal/U70;
.super Lcom/android/tools/r8/internal/fX;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/vg;

.field public final d:Lcom/android/tools/r8/internal/eX;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/eX;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/fX;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->i(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static e(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
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

.method public static f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static g(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static h(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static i(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static j(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/cY0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/cY0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/y;)V

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/aY0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/aY0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/WX0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/WX0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/ZX0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ZX0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final k(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/dY0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/dY0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/fY0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/fY0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final n(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/YX0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/YX0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final o(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/XX0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/XX0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final p(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/eY0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/eY0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final r(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/U70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/bY0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/bY0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/U70;->d:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
