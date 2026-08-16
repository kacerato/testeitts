.class public final Ljg/S$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/S$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Lkotlin/jvm/internal/m0$a;

.field public final synthetic c:Ljg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "Ljg/M;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$a;Ljg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$a;",
            "Ljg/j<",
            "-",
            "Ljg/M;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/S$a$a;->b:Lkotlin/jvm/internal/m0$a;

    iput-object p2, p0, Ljg/S$a$a;->c:Ljg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILyf/f;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ljg/S$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/S$a$a$a;

    iget v1, v0, Ljg/S$a$a$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/S$a$a$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/S$a$a$a;

    invoke-direct {v0, p0, p2}, Ljg/S$a$a$a;-><init>(Ljg/S$a$a;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/S$a$a$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/S$a$a$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    if-lez p1, :cond_4

    iget-object p1, p0, Ljg/S$a$a;->b:Lkotlin/jvm/internal/m0$a;

    iget-boolean p2, p1, Lkotlin/jvm/internal/m0$a;->b:Z

    if-nez p2, :cond_4

    iput-boolean v3, p1, Lkotlin/jvm/internal/m0$a;->b:Z

    iget-object p1, p0, Ljg/S$a$a;->c:Ljg/j;

    sget-object p2, Ljg/M;->START:Ljg/M;

    iput v3, v0, Ljg/S$a$a$a;->d:I

    invoke-interface {p1, p2, v0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :cond_4
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Ljg/S$a$a;->a(ILyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
