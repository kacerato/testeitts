.class public interface abstract Lyf/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyf/j$b$a;
    }
.end annotation


# virtual methods
.method public abstract fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LMf/p<",
            "-TR;-",
            "Lyf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract get(Lyf/j$c;)Lyf/j$b;
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lyf/j$b;",
            ">(",
            "Lyf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getKey()Lyf/j$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract minusKey(Lyf/j$c;)Lyf/j;
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j$c<",
            "*>;)",
            "Lyf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
