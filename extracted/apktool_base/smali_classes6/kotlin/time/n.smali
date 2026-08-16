.class public Lkotlin/time/n;
.super Lkotlin/time/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/time/m;-><init>()V

    return-void
.end method

.method public static final f(JLkotlin/time/k;)J
    .locals 2
    .param p2    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/time/n;->g(Lkotlin/time/k;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/n;->h(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final g(Lkotlin/time/k;)J
    .locals 3

    sget-object v0, Lkotlin/time/n$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong unit for millisMultiplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x36ee80

    goto :goto_0

    :cond_4
    const-wide/32 v0, 0x5265c00

    :goto_0
    return-wide v0
.end method

.method public static final h(JJ)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    if-nez v2, :cond_1

    invoke-static {p2, p3, v3, v4}, LVf/u;->E(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    invoke-static {p0, p1, v3, v4}, LVf/u;->E(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int v0, v0, 0x80

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x3f

    if-ge v0, v1, :cond_3

    mul-long v0, p0, p2

    goto :goto_0

    :cond_3
    if-le v0, v1, :cond_4

    move-wide v0, v3

    goto :goto_0

    :cond_4
    mul-long/2addr p0, p2

    invoke-static {p0, p1, v3, v4}, LVf/u;->E(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final i(Lkotlin/time/k;)Ljava/lang/String;
    .locals 3
    .param p0    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/n$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "us"

    goto :goto_0

    :pswitch_1
    const-string p0, "ns"

    goto :goto_0

    :pswitch_2
    const-string p0, "ms"

    goto :goto_0

    :pswitch_3
    const-string p0, "s"

    goto :goto_0

    :pswitch_4
    const-string p0, "m"

    goto :goto_0

    :pswitch_5
    const-string p0, "h"

    goto :goto_0

    :pswitch_6
    const-string p0, "d"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
