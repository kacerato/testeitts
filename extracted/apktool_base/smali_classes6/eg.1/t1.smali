.class public final Leg/t1;
.super Lmg/O;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T::TU;>",
        "Lmg/O<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final f:J
    .annotation build LLf/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLyf/f;)V
    .locals 1
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lyf/f<",
            "-TU;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmg/O;-><init>(Lyf/j;Lyf/f;)V

    iput-wide p1, p0, Leg/t1;->f:J

    return-void
.end method


# virtual methods
.method public Y0()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Leg/a;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leg/t1;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    iget-wide v0, p0, Leg/t1;->f:J

    invoke-virtual {p0}, Leg/a;->getContext()Lyf/j;

    move-result-object v2

    invoke-static {v2}, Leg/c0;->d(Lyf/j;)Leg/b0;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Leg/u1;->a(JLeg/b0;Leg/K0;)Lkotlinx/coroutines/TimeoutCancellationException;

    move-result-object v0

    invoke-virtual {p0, v0}, Leg/R0;->j0(Ljava/lang/Throwable;)Z

    return-void
.end method
