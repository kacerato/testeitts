.class public final LOd/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Landroid/content/Context;LMf/l;)Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1
    .annotation runtime LOd/i;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LMf/l<",
            "-",
            "Lcom/skydoves/powerspinner/PowerSpinnerView$b;",
            "Lnf/P0;",
            ">;)",
            "Lcom/skydoves/powerspinner/PowerSpinnerView;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView$b;

    invoke-direct {v0, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$b;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView$b;->a()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object p0

    return-object p0
.end method
