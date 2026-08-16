.class public final Leg/N$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Leg/N;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;
    .locals 0
    .param p0    # Leg/N;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/N;",
            "TR;",
            "LMf/p<",
            "-TR;-",
            "Lyf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lyf/j$b$a;->a(Lyf/j$b;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Leg/N;Lyf/j$c;)Lyf/j$b;
    .locals 0
    .param p0    # Leg/N;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lyf/j$b;",
            ">(",
            "Leg/N;",
            "Lyf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lyf/j$b$a;->b(Lyf/j$b;Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Leg/N;Lyf/j$c;)Lyf/j;
    .locals 0
    .param p0    # Leg/N;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/N;",
            "Lyf/j$c<",
            "*>;)",
            "Lyf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lyf/j$b$a;->c(Lyf/j$b;Lyf/j$c;)Lyf/j;

    move-result-object p0

    return-object p0
.end method

.method public static d(Leg/N;Lyf/j;)Lyf/j;
    .locals 0
    .param p0    # Leg/N;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lyf/j$b$a;->d(Lyf/j$b;Lyf/j;)Lyf/j;

    move-result-object p0

    return-object p0
.end method
