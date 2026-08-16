.class public final Lgg/A;
.super Lgg/m;
.source "SourceFile"

# interfaces
.implements Lgg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lgg/m<",
        "TE;>;",
        "Lgg/B<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lyf/j;Lgg/l;)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "Lgg/l<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lgg/m;-><init>(Lyf/j;Lgg/l;ZZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic A1(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnf/P0;

    invoke-virtual {p0, p1}, Lgg/A;->D1(Lnf/P0;)V

    return-void
.end method

.method public D1(Lnf/P0;)V
    .locals 2
    .param p1    # Lnf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lgg/m;->C1()Lgg/l;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lgg/E$a;->a(Lgg/E;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic getChannel()Lgg/E;
    .locals 1

    invoke-virtual {p0}, Lgg/m;->getChannel()Lgg/l;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    invoke-super {p0}, Leg/a;->isActive()Z

    move-result v0

    return v0
.end method

.method public z1(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lgg/m;->C1()Lgg/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lgg/E;->J(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Leg/a;->getContext()Lyf/j;

    move-result-object p2

    invoke-static {p2, p1}, Leg/O;->b(Lyf/j;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
