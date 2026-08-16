.class public final Lcom/android/tools/r8/internal/P70;
.super Lcom/android/tools/r8/internal/o9;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/vg;

.field public final d:Lcom/android/tools/r8/internal/s4;

.field public final e:Lcom/android/tools/r8/internal/n9;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/s4;Lcom/android/tools/r8/internal/n9;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/o9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/P70;->c:Lcom/android/tools/r8/internal/vg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/P70;->d:Lcom/android/tools/r8/internal/s4;

    iput-object p3, p0, Lcom/android/tools/r8/internal/P70;->e:Lcom/android/tools/r8/internal/n9;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    .line 10
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->e:Lcom/android/tools/r8/internal/n9;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->e:Lcom/android/tools/r8/internal/n9;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->c:Lcom/android/tools/r8/internal/vg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/P70;->d:Lcom/android/tools/r8/internal/s4;

    invoke-static {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/Y70;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/s4;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/RQ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/RQ0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/SQ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/SQ0;-><init>(Lcom/android/tools/r8/internal/P70;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/H2;->g(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->e:Lcom/android/tools/r8/internal/n9;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->c:Lcom/android/tools/r8/internal/vg;

    new-instance v1, Lcom/android/tools/r8/internal/QQ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/QQ0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->e:Lcom/android/tools/r8/internal/n9;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->e:Lcom/android/tools/r8/internal/n9;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->e:Lcom/android/tools/r8/internal/n9;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->e:Lcom/android/tools/r8/internal/n9;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P70;->c:Lcom/android/tools/r8/internal/vg;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vg;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/P70;->e:Lcom/android/tools/r8/internal/n9;

    iget-object p2, p2, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
