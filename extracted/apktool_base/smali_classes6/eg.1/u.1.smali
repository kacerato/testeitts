.class public final Leg/u;
.super Leg/L0;
.source "SourceFile"


# annotations
.annotation build Lnf/f0;
.end annotation


# instance fields
.field public final f:Leg/q;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/q;)V
    .locals 0
    .param p1    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/q<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Leg/L0;-><init>()V

    iput-object p1, p0, Leg/u;->f:Leg/q;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Leg/u;->f:Leg/q;

    invoke-virtual {p0}, Leg/Q0;->Z()Leg/R0;

    move-result-object v0

    invoke-virtual {p1, v0}, Leg/q;->z(Leg/K0;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Leg/q;->S(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Leg/u;->Y(Ljava/lang/Throwable;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
