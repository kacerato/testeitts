.class public final Lig/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lnf/f0;
.end annotation


# instance fields
.field public final b:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
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

.field public final i:J


# direct methods
.method public constructor <init>(Lig/e;Lyf/j;)V
    .locals 4
    .param p1    # Lig/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Leg/P;->c:Leg/P$a;

    invoke-interface {p2, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    check-cast v0, Leg/P;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg/P;->v()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lig/j;->b:Ljava/lang/Long;

    sget-object v0, Lyf/g;->J8:Lyf/g$b;

    invoke-interface {p2, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    check-cast v0, Lyf/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lig/j;->c:Ljava/lang/String;

    sget-object v0, Leg/Q;->c:Leg/Q$a;

    invoke-interface {p2, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p2

    check-cast p2, Leg/Q;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Leg/Q;->v()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v1

    :goto_2
    iput-object p2, p0, Lig/j;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lig/e;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lig/j;->e:Ljava/lang/String;

    iget-object p2, p1, Lig/e;->lastObservedThread:Ljava/lang/Thread;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    move-object p2, v1

    :goto_3
    iput-object p2, p0, Lig/j;->f:Ljava/lang/String;

    iget-object p2, p1, Lig/e;->lastObservedThread:Ljava/lang/Thread;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iput-object v1, p0, Lig/j;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lig/e;->h()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lig/j;->h:Ljava/util/List;

    iget-wide p1, p1, Lig/e;->b:J

    iput-wide p1, p0, Lig/j;->i:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/j;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/j;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lig/j;->h:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lig/j;->i:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lig/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/j;->d:Ljava/lang/String;

    return-object v0
.end method
