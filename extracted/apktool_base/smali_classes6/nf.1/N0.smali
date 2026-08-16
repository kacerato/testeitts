.class public final Lnf/N0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILMf/l;)[S
    .locals 3
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LMf/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lnf/L0;",
            ">;)[S"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, p0, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnf/L0;

    invoke-virtual {v2}, Lnf/L0;->j0()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnf/M0;->k([S)[S

    move-result-object p0

    return-object p0
.end method

.method public static final varargs b([S)[S
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-UShortArray$-elements$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
