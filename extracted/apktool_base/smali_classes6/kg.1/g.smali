.class public abstract Lkg/g;
.super Lkg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lkg/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljg/i;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "TS;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
            "+TS;>;",
            "Lyf/j;",
            "I",
            "Lgg/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lkg/d;-><init>(Lyf/j;ILgg/i;)V

    iput-object p1, p0, Lkg/g;->e:Ljg/i;

    return-void
.end method

.method public static final synthetic m(Lkg/g;Ljg/j;Lyf/j;Lyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/g;->p(Ljg/j;Lyf/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lkg/g;Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkg/g<",
            "TS;TT;>;",
            "Ljg/j<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, Lkg/d;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p2}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    iget-object v1, p0, Lkg/d;->b:Lyf/j;

    invoke-static {v0, v1}, Leg/L;->e(Lyf/j;Lyf/j;)Lyf/j;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lkg/g;->q(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0

    :cond_1
    sget-object v2, Lyf/g;->J8:Lyf/g$b;

    invoke-interface {v1, v2}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v3

    invoke-interface {v0, v2}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v1, p2}, Lkg/g;->p(Ljg/j;Lyf/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, Lkg/d;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static synthetic o(Lkg/g;Lgg/B;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkg/g<",
            "TS;TT;>;",
            "Lgg/B<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkg/w;

    invoke-direct {v0, p1}, Lkg/w;-><init>(Lgg/E;)V

    invoke-virtual {p0, v0, p2}, Lkg/g;->q(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lkg/g;->n(Lkg/g;Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lgg/B;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgg/B;
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
            "Lgg/B<",
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

    invoke-static {p0, p1, p2}, Lkg/g;->o(Lkg/g;Lgg/B;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljg/j;Lyf/j;Lyf/f;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TT;>;",
            "Lyf/j;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p3}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {p1, v0}, Lkg/e;->a(Ljg/j;Lyf/j;)Ljg/j;

    move-result-object v2

    new-instance v4, Lkg/g$a;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lkg/g$a;-><init>(Lkg/g;Lyf/f;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lkg/e;->d(Lyf/j;Ljava/lang/Object;Ljava/lang/Object;LMf/p;Lyf/f;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public abstract q(Ljg/j;Lyf/f;)Ljava/lang/Object;
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
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkg/g;->e:Ljg/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkg/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
