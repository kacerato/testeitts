.class public Lmg/O;
.super Leg/a;
.source "SourceFile"

# interfaces
.implements LBf/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Leg/a<",
        "TT;>;",
        "LBf/e;"
    }
.end annotation


# instance fields
.field public final e:Lyf/f;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;Lyf/f;)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "Lyf/f<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Leg/a;-><init>(Lyf/j;ZZ)V

    iput-object p2, p0, Lmg/O;->e:Lyf/f;

    return-void
.end method


# virtual methods
.method public final P0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g0(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmg/O;->e:Lyf/f;

    invoke-static {v0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v0

    iget-object v1, p0, Lmg/O;->e:Lyf/f;

    invoke-static {p1, v1}, Leg/I;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lmg/m;->e(Lyf/f;Ljava/lang/Object;LMf/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final getCallerFrame()LBf/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lmg/O;->e:Lyf/f;

    instance-of v1, v0, LBf/e;

    if-eqz v1, :cond_0

    check-cast v0, LBf/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public x1(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lmg/O;->e:Lyf/f;

    invoke-static {p1, v0}, Leg/I;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
