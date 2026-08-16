.class public final Leg/L$b;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leg/L;->a(Lyf/j;Lyf/j;Z)Lyf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/p<",
        "Lyf/j;",
        "Lyf/j$b;",
        "Lyf/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Lyf/j;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$h<",
            "Lyf/j;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Leg/L$b;->b:Lkotlin/jvm/internal/m0$h;

    iput-boolean p2, p0, Leg/L$b;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lyf/j;Lyf/j$b;)Lyf/j;
    .locals 4
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Leg/J;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Leg/L$b;->b:Lkotlin/jvm/internal/m0$h;

    iget-object v0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast v0, Lyf/j;

    invoke-interface {p2}, Lyf/j$b;->getKey()Lyf/j$c;

    move-result-object v1

    invoke-interface {v0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Leg/L$b;->c:Z

    check-cast p2, Leg/J;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Leg/J;->l()Leg/J;

    move-result-object p2

    :cond_1
    invoke-interface {p1, p2}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, p0, Leg/L$b;->b:Lkotlin/jvm/internal/m0$h;

    iget-object v2, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast v2, Lyf/j;

    invoke-interface {p2}, Lyf/j$b;->getKey()Lyf/j$c;

    move-result-object v3

    invoke-interface {v2, v3}, Lyf/j;->minusKey(Lyf/j$c;)Lyf/j;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p2, Leg/J;

    invoke-interface {p2, v0}, Leg/J;->L(Lyf/j$b;)Lyf/j;

    move-result-object p2

    invoke-interface {p1, p2}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyf/j;

    check-cast p2, Lyf/j$b;

    invoke-virtual {p0, p1, p2}, Leg/L$b;->b(Lyf/j;Lyf/j$b;)Lyf/j;

    move-result-object p1

    return-object p1
.end method
