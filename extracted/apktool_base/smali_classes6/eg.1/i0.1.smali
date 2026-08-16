.class public final Leg/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final b:Leg/M;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/M;)V
    .locals 0
    .param p1    # Leg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leg/i0;->b:Leg/M;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Leg/i0;->b:Leg/M;

    sget-object v1, Lyf/l;->b:Lyf/l;

    invoke-virtual {v0, v1}, Leg/M;->isDispatchNeeded(Lyf/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leg/i0;->b:Leg/M;

    invoke-virtual {v0, v1, p1}, Leg/M;->dispatch(Lyf/j;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Leg/i0;->b:Leg/M;

    invoke-virtual {v0}, Leg/M;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
