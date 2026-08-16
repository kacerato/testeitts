.class public abstract Leg/a;
.super Leg/R0;
.source "SourceFile"

# interfaces
.implements Leg/K0;
.implements Lyf/f;
.implements Leg/S;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Leg/R0;",
        "Leg/K0;",
        "Lyf/f<",
        "TT;>;",
        "Leg/S;"
    }
.end annotation

.annotation build Leg/F0;
.end annotation


# instance fields
.field public final d:Lyf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;ZZ)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Leg/R0;-><init>(Z)V

    if-eqz p2, :cond_0

    sget-object p2, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p1, p2}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p2

    check-cast p2, Leg/K0;

    invoke-virtual {p0, p2}, Leg/R0;->M0(Leg/K0;)V

    :cond_0
    invoke-interface {p1, p0}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p1

    iput-object p1, p0, Leg/a;->d:Lyf/j;

    return-void
.end method

.method public static synthetic y1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public A1(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final B1(Leg/U;Ljava/lang/Object;LMf/p;)V
    .locals 0
    .param p1    # Leg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/U;",
            "TR;",
            "LMf/p<",
            "-TR;-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p3, p2, p0}, Leg/U;->c(LMf/p;Ljava/lang/Object;Lyf/f;)V

    return-void
.end method

.method public final L0(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Leg/a;->d:Lyf/j;

    invoke-static {v0, p1}, Leg/O;->b(Lyf/j;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Y0()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Leg/a;->d:Lyf/j;

    invoke-static {v0}, Leg/L;->b(Lyf/j;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Leg/R0;->Y0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Leg/R0;->Y0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g1(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Leg/D;

    if-eqz v0, :cond_0

    check-cast p1, Leg/D;

    iget-object v0, p1, Leg/D;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Leg/D;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Leg/a;->z1(Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Leg/a;->A1(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Leg/a;->d:Lyf/j;

    return-object v0
.end method

.method public getCoroutineContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Leg/a;->d:Lyf/j;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    invoke-super {p0}, Leg/R0;->isActive()Z

    move-result v0

    return v0
.end method

.method public o0()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Leg/W;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Leg/I;->d(Ljava/lang/Object;LMf/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Leg/R0;->W0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Leg/S0;->b:Lmg/T;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Leg/a;->x1(Ljava/lang/Object;)V

    return-void
.end method

.method public x1(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Leg/R0;->g0(Ljava/lang/Object;)V

    return-void
.end method

.method public z1(Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
