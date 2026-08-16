.class public final Ljg/A$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/A;->j(Ljg/i;LMf/q;)Ljg/i;
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
.field public final synthetic b:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "TT;TT;",
            "Lyf/f<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Ljg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$h;LMf/q;Ljg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;",
            "LMf/q<",
            "-TT;-TT;-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljg/j<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/A$l;->b:Lkotlin/jvm/internal/m0$h;

    iput-object p2, p0, Ljg/A$l;->c:LMf/q;

    iput-object p3, p0, Ljg/A$l;->d:Ljg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p2, Ljg/A$l$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/A$l$a;

    iget v1, v0, Ljg/A$l$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/A$l$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/A$l$a;

    invoke-direct {v0, p0, p2}, Ljg/A$l$a;-><init>(Ljg/A$l;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/A$l$a;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/A$l$a;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ljg/A$l$a;->c:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/m0$h;

    iget-object v2, v0, Ljg/A$l$a;->b:Ljava/lang/Object;

    check-cast v2, Ljg/A$l;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Ljg/A$l;->b:Lkotlin/jvm/internal/m0$h;

    iget-object v2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object v5, Lkg/s;->a:Lmg/T;

    if-ne v2, v5, :cond_4

    move-object v2, p0

    goto :goto_2

    :cond_4
    iget-object v5, p0, Ljg/A$l;->c:LMf/q;

    iput-object p0, v0, Ljg/A$l$a;->b:Ljava/lang/Object;

    iput-object p2, v0, Ljg/A$l$a;->c:Ljava/lang/Object;

    iput v4, v0, Ljg/A$l$a;->f:I

    invoke-interface {v5, v2, p1, v0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_1
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_2
    iput-object p1, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    iget-object p1, v2, Ljg/A$l;->d:Ljg/j;

    iget-object p2, v2, Ljg/A$l;->b:Lkotlin/jvm/internal/m0$h;

    iget-object p2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Ljg/A$l$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Ljg/A$l$a;->c:Ljava/lang/Object;

    iput v3, v0, Ljg/A$l$a;->f:I

    invoke-interface {p1, p2, v0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
