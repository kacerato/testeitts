.class public final Lgg/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgg/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lgg/n;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .annotation build LLf/j;
        name = "next"
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.3.0, binary compatibility with versions <= 1.2.x"
    .end annotation

    instance-of v0, p1, Lgg/n$a$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgg/n$a$a;

    iget v1, v0, Lgg/n$a$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lgg/n$a$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lgg/n$a$a;

    invoke-direct {v0, p1}, Lgg/n$a$a;-><init>(Lyf/f;)V

    :goto_0
    iget-object p1, v0, Lgg/n$a$a;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lgg/n$a$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lgg/n$a$a;->b:Ljava/lang/Object;

    check-cast p0, Lgg/n;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iput-object p0, v0, Lgg/n$a$a;->b:Ljava/lang/Object;

    iput v3, v0, Lgg/n$a$a;->d:I

    invoke-interface {p0, v0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string p1, "Channel was closed"

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
