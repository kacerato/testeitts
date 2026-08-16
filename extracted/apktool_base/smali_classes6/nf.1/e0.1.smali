.class public final Lnf/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LWf/o;Ljava/lang/Object;LWf/n;)Ljava/lang/Object;
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LWf/o<",
            "+TV;>;",
            "Ljava/lang/Object;",
            "LWf/n<",
            "*>;)TV;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LWf/o;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(LWf/p;Ljava/lang/Object;LWf/n;)Ljava/lang/Object;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LWf/p<",
            "TT;+TV;>;TT;",
            "LWf/n<",
            "*>;)TV;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, LWf/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LWf/j;Ljava/lang/Object;LWf/n;Ljava/lang/Object;)V
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LWf/j<",
            "TV;>;",
            "Ljava/lang/Object;",
            "LWf/n<",
            "*>;TV;)V"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p3}, LWf/j;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static final d(LWf/k;Ljava/lang/Object;LWf/n;Ljava/lang/Object;)V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LWf/k<",
            "TT;TV;>;TT;",
            "LWf/n<",
            "*>;TV;)V"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p3}, LWf/k;->G(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
