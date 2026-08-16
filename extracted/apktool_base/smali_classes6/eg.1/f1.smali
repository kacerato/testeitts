.class public final Leg/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LMf/a;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Leg/f1$a;

    invoke-direct {v0, p0}, Leg/f1$a;-><init>(LMf/a;)V

    return-object v0
.end method
