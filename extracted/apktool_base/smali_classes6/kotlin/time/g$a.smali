.class public final Lkotlin/time/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/time/g;Lkotlin/time/g;)I
    .locals 2
    .param p0    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/time/g;->p(Lkotlin/time/g;)J

    move-result-wide p0

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->W()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/h;->m(JJ)I

    move-result p0

    return p0
.end method

.method public static b(Lkotlin/time/g;)Z
    .locals 0
    .param p0    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/time/H$a;->a(Lkotlin/time/H;)Z

    move-result p0

    return p0
.end method

.method public static c(Lkotlin/time/g;)Z
    .locals 0
    .param p0    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/time/H$a;->b(Lkotlin/time/H;)Z

    move-result p0

    return p0
.end method

.method public static d(Lkotlin/time/g;J)Lkotlin/time/g;
    .locals 0
    .param p0    # Lkotlin/time/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Lkotlin/time/h;->l0(J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lkotlin/time/g;->f(J)Lkotlin/time/g;

    move-result-object p0

    return-object p0
.end method
