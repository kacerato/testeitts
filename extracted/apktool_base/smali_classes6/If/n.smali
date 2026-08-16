.class public final LIf/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXf/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXf/m<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/nio/file/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:[LIf/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;[LIf/p;)V
    .locals 1
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [LIf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIf/n;->a:Ljava/nio/file/Path;

    iput-object p2, p0, LIf/n;->b:[LIf/p;

    return-void
.end method

.method public static final synthetic c(LIf/n;)Z
    .locals 0

    invoke-virtual {p0}, LIf/n;->i()Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(LIf/n;)Z
    .locals 0

    invoke-virtual {p0}, LIf/n;->j()Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(LIf/n;)[Ljava/nio/file/LinkOption;
    .locals 0

    invoke-virtual {p0}, LIf/n;->k()[Ljava/nio/file/LinkOption;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(LIf/n;)Ljava/nio/file/Path;
    .locals 0

    iget-object p0, p0, LIf/n;->a:Ljava/nio/file/Path;

    return-object p0
.end method


# virtual methods
.method public final g()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, LIf/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LIf/n$a;-><init>(LIf/n;Lyf/f;)V

    invoke-static {v0}, LXf/q;->a(LMf/p;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, LIf/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LIf/n$b;-><init>(LIf/n;Lyf/f;)V

    invoke-static {v0}, LXf/q;->a(LMf/p;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, LIf/n;->b:[LIf/p;

    sget-object v1, LIf/p;->FOLLOW_LINKS:LIf/p;

    invoke-static {v0, v1}, Lpf/A;->B8([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, LIf/n;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LIf/n;->g()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LIf/n;->h()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, LIf/n;->b:[LIf/p;

    sget-object v1, LIf/p;->INCLUDE_DIRECTORIES:LIf/p;

    invoke-static {v0, v1}, Lpf/A;->B8([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final k()[Ljava/nio/file/LinkOption;
    .locals 2

    sget-object v0, LIf/j;->a:LIf/j;

    invoke-virtual {p0}, LIf/n;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, LIf/j;->a(Z)[Ljava/nio/file/LinkOption;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, LIf/n;->b:[LIf/p;

    sget-object v1, LIf/p;->BREADTH_FIRST:LIf/p;

    invoke-static {v0, v1}, Lpf/A;->B8([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final m(LXf/o;LIf/l;LIf/d;LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/o<",
            "-",
            "Ljava/nio/file/Path;",
            ">;",
            "LIf/l;",
            "LIf/d;",
            "LMf/l<",
            "-",
            "Ljava/util/List<",
            "LIf/l;",
            ">;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2}, LIf/l;->d()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p2}, LIf/l;->c()LIf/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, LIf/z;->Q(Ljava/nio/file/Path;)V

    :cond_0
    invoke-static {p0}, LIf/n;->e(LIf/n;)[Ljava/nio/file/LinkOption;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-static {p2}, LIf/o;->a(LIf/l;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, LIf/n;->d(LIf/n;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-virtual {p1, v0, p5}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/J;->e(I)V

    :cond_1
    invoke-static {p0}, LIf/n;->e(LIf/n;)[Ljava/nio/file/LinkOption;

    move-result-object p1

    array-length p5, p1

    invoke-static {p1, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    array-length p5, p1

    invoke-static {p1, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3, p2}, LIf/d;->c(LIf/l;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object p2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {p2}, [Ljava/nio/file/LinkOption;

    move-result-object p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-virtual {p1, v0, p5}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :cond_4
    :goto_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
