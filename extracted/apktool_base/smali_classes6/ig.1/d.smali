.class public final Lig/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lnf/f0;
.end annotation


# instance fields
.field public final a:Lyf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:LBf/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:LBf/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lig/e;Lyf/j;)V
    .locals 2
    .param p1    # Lig/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lig/d;->a:Lyf/j;

    invoke-virtual {p1}, Lig/e;->d()Lig/m;

    move-result-object p2

    iput-object p2, p0, Lig/d;->b:LBf/e;

    iget-wide v0, p1, Lig/e;->b:J

    iput-wide v0, p0, Lig/d;->c:J

    invoke-virtual {p1}, Lig/e;->e()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lig/d;->d:Ljava/util/List;

    invoke-virtual {p1}, Lig/e;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lig/d;->e:Ljava/lang/String;

    iget-object p2, p1, Lig/e;->lastObservedThread:Ljava/lang/Thread;

    iput-object p2, p0, Lig/d;->f:Ljava/lang/Thread;

    invoke-virtual {p1}, Lig/e;->f()LBf/e;

    move-result-object p2

    iput-object p2, p0, Lig/d;->g:LBf/e;

    invoke-virtual {p1}, Lig/e;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lig/d;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lig/d;->a:Lyf/j;

    return-object v0
.end method

.method public final b()LBf/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/d;->b:LBf/e;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lig/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()LBf/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/d;->g:LBf/e;

    return-object v0
.end method

.method public final e()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/d;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lig/d;->c:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lig/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation build LLf/j;
        name = "lastObservedStackTrace"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lig/d;->h:Ljava/util/List;

    return-object v0
.end method
