.class public final Lkotlin/time/H$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/time/H;)Z
    .locals 2
    .param p0    # Lkotlin/time/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lkotlin/time/H;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/h;->T(J)Z

    move-result p0

    return p0
.end method

.method public static b(Lkotlin/time/H;)Z
    .locals 2
    .param p0    # Lkotlin/time/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lkotlin/time/H;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/h;->T(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(Lkotlin/time/H;J)Lkotlin/time/H;
    .locals 0
    .param p0    # Lkotlin/time/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, Lkotlin/time/h;->l0(J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lkotlin/time/H;->f(J)Lkotlin/time/H;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lkotlin/time/H;J)Lkotlin/time/H;
    .locals 2
    .param p0    # Lkotlin/time/H;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/time/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlin/time/d;-><init>(Lkotlin/time/H;JLkotlin/jvm/internal/x;)V

    return-object v0
.end method
