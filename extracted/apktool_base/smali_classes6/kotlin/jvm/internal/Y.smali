.class public abstract Lkotlin/jvm/internal/Y;
.super Lkotlin/jvm/internal/c0;
.source "SourceFile"

# interfaces
.implements LWf/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/c0;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/c0;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/c0;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()LWf/i$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/Y;->a()LWf/k$a;

    move-result-object v0

    return-object v0
.end method

.method public a()LWf/k$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->b()LWf/n;

    move-result-object v0

    check-cast v0, LWf/k;

    invoke-interface {v0}, LWf/k;->a()LWf/k$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()LWf/n$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/Y;->c()LWf/p$a;

    move-result-object v0

    return-object v0
.end method

.method public c()LWf/p$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->b()LWf/n;

    move-result-object v0

    check-cast v0, LWf/k;

    invoke-interface {v0}, LWf/p;->c()LWf/p$a;

    move-result-object v0

    return-object v0
.end method

.method public computeReflected()LWf/c;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->k(Lkotlin/jvm/internal/Y;)LWf/k;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->b()LWf/n;

    move-result-object v0

    check-cast v0, LWf/k;

    invoke-interface {v0, p1}, LWf/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, LWf/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
