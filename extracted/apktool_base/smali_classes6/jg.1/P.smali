.class public final Ljg/P;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljg/O$a;JJ)Ljg/O;
    .locals 0
    .param p0    # Ljg/O$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljg/T;

    invoke-static {p1, p2}, Lkotlin/time/h;->B(J)J

    move-result-wide p1

    invoke-static {p3, p4}, Lkotlin/time/h;->B(J)J

    move-result-wide p3

    invoke-direct {p0, p1, p2, p3, p4}, Ljg/T;-><init>(JJ)V

    return-object p0
.end method

.method public static synthetic b(Ljg/O$a;JJILjava/lang/Object;)Ljg/O;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p1}, Lkotlin/time/h$a;->W()J

    move-result-wide p1

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    sget-object p3, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p3}, Lkotlin/time/h$a;->o()J

    move-result-wide p3

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Ljg/P;->a(Ljg/O$a;JJ)Ljg/O;

    move-result-object p0

    return-object p0
.end method
