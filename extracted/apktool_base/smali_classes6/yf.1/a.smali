.class public abstract Lyf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j$b;


# annotations
.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# instance fields
.field private final key:Lyf/j$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j$c;)V
    .locals 1
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf/a;->key:Lyf/j$c;

    return-void
.end method


# virtual methods
.method public bridge fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lyf/j$b$a;->a(Lyf/j$b;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge get(Lyf/j$c;)Lyf/j$b;
    .locals 0
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

    invoke-static {p0, p1}, Lyf/j$b$a;->b(Lyf/j$b;Lyf/j$c;)Lyf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lyf/j$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyf/a;->key:Lyf/j$c;

    return-object v0
.end method

.method public bridge minusKey(Lyf/j$c;)Lyf/j;
    .locals 0
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

    invoke-static {p0, p1}, Lyf/j$b$a;->c(Lyf/j$b;Lyf/j$c;)Lyf/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge plus(Lyf/j;)Lyf/j;
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lyf/j$b$a;->d(Lyf/j$b;Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1
.end method
