.class public final Lcom/android/tools/r8/internal/mo0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/qo0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mo0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Jl1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jl1;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/qo0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/mo0;->b:Lcom/android/tools/r8/internal/qo0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->b()Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/internal/yo0;)V
    .locals 0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yo0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 3

    .line 17
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/mo0;->b:Lcom/android/tools/r8/internal/qo0;

    new-instance v2, Lcom/android/tools/r8/internal/Kl1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Kl1;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/internal/Wr0;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Hl1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Hl1;-><init>(Ljava/util/Set;)V

    new-instance v1, Lcom/android/tools/r8/internal/Il1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Il1;-><init>(Lcom/android/tools/r8/internal/mo0;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/mo0;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 7
    :cond_0
    sget-object p2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 8
    new-instance p2, Lcom/android/tools/r8/graph/j1$a;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/16 v1, 0x1008

    .line 9
    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 10
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 11
    sget-object v0, Lcom/android/tools/r8/graph/c6;->e:Lcom/android/tools/r8/graph/c6;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/mo0;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/j1;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    sget-object v0, Lcom/android/tools/r8/graph/c6;->e:Lcom/android/tools/r8/graph/c6;

    sget-object v1, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/internal/SG;)V

    return-void
.end method
