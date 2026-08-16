.class public LAf/d;
.super LAf/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LAf/c;-><init>()V

    return-void
.end method

.method public static l()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LAf/a;->COROUTINE_SUSPENDED:LAf/a;

    return-object v0
.end method

.method public static synthetic m()V
    .locals 0
    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    return-void
.end method

.method public static final n(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "Implementation of suspendCoroutineUninterceptedOrReturn is intrinsic"

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
