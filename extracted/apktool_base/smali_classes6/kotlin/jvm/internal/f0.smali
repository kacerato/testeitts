.class public abstract Lkotlin/jvm/internal/f0;
.super Lkotlin/jvm/internal/l0;
.source "SourceFile"

# interfaces
.implements LWf/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/l0;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/l0;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/l0;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()LWf/n$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/f0;->c()LWf/o$a;

    move-result-object v0

    return-object v0
.end method

.method public c()LWf/o$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->b()LWf/n;

    move-result-object v0

    check-cast v0, LWf/o;

    invoke-interface {v0}, LWf/o;->c()LWf/o$a;

    move-result-object v0

    return-object v0
.end method

.method public computeReflected()LWf/c;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->t(Lkotlin/jvm/internal/f0;)LWf/o;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/l0;->b()LWf/n;

    move-result-object v0

    check-cast v0, LWf/o;

    invoke-interface {v0}, LWf/o;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, LWf/o;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
