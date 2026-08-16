.class public final Leg/w;
.super Leg/L0;
.source "SourceFile"

# interfaces
.implements Leg/v;


# instance fields
.field public final f:Leg/x;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/x;)V
    .locals 0
    .param p1    # Leg/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Leg/L0;-><init>()V

    iput-object p1, p0, Leg/w;->f:Leg/x;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Leg/w;->f:Leg/x;

    invoke-virtual {p0}, Leg/Q0;->Z()Leg/R0;

    move-result-object v0

    invoke-interface {p1, v0}, Leg/x;->N(Leg/b1;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Leg/Q0;->Z()Leg/R0;

    move-result-object v0

    invoke-virtual {v0, p1}, Leg/R0;->p0(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getParent()Leg/K0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Leg/Q0;->Z()Leg/R0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Leg/w;->Y(Ljava/lang/Throwable;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
