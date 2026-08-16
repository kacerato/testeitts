.class public final Lkg/h;
.super Lkg/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkg/g<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljg/i;Lyf/j;ILgg/i;)V
    .locals 0
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lgg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/i<",
            "+TT;>;",
            "Lyf/j;",
            "I",
            "Lgg/i;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lkg/g;-><init>(Ljg/i;Lyf/j;ILgg/i;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljg/i;Lyf/j;ILgg/i;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Lyf/l;->b:Lyf/l;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lgg/i;->SUSPEND:Lgg/i;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lkg/h;-><init>(Ljg/i;Lyf/j;ILgg/i;)V

    return-void
.end method


# virtual methods
.method public g(Lyf/j;ILgg/i;)Lkg/d;
    .locals 2
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "I",
            "Lgg/i;",
            ")",
            "Lkg/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkg/h;

    iget-object v1, p0, Lkg/g;->e:Ljg/i;

    invoke-direct {v0, v1, p1, p2, p3}, Lkg/h;-><init>(Ljg/i;Lyf/j;ILgg/i;)V

    return-object v0
.end method

.method public i()Ljg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkg/g;->e:Ljg/i;

    return-object v0
.end method

.method public q(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkg/g;->e:Ljg/i;

    invoke-interface {v0, p1, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
