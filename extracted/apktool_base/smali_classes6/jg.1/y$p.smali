.class public final Ljg/y$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/y;->i(Ljg/i;LMf/q;Lyf/f;)Ljava/lang/Object;
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
            "TS;TT;",
            "Lyf/f<",
            "-TS;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$h;LMf/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;",
            "LMf/q<",
            "-TS;-TT;-",
            "Lyf/f<",
            "-TS;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/y$p;->b:Lkotlin/jvm/internal/m0$h;

    iput-object p2, p0, Ljg/y$p;->c:LMf/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Ljg/y$p$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/y$p$a;

    iget v1, v0, Ljg/y$p$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$p$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$p$a;

    invoke-direct {v0, p0, p2}, Ljg/y$p$a;-><init>(Ljg/y$p;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/y$p$a;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$p$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ljg/y$p$a;->b:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/m0$h;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Ljg/y$p;->b:Lkotlin/jvm/internal/m0$h;

    iget-object v2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object v4, Lkg/s;->a:Lmg/T;

    if-eq v2, v4, :cond_4

    iget-object v4, p0, Ljg/y$p;->c:LMf/q;

    iput-object p2, v0, Ljg/y$p$a;->b:Ljava/lang/Object;

    iput v3, v0, Ljg/y$p$a;->e:I

    invoke-interface {v4, v2, p1, v0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :cond_4
    iput-object p1, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
