.class public final Leg/R0$d;
.super Leg/Q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg/R0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final f:Lpg/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/m<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic g:Leg/R0;


# direct methods
.method public constructor <init>(Leg/R0;Lpg/m;)V
    .locals 0
    .param p1    # Leg/R0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Leg/R0$d;->g:Leg/R0;

    invoke-direct {p0}, Leg/Q0;-><init>()V

    iput-object p2, p0, Leg/R0$d;->f:Lpg/m;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Leg/R0$d;->g:Leg/R0;

    invoke-virtual {p1}, Leg/R0;->J0()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Leg/D;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Leg/S0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Leg/R0$d;->f:Lpg/m;

    iget-object v1, p0, Leg/R0$d;->g:Leg/R0;

    invoke-interface {v0, v1, p1}, Lpg/m;->x(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Leg/R0$d;->Y(Ljava/lang/Throwable;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
