.class public final Lkotlin/time/D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmeasureTime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,139:1\n63#1,3:140\n135#1,3:143\n*S KotlinDebug\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n24#1:140,3\n95#1:143,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nmeasureTime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,139:1\n63#1,3:140\n135#1,3:143\n*S KotlinDebug\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n24#1:140,3\n95#1:143,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(LMf/a;)J
    .locals 2
    .param p0    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "Lnf/P0;",
            ">;)J"
        }
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lkotlin/time/o;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.9"
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/I$b;->b:Lkotlin/time/I$b;

    invoke-virtual {v0}, Lkotlin/time/I$b;->b()J

    move-result-wide v0

    invoke-interface {p0}, LMf/a;->invoke()Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final b(Lkotlin/time/I$b;LMf/a;)J
    .locals 2
    .param p0    # Lkotlin/time/I$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/time/I$b;",
            "LMf/a<",
            "Lnf/P0;",
            ">;)J"
        }
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lkotlin/time/o;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.9"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/time/I$b;->b()J

    move-result-wide v0

    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(Lkotlin/time/I;LMf/a;)J
    .locals 1
    .param p0    # Lkotlin/time/I;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/time/I;",
            "LMf/a<",
            "Lnf/P0;",
            ">;)J"
        }
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lkotlin/time/o;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.9"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/time/I;->a()Lkotlin/time/H;

    move-result-object p0

    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/time/H;->a()J

    move-result-wide p0

    return-wide p0
.end method

.method public static final d(LMf/a;)Lkotlin/time/J;
    .locals 4
    .param p0    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/a<",
            "+TT;>;)",
            "Lkotlin/time/J<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lkotlin/time/o;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.9"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/I$b;->b:Lkotlin/time/I$b;

    invoke-virtual {v0}, Lkotlin/time/I$b;->b()J

    move-result-wide v0

    invoke-interface {p0}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Lkotlin/time/J;

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->i(J)J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Lkotlin/time/J;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/x;)V

    return-object v2
.end method

.method public static final e(Lkotlin/time/I$b;LMf/a;)Lkotlin/time/J;
    .locals 3
    .param p0    # Lkotlin/time/I$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/time/I$b;",
            "LMf/a<",
            "+TT;>;)",
            "Lkotlin/time/J<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lkotlin/time/o;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.9"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/time/I$b;->b()J

    move-result-wide v0

    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lkotlin/time/J;

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->i(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lkotlin/time/J;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/x;)V

    return-object p1
.end method

.method public static final f(Lkotlin/time/I;LMf/a;)Lkotlin/time/J;
    .locals 3
    .param p0    # Lkotlin/time/I;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/time/I;",
            "LMf/a<",
            "+TT;>;)",
            "Lkotlin/time/J<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lkotlin/time/o;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.9"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/time/I;->a()Lkotlin/time/H;

    move-result-object p0

    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lkotlin/time/J;

    invoke-interface {p0}, Lkotlin/time/H;->a()J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lkotlin/time/J;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/x;)V

    return-object v0
.end method
