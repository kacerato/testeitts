.class public final synthetic Leg/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leg/p;Ljava/util/concurrent/Future;)V
    .locals 1
    .param p0    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Leg/l;

    invoke-direct {v0, p1}, Leg/l;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Leg/p;->K(LMf/l;)V

    return-void
.end method

.method public static final b(Leg/K0;Ljava/util/concurrent/Future;)Leg/m0;
    .locals 1
    .param p0    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/K0;",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Leg/m0;"
        }
    .end annotation

    .annotation build Leg/F0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Leg/m;

    invoke-direct {v0, p1}, Leg/m;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Leg/K0;->w(LMf/l;)Leg/m0;

    move-result-object p0

    return-object p0
.end method
