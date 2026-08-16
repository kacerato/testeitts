.class public Lkotlin/jvm/internal/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "kotlin.jvm.functions."


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/v;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/v;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 0

    new-instance p2, Lkotlin/jvm/internal/v;

    invoke-direct {p2, p1}, Lkotlin/jvm/internal/v;-><init>(Ljava/lang/Class;)V

    return-object p2
.end method

.method public c(Lkotlin/jvm/internal/H;)LWf/h;
    .locals 0

    return-object p1
.end method

.method public d(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/v;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/v;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public e(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 0

    new-instance p2, Lkotlin/jvm/internal/v;

    invoke-direct {p2, p1}, Lkotlin/jvm/internal/v;-><init>(Ljava/lang/Class;)V

    return-object p2
.end method

.method public f(Ljava/lang/Class;Ljava/lang/String;)LWf/g;
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/d0;

    invoke-direct {v0, p1, p2}, Lkotlin/jvm/internal/d0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public g(LWf/r;)LWf/r;
    .locals 4
    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    move-object v0, p1

    check-cast v0, Lkotlin/jvm/internal/z0;

    new-instance v1, Lkotlin/jvm/internal/z0;

    invoke-interface {p1}, LWf/r;->E()LWf/f;

    move-result-object v2

    invoke-interface {p1}, LWf/r;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lkotlin/jvm/internal/z0;->r()LWf/r;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/jvm/internal/z0;->p()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v2, p1, v3, v0}, Lkotlin/jvm/internal/z0;-><init>(LWf/f;Ljava/util/List;LWf/r;I)V

    return-object v1
.end method

.method public h(Lkotlin/jvm/internal/W;)LWf/j;
    .locals 0

    return-object p1
.end method

.method public i(Lkotlin/jvm/internal/Y;)LWf/k;
    .locals 0

    return-object p1
.end method

.method public j(Lkotlin/jvm/internal/a0;)LWf/l;
    .locals 0

    return-object p1
.end method

.method public k(LWf/r;)LWf/r;
    .locals 4
    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    move-object v0, p1

    check-cast v0, Lkotlin/jvm/internal/z0;

    new-instance v1, Lkotlin/jvm/internal/z0;

    invoke-interface {p1}, LWf/r;->E()LWf/f;

    move-result-object v2

    invoke-interface {p1}, LWf/r;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lkotlin/jvm/internal/z0;->r()LWf/r;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/jvm/internal/z0;->p()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-direct {v1, v2, p1, v3, v0}, Lkotlin/jvm/internal/z0;-><init>(LWf/f;Ljava/util/List;LWf/r;I)V

    return-object v1
.end method

.method public l(LWf/r;LWf/r;)LWf/r;
    .locals 3
    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/z0;

    invoke-interface {p1}, LWf/r;->E()LWf/f;

    move-result-object v1

    invoke-interface {p1}, LWf/r;->getArguments()Ljava/util/List;

    move-result-object v2

    check-cast p1, Lkotlin/jvm/internal/z0;

    invoke-virtual {p1}, Lkotlin/jvm/internal/z0;->p()I

    move-result p1

    invoke-direct {v0, v1, v2, p2, p1}, Lkotlin/jvm/internal/z0;-><init>(LWf/f;Ljava/util/List;LWf/r;I)V

    return-object v0
.end method

.method public m(Lkotlin/jvm/internal/f0;)LWf/o;
    .locals 0

    return-object p1
.end method

.method public n(Lkotlin/jvm/internal/h0;)LWf/p;
    .locals 0

    return-object p1
.end method

.method public o(Lkotlin/jvm/internal/j0;)LWf/q;
    .locals 0

    return-object p1
.end method

.method public p(Lkotlin/jvm/internal/F;)Ljava/lang/String;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlin.jvm.functions."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public q(Lkotlin/jvm/internal/O;)Ljava/lang/String;
    .locals 0
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/o0;->p(Lkotlin/jvm/internal/F;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(LWf/s;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LWf/s;",
            "Ljava/util/List<",
            "LWf/r;",
            ">;)V"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    check-cast p1, Lkotlin/jvm/internal/x0;

    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/x0;->c(Ljava/util/List;)V

    return-void
.end method

.method public s(LWf/f;Ljava/util/List;Z)LWf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LWf/f;",
            "Ljava/util/List<",
            "LWf/t;",
            ">;Z)",
            "LWf/r;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/z0;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/jvm/internal/z0;-><init>(LWf/f;Ljava/util/List;Z)V

    return-object v0
.end method

.method public t(Ljava/lang/Object;Ljava/lang/String;LWf/u;Z)LWf/s;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/x0;

    invoke-direct {v0, p1, p2, p3, p4}, Lkotlin/jvm/internal/x0;-><init>(Ljava/lang/Object;Ljava/lang/String;LWf/u;Z)V

    return-object v0
.end method
