.class public final Lkotlin/time/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/time/I;Lkotlin/time/q;)Lkotlin/time/e;
    .locals 1
    .param p0    # Lkotlin/time/I;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/time/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "fromTimeSource"
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lkotlin/time/o;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/time/f$a;

    invoke-direct {v0, p0, p1}, Lkotlin/time/f$a;-><init>(Lkotlin/time/I;Lkotlin/time/q;)V

    return-object v0
.end method
