.class public final Lkg/f$a$a;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1"
    f = "Merge.kt"
    i = {}
    l = {
        0x45
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg/f$a;->a(Ljg/i;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Leg/S;",
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

.field public final synthetic c:Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lrg/d;


# direct methods
.method public constructor <init>(Ljg/i;Lkg/w;Lrg/d;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/i<",
            "+TT;>;",
            "Lkg/w<",
            "TT;>;",
            "Lrg/d;",
            "Lyf/f<",
            "-",
            "Lkg/f$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkg/f$a$a;->c:Ljg/i;

    iput-object p2, p0, Lkg/f$a$a;->d:Lkg/w;

    iput-object p3, p0, Lkg/f$a$a;->e:Lrg/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 3
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

    new-instance p1, Lkg/f$a$a;

    iget-object v0, p0, Lkg/f$a$a;->c:Ljg/i;

    iget-object v1, p0, Lkg/f$a$a;->d:Lkg/w;

    iget-object v2, p0, Lkg/f$a$a;->e:Lrg/d;

    invoke-direct {p1, v0, v1, v2, p2}, Lkg/f$a$a;-><init>(Ljg/i;Lkg/w;Lrg/d;Lyf/f;)V

    return-object p1
.end method

.method public final invoke(Leg/S;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Leg/S;
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
            "Leg/S;",
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
    invoke-virtual {p0, p1, p2}, Lkg/f$a$a;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lkg/f$a$a;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lkg/f$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Leg/S;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lkg/f$a$a;->invoke(Leg/S;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkg/f$a$a;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lkg/f$a$a;->c:Ljg/i;

    iget-object v1, p0, Lkg/f$a$a;->d:Lkg/w;

    iput v2, p0, Lkg/f$a$a;->b:I

    invoke-interface {p1, v1, p0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lkg/f$a$a;->e:Lrg/d;

    invoke-interface {p1}, Lrg/d;->release()V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :goto_1
    iget-object v0, p0, Lkg/f$a$a;->e:Lrg/d;

    invoke-interface {v0}, Lrg/d;->release()V

    throw p1
.end method
