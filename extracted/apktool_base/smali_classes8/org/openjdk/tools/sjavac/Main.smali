.class public Lorg/openjdk/tools/sjavac/Main;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Main;->lambda$go$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static go([Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/sjavac/h;

    invoke-direct {v1}, Lorg/openjdk/tools/sjavac/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/server/ServerMain;->run([Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/openjdk/tools/sjavac/client/ClientMain;->run([Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$go$0(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/options/Option;->STARTSERVER:Lorg/openjdk/tools/sjavac/options/Option;

    iget-object v0, v0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/Main;->go([Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
