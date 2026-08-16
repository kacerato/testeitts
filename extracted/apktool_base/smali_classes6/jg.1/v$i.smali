.class public final Ljg/v$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/v;->g(Ljg/i;I)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljg/j;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/m0$f;

.field public final synthetic c:I

.field public final synthetic d:Ljg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$f;ILjg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$f;",
            "I",
            "Ljg/j<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/v$i;->b:Lkotlin/jvm/internal/m0$f;

    iput p2, p0, Ljg/v$i;->c:I

    iput-object p3, p0, Ljg/v$i;->d:Ljg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ljg/v$i$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/v$i$a;

    iget v1, v0, Ljg/v$i$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/v$i$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/v$i$a;

    invoke-direct {v0, p0, p2}, Ljg/v$i$a;-><init>(Ljg/v$i;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/v$i$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/v$i$a;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Ljg/v$i;->b:Lkotlin/jvm/internal/m0$f;

    iget v2, p2, Lkotlin/jvm/internal/m0$f;->b:I

    add-int/2addr v2, v4

    iput v2, p2, Lkotlin/jvm/internal/m0$f;->b:I

    iget p2, p0, Ljg/v$i;->c:I

    if-ge v2, p2, :cond_5

    iget-object p2, p0, Ljg/v$i;->d:Ljg/j;

    iput v4, v0, Ljg/v$i$a;->d:I

    invoke-interface {p2, p1, v0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :cond_5
    iget-object p2, p0, Ljg/v$i;->d:Ljg/j;

    iput v3, v0, Ljg/v$i$a;->d:I

    invoke-static {p2, p1, v0}, Ljg/v;->a(Ljg/j;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
