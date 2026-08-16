.class public Leg/M0;
.super Leg/R0;
.source "SourceFile"

# interfaces
.implements Leg/B;


# annotations
.annotation build Lnf/f0;
.end annotation


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(Leg/K0;)V
    .locals 1
    .param p1    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Leg/R0;-><init>(Z)V

    invoke-virtual {p0, p1}, Leg/R0;->M0(Leg/K0;)V

    invoke-virtual {p0}, Leg/M0;->x1()Z

    move-result p1

    iput-boolean p1, p0, Leg/M0;->d:Z

    return-void
.end method


# virtual methods
.method public C0()Z
    .locals 1

    iget-boolean v0, p0, Leg/M0;->d:Z

    return v0
.end method

.method public F0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance v0, Leg/D;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Leg/D;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/x;)V

    invoke-virtual {p0, v0}, Leg/R0;->V0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public complete()Z
    .locals 1

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p0, v0}, Leg/R0;->V0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final x1()Z
    .locals 4

    invoke-virtual {p0}, Leg/R0;->I0()Leg/v;

    move-result-object v0

    instance-of v1, v0, Leg/w;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Leg/w;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Leg/Q0;->Z()Leg/R0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Leg/R0;->C0()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v0}, Leg/R0;->I0()Leg/v;

    move-result-object v0

    instance-of v3, v0, Leg/w;

    if-eqz v3, :cond_3

    check-cast v0, Leg/w;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Leg/Q0;->Z()Leg/R0;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    :goto_2
    return v1
.end method
