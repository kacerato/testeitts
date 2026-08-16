.class public final Lag/r$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lag/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lag/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lag/r;)V
    .locals 1
    .param p1    # Lag/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "match"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag/r$b;->a:Lag/r;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-virtual {p0}, Lag/r$b;->k()Lag/r;

    move-result-object v0

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lag/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lag/r$b;->a:Lag/r;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lag/r$b;->a:Lag/r;

    invoke-interface {v0}, Lag/r;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lag/r$b;->a:Lag/r;

    invoke-interface {v1}, Lag/r;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
