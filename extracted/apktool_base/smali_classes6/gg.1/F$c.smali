.class public final Lgg/F$c;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.TickerChannelsKt$ticker$3"
    f = "TickerChannels.kt"
    i = {}
    l = {
        0x48,
        0x49
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/F;->e(JJLyf/j;Lgg/G;)Lgg/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgg/F$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Lgg/B<",
        "-",
        "Lnf/P0;",
        ">;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lgg/G;

.field public final synthetic e:J

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Lgg/G;JJLyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/G;",
            "JJ",
            "Lyf/f<",
            "-",
            "Lgg/F$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/F$c;->d:Lgg/G;

    iput-wide p2, p0, Lgg/F$c;->e:J

    iput-wide p4, p0, Lgg/F$c;->f:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lyf/f<",
            "*>;)",
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lgg/F$c;

    iget-object v1, p0, Lgg/F$c;->d:Lgg/G;

    iget-wide v2, p0, Lgg/F$c;->e:J

    iget-wide v4, p0, Lgg/F$c;->f:J

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lgg/F$c;-><init>(Lgg/G;JJLyf/f;)V

    iput-object p1, v7, Lgg/F$c;->c:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgg/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/B<",
            "-",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lgg/F$c;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lgg/F$c;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lgg/F$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgg/B;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lgg/F$c;->invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lgg/F$c;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lgg/F$c;->c:Ljava/lang/Object;

    check-cast p1, Lgg/B;

    iget-object v1, p0, Lgg/F$c;->d:Lgg/G;

    sget-object v4, Lgg/F$c$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lgg/F$c;->e:J

    iget-wide v6, p0, Lgg/F$c;->f:J

    invoke-interface {p1}, Lgg/B;->getChannel()Lgg/E;

    move-result-object v8

    iput v2, p0, Lgg/F$c;->b:I

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Lgg/F;->a(JJLgg/E;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_4
    iget-wide v1, p0, Lgg/F$c;->e:J

    iget-wide v4, p0, Lgg/F$c;->f:J

    invoke-interface {p1}, Lgg/B;->getChannel()Lgg/E;

    move-result-object p1

    iput v3, p0, Lgg/F$c;->b:I

    move-wide v3, v4

    move-object v5, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lgg/F;->b(JJLgg/E;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
