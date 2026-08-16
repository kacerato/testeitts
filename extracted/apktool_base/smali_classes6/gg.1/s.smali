.class public final synthetic Lgg/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,61:1\n514#2,6:62\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n*L\n37#1:62,6\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,61:1\n514#2,6:62\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n*L\n37#1:62,6\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(Lgg/E;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Deprecated in the favour of \'trySendBlocking\'. Consider handling the result of \'trySendBlocking\' explicitly and rethrow exception if necessary"
        replaceWith = .subannotation Lnf/g0;
            expression = "trySendBlocking(element)"
            imports = {}
        .end subannotation
    .end annotation

    invoke-interface {p0, p1}, Lgg/E;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgg/p;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lgg/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgg/s$a;-><init>(Lgg/E;Ljava/lang/Object;Lyf/f;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Leg/i;->g(Lyf/j;LMf/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final b(Lgg/E;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lgg/E;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lgg/E<",
            "-TE;>;TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p0, p1}, Lgg/E;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lgg/p$c;

    if-nez v1, :cond_0

    check-cast v0, Lnf/P0;

    sget-object p0, Lgg/p;->b:Lgg/p$b;

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p0, p1}, Lgg/p$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lgg/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgg/s$b;-><init>(Lgg/E;Ljava/lang/Object;Lyf/f;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Leg/i;->g(Lyf/j;LMf/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgg/p;

    invoke-virtual {p0}, Lgg/p;->o()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
