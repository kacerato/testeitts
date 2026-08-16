.class public final Lkg/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j;


# instance fields
.field public final b:Ljava/lang/Throwable;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic c:Lyf/j;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lyf/j;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkg/l;->b:Ljava/lang/Throwable;

    iput-object p2, p0, Lkg/l;->c:Lyf/j;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lkg/l;->c:Lyf/j;

    invoke-interface {v0, p1, p2}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lyf/j$c;)Lyf/j$b;
    .locals 1
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

    iget-object v0, p0, Lkg/l;->c:Lyf/j;

    invoke-interface {v0, p1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lyf/j$c;)Lyf/j;
    .locals 1
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

    iget-object v0, p0, Lkg/l;->c:Lyf/j;

    invoke-interface {v0, p1}, Lyf/j;->minusKey(Lyf/j$c;)Lyf/j;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lyf/j;)Lyf/j;
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkg/l;->c:Lyf/j;

    invoke-interface {v0, p1}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1
.end method
