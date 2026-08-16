.class public final Lcg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LLf/j;
    name = "InstantConversionsJDK8Kt"
.end annotation


# direct methods
.method public static final a(Lkotlin/time/q;)Ljava/time/Instant;
    .locals 4
    .param p0    # Lkotlin/time/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    invoke-virtual {p0}, Lkotlin/time/q;->d()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/time/q;->e()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    const-string v0, "ofEpochSecond(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Ljava/time/Instant;)Lkotlin/time/q;
    .locals 3
    .param p0    # Ljava/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    sget-object v0, Lkotlin/time/q;->d:Lkotlin/time/q$a;

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lkotlin/time/q$a;->b(JI)Lkotlin/time/q;

    move-result-object p0

    return-object p0
.end method
