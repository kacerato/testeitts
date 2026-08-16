.class public final Lkg/f;
.super Lkg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkg/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "Ljg/i<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(Ljg/i;ILyf/j;ILgg/i;)V
    .locals 0
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lgg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/i<",
            "+",
            "Ljg/i<",
            "+TT;>;>;I",
            "Lyf/j;",
            "I",
            "Lgg/i;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p3, p4, p5}, Lkg/d;-><init>(Lyf/j;ILgg/i;)V

    .line 5
    iput-object p1, p0, Lkg/f;->e:Ljg/i;

    .line 6
    iput p2, p0, Lkg/f;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljg/i;ILyf/j;ILgg/i;ILkotlin/jvm/internal/x;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 1
    sget-object p3, Lyf/l;->b:Lyf/l;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, -0x2

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 2
    sget-object p5, Lgg/i;->SUSPEND:Lgg/i;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lkg/f;-><init>(Ljg/i;ILyf/j;ILgg/i;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "concurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkg/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Lgg/B;Lyf/f;)Ljava/lang/Object;
    .locals 5
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

    iget v0, p0, Lkg/f;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lrg/f;->b(IIILjava/lang/Object;)Lrg/d;

    move-result-object v0

    new-instance v1, Lkg/w;

    invoke-direct {v1, p1}, Lkg/w;-><init>(Lgg/E;)V

    invoke-interface {p2}, Lyf/f;->getContext()Lyf/j;

    move-result-object v2

    sget-object v3, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {v2, v3}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v2

    check-cast v2, Leg/K0;

    iget-object v3, p0, Lkg/f;->e:Ljg/i;

    new-instance v4, Lkg/f$a;

    invoke-direct {v4, v2, v0, p1, v1}, Lkg/f$a;-><init>(Leg/K0;Lrg/d;Lgg/B;Lkg/w;)V

    invoke-interface {v3, v4, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public g(Lyf/j;ILgg/i;)Lkg/d;
    .locals 7
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

    new-instance v6, Lkg/f;

    iget-object v1, p0, Lkg/f;->e:Ljg/i;

    iget v2, p0, Lkg/f;->f:I

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkg/f;-><init>(Ljg/i;ILyf/j;ILgg/i;)V

    return-object v6
.end method

.method public l(Leg/S;)Lgg/D;
    .locals 3
    .param p1    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/S;",
            ")",
            "Lgg/D<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkg/d;->b:Lyf/j;

    iget v1, p0, Lkg/d;->c:I

    invoke-virtual {p0}, Lkg/d;->j()LMf/p;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lgg/z;->c(Leg/S;Lyf/j;ILMf/p;)Lgg/D;

    move-result-object p1

    return-object p1
.end method
