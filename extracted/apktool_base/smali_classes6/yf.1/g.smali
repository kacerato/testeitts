.class public interface abstract Lyf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyf/g$a;,
        Lyf/g$b;
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# static fields
.field public static final J8:Lyf/g$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyf/g$b;->b:Lyf/g$b;

    sput-object v0, Lyf/g;->J8:Lyf/g$b;

    return-void
.end method


# virtual methods
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

.method public abstract interceptContinuation(Lyf/f;)Lyf/f;
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/f<",
            "-TT;>;)",
            "Lyf/f<",
            "TT;>;"
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

.method public abstract releaseInterceptedContinuation(Lyf/f;)V
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "*>;)V"
        }
    .end annotation
.end method
