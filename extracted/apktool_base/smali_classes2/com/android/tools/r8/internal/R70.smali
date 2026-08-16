.class public final Lcom/android/tools/r8/internal/R70;
.super Lcom/android/tools/r8/internal/Ta;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/vg;

.field public final d:Lcom/android/tools/r8/internal/s4;

.field public final e:Lcom/android/tools/r8/internal/Ta;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/s4;Lcom/android/tools/r8/internal/Ta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ta;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/R70;->d:Lcom/android/tools/r8/internal/s4;

    iput-object p3, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    .line 32
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/L70;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/jE0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jE0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/L70;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ta;->a()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/l5;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/k5;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/FI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/yI;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/FI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/yI;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/FI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Dm;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->d:Lcom/android/tools/r8/internal/s4;

    .line 17
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/s4;->b:Z

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U6;-><init>()V

    .line 19
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ZU0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/internal/ZU0;-><init>(Lcom/android/tools/r8/internal/R70;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/U6;)V

    .line 20
    invoke-virtual {p3, v1, v2}, Lcom/android/tools/r8/graph/Z4$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/aV0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/aV0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/FI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    .line 27
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    new-instance v1, Lcom/android/tools/r8/internal/bV0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/bV0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 28
    invoke-virtual {v0, p3, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    .line 29
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/U6;->e()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/cu;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->d:Lcom/android/tools/r8/internal/s4;

    .line 5
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/s4;->b:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/YU0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/YU0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/tm;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/cu;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/rm;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ta;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/tm;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Fm;->b(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Fm;->c(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Fm;->e(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/l5;->u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final v(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/rm;->v(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/R70;->e:Lcom/android/tools/r8/internal/Ta;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Hm;->z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
