.class public final LBf/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LMf/l;)V
    .locals 1
    .param p0    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LBf/m;

    invoke-direct {v0}, LBf/m;-><init>()V

    invoke-static {p0, v0}, Lyf/h;->h(LMf/l;Lyf/f;)V

    invoke-virtual {v0}, LBf/m;->a()V

    return-void
.end method
