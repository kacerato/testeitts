.class public final Lag/v$e;
.super LBf/l;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlin.text.Regex$splitToSequence$1"
    f = "Regex.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x128,
        0x130,
        0x134
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "matcher",
        "$this$sequence",
        "matcher",
        "nextStart",
        "splitCount",
        "$this$sequence",
        "matcher",
        "nextStart",
        "splitCount"
    }
    nl = {
        0x129,
        0x131,
        0x135
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag/v;->v(Ljava/lang/CharSequence;I)LXf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/l;",
        "LMf/p<",
        "LXf/o<",
        "-",
        "Ljava/lang/String;",
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
.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lag/v;

.field public final synthetic h:Ljava/lang/CharSequence;

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Lag/v;Ljava/lang/CharSequence;ILyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag/v;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lyf/f<",
            "-",
            "Lag/v$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lag/v$e;->g:Lag/v;

    iput-object p2, p0, Lag/v$e;->h:Ljava/lang/CharSequence;

    iput p3, p0, Lag/v$e;->i:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LBf/l;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 4
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

    new-instance v0, Lag/v$e;

    iget-object v1, p0, Lag/v$e;->g:Lag/v;

    iget-object v2, p0, Lag/v$e;->h:Ljava/lang/CharSequence;

    iget v3, p0, Lag/v$e;->i:I

    invoke-direct {v0, v1, v2, v3, p2}, Lag/v$e;-><init>(Lag/v;Ljava/lang/CharSequence;ILyf/f;)V

    iput-object p1, v0, Lag/v$e;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(LXf/o;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/o<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lag/v$e;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lag/v$e;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lag/v$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, LXf/o;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lag/v$e;->invoke(LXf/o;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lag/v$e;->f:Ljava/lang/Object;

    check-cast v0, LXf/o;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lag/v$e;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lag/v$e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/regex/Matcher;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v2, p0, Lag/v$e;->d:I

    iget-object v6, p0, Lag/v$e;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/regex/Matcher;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lag/v$e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/regex/Matcher;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lag/v$e;->g:Lag/v;

    invoke-static {p1}, Lag/v;->b(Lag/v;)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v2, p0, Lag/v$e;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iget v2, p0, Lag/v$e;->i:I

    if-eq v2, v5, :cond_9

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    move-object v6, p1

    move p1, v2

    :goto_0
    iget-object v7, p0, Lag/v$e;->h:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-interface {v7, v2, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v0, p0, Lag/v$e;->f:Ljava/lang/Object;

    iput-object v6, p0, Lag/v$e;->b:Ljava/lang/Object;

    iput v2, p0, Lag/v$e;->c:I

    iput p1, p0, Lag/v$e;->d:I

    iput v4, p0, Lag/v$e;->e:I

    invoke-virtual {v0, v7, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move v2, p1

    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    add-int/2addr v2, v5

    iget v7, p0, Lag/v$e;->i:I

    sub-int/2addr v7, v5

    if-eq v2, v7, :cond_7

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    move v9, v2

    move v2, p1

    move p1, v9

    goto :goto_0

    :cond_7
    :goto_2
    iget-object v4, p0, Lag/v$e;->h:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v4, p1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lag/v$e;->f:Ljava/lang/Object;

    invoke-static {v6}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lag/v$e;->b:Ljava/lang/Object;

    iput p1, p0, Lag/v$e;->c:I

    iput v2, p0, Lag/v$e;->d:I

    iput v3, p0, Lag/v$e;->e:I

    invoke-virtual {v0, v4, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :cond_9
    :goto_4
    iget-object v2, p0, Lag/v$e;->h:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lag/v$e;->f:Ljava/lang/Object;

    invoke-static {p1}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lag/v$e;->b:Ljava/lang/Object;

    iput v5, p0, Lag/v$e;->e:I

    invoke-virtual {v0, v2, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_5
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
