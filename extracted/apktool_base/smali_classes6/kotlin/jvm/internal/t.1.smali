.class public final Lkotlin/jvm/internal/t;
.super Lkotlin/jvm/internal/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/e0<",
        "[C>;"
    }
.end annotation


# instance fields
.field public final d:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/e0;-><init>(I)V

    new-array p1, p1, [C

    iput-object p1, p0, Lkotlin/jvm/internal/t;->d:[C

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/t;->i([C)I

    move-result p1

    return p1
.end method

.method public final h(C)V
    .locals 3

    iget-object v0, p0, Lkotlin/jvm/internal/t;->d:[C

    invoke-virtual {p0}, Lkotlin/jvm/internal/e0;->b()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lkotlin/jvm/internal/e0;->e(I)V

    aput-char p1, v0, v1

    return-void
.end method

.method public i([C)I
    .locals 1
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    return p1
.end method

.method public final j()[C
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/t;->d:[C

    invoke-virtual {p0}, Lkotlin/jvm/internal/e0;->f()I

    move-result v1

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lkotlin/jvm/internal/e0;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method
