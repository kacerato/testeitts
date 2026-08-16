.class public final Lnf/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILMf/l;)[J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LMf/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lnf/F0;",
            ">;)[J"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, p0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnf/F0;

    invoke-virtual {v2}, Lnf/F0;->l0()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnf/G0;->k([J)[J

    move-result-object p0

    return-object p0
.end method

.method public static final varargs b([J)[J
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lnf/y;
    .end annotation

    const-string v0, "$v$c$kotlin-ULongArray$-elements$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
