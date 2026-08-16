.class public Leg/h1;
.super Leg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leg/a<",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lyf/j;Z)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Leg/a;-><init>(Lyf/j;ZZ)V

    return-void
.end method


# virtual methods
.method public K0(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Leg/a;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {v0, p1}, Leg/O;->b(Lyf/j;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
