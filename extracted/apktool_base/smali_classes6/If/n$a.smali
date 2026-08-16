.class public final LIf/n$a;
.super LBf/l;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlin.io.path.PathTreeWalk$bfsIterator$1"
    f = "PathTreeWalk.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xbf,
        0xc5
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "queue",
        "entriesReader",
        "pathNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "node$iv",
        "entriesReader$iv",
        "path$iv",
        "$i$f$yieldIfNeeded",
        "$this$iterator",
        "queue",
        "entriesReader",
        "pathNode",
        "this_$iv",
        "$this$yieldIfNeeded$iv",
        "node$iv",
        "entriesReader$iv",
        "path$iv",
        "$i$f$yieldIfNeeded"
    }
    nl = {
        0xc1,
        0xc7
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "I$0"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIf/n;->g()Ljava/util/Iterator;
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
        "Ljava/nio/file/Path;",
        ">;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n*L\n101#1:181,19\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nPathTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n+ 2 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk\n*L\n1#1,180:1\n44#2,19:181\n*S KotlinDebug\n*F\n+ 1 PathTreeWalk.kt\nkotlin/io/path/PathTreeWalk$bfsIterator$1\n*L\n101#1:181,19\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public k:I

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:LIf/n;


# direct methods
.method public constructor <init>(LIf/n;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIf/n;",
            "Lyf/f<",
            "-",
            "LIf/n$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LIf/n$a;->m:LIf/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LBf/l;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 2
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

    new-instance v0, LIf/n$a;

    iget-object v1, p0, LIf/n$a;->m:LIf/n;

    invoke-direct {v0, v1, p2}, LIf/n$a;-><init>(LIf/n;Lyf/f;)V

    iput-object p1, v0, LIf/n$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(LXf/o;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/o<",
            "-",
            "Ljava/nio/file/Path;",
            ">;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, LIf/n$a;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, LIf/n$a;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, LIf/n$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, LXf/o;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, LIf/n$a;->invoke(LXf/o;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, LIf/n$a;->l:Ljava/lang/Object;

    check-cast v0, LXf/o;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, LIf/n$a;->k:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, LIf/n$a;->i:Ljava/lang/Object;

    check-cast v2, Ljava/nio/file/Path;

    iget-object v2, p0, LIf/n$a;->h:Ljava/lang/Object;

    check-cast v2, LIf/d;

    iget-object v2, p0, LIf/n$a;->g:Ljava/lang/Object;

    check-cast v2, LIf/l;

    iget-object v2, p0, LIf/n$a;->f:Ljava/lang/Object;

    check-cast v2, LXf/o;

    iget-object v2, p0, LIf/n$a;->e:Ljava/lang/Object;

    check-cast v2, LIf/n;

    iget-object v2, p0, LIf/n$a;->d:Ljava/lang/Object;

    check-cast v2, LIf/l;

    iget-object v2, p0, LIf/n$a;->c:Ljava/lang/Object;

    check-cast v2, LIf/d;

    iget-object v5, p0, LIf/n$a;->b:Ljava/lang/Object;

    check-cast v5, Lpf/m;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, LIf/n$a;->i:Ljava/lang/Object;

    check-cast v2, Ljava/nio/file/Path;

    iget-object v5, p0, LIf/n$a;->h:Ljava/lang/Object;

    check-cast v5, LIf/d;

    iget-object v6, p0, LIf/n$a;->g:Ljava/lang/Object;

    check-cast v6, LIf/l;

    iget-object v7, p0, LIf/n$a;->f:Ljava/lang/Object;

    check-cast v7, LXf/o;

    iget-object v7, p0, LIf/n$a;->e:Ljava/lang/Object;

    check-cast v7, LIf/n;

    iget-object v8, p0, LIf/n$a;->d:Ljava/lang/Object;

    check-cast v8, LIf/l;

    iget-object v8, p0, LIf/n$a;->c:Ljava/lang/Object;

    check-cast v8, LIf/d;

    iget-object v9, p0, LIf/n$a;->b:Ljava/lang/Object;

    check-cast v9, Lpf/m;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lpf/m;

    invoke-direct {p1}, Lpf/m;-><init>()V

    new-instance v2, LIf/d;

    iget-object v5, p0, LIf/n$a;->m:LIf/n;

    invoke-static {v5}, LIf/n;->c(LIf/n;)Z

    move-result v5

    invoke-direct {v2, v5}, LIf/d;-><init>(Z)V

    new-instance v5, LIf/l;

    iget-object v6, p0, LIf/n$a;->m:LIf/n;

    invoke-static {v6}, LIf/n;->f(LIf/n;)Ljava/nio/file/Path;

    move-result-object v6

    iget-object v7, p0, LIf/n$a;->m:LIf/n;

    invoke-static {v7}, LIf/n;->f(LIf/n;)Ljava/nio/file/Path;

    move-result-object v7

    iget-object v8, p0, LIf/n$a;->m:LIf/n;

    invoke-static {v8}, LIf/n;->e(LIf/n;)[Ljava/nio/file/LinkOption;

    move-result-object v8

    invoke-static {v7, v8}, LIf/o;->b(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, LIf/l;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;LIf/l;)V

    invoke-virtual {p1, v5}, Lpf/m;->addLast(Ljava/lang/Object;)V

    move-object v5, p1

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v5}, Lpf/m;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, LIf/l;

    iget-object v7, p0, LIf/n$a;->m:LIf/n;

    invoke-virtual {v6}, LIf/l;->d()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v6}, LIf/l;->c()LIf/l;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {p1}, LIf/z;->Q(Ljava/nio/file/Path;)V

    :cond_4
    invoke-static {v7}, LIf/n;->e(LIf/n;)[Ljava/nio/file/LinkOption;

    move-result-object v8

    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/nio/file/LinkOption;

    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v8}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_9

    invoke-static {v6}, LIf/o;->a(LIf/l;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v7}, LIf/n;->d(LIf/n;)Z

    move-result v8

    if-eqz v8, :cond_6

    iput-object v0, p0, LIf/n$a;->l:Ljava/lang/Object;

    iput-object v5, p0, LIf/n$a;->b:Ljava/lang/Object;

    iput-object v2, p0, LIf/n$a;->c:Ljava/lang/Object;

    invoke-static {v6}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, LIf/n$a;->d:Ljava/lang/Object;

    iput-object v7, p0, LIf/n$a;->e:Ljava/lang/Object;

    invoke-static {v0}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, LIf/n$a;->f:Ljava/lang/Object;

    iput-object v6, p0, LIf/n$a;->g:Ljava/lang/Object;

    iput-object v2, p0, LIf/n$a;->h:Ljava/lang/Object;

    iput-object p1, p0, LIf/n$a;->i:Ljava/lang/Object;

    iput v9, p0, LIf/n$a;->j:I

    iput v4, p0, LIf/n$a;->k:I

    invoke-virtual {v0, p1, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, v2

    move-object v9, v5

    move-object v2, p1

    move-object v5, v8

    :goto_1
    move-object p1, v2

    move-object v2, v5

    move-object v5, v9

    goto :goto_2

    :cond_6
    move-object v8, v2

    :goto_2
    invoke-static {v7}, LIf/n;->e(LIf/n;)[Ljava/nio/file/LinkOption;

    move-result-object v7

    array-length v9, v7

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/nio/file/LinkOption;

    array-length v9, v7

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v7}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v2, v6}, LIf/d;->c(LIf/l;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v5, p1}, Lpf/m;->addAll(Ljava/util/Collection;)Z

    :cond_7
    move-object v2, v8

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v8, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v8}, [Ljava/nio/file/LinkOption;

    move-result-object v8

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v8}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    if-eqz v8, :cond_3

    iput-object v0, p0, LIf/n$a;->l:Ljava/lang/Object;

    iput-object v5, p0, LIf/n$a;->b:Ljava/lang/Object;

    iput-object v2, p0, LIf/n$a;->c:Ljava/lang/Object;

    invoke-static {v6}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, LIf/n$a;->d:Ljava/lang/Object;

    invoke-static {v7}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, LIf/n$a;->e:Ljava/lang/Object;

    invoke-static {v0}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, LIf/n$a;->f:Ljava/lang/Object;

    invoke-static {v6}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, LIf/n$a;->g:Ljava/lang/Object;

    invoke-static {v2}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, LIf/n$a;->h:Ljava/lang/Object;

    invoke-static {p1}, LBf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, LIf/n$a;->i:Ljava/lang/Object;

    iput v9, p0, LIf/n$a;->j:I

    iput v3, p0, LIf/n$a;->k:I

    invoke-virtual {v0, p1, p0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_a
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
