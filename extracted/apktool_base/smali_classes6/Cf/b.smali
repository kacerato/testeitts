.class public final LCf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()LCf/a;
    .locals 3
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>()",
            "LCf/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.9"
    .end annotation

    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/x;)V

    throw v0
.end method
