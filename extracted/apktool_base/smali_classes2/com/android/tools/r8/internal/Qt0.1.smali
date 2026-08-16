.class public final Lcom/android/tools/r8/internal/Qt0;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 9

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->d()V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->q()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->o()I

    move-result v1

    .line 23
    const-string v8, "year"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v1

    goto :goto_0

    .line 24
    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v1

    goto :goto_0

    .line 25
    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v4, v1

    goto :goto_0

    .line 26
    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v1

    goto :goto_0

    .line 27
    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v1

    goto :goto_0

    .line 28
    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_0

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->h()V

    .line 30
    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->e()V

    .line 4
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/qL;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/qL;->a(J)V

    .line 6
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/qL;->b(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/qL;->a(J)V

    .line 8
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/qL;->b(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/qL;->a(J)V

    .line 10
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/qL;->b(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 11
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/qL;->a(J)V

    .line 12
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/qL;->b(Ljava/lang/String;)V

    const/16 v0, 0xc

    .line 13
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/qL;->a(J)V

    .line 14
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/qL;->b(Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 15
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/qL;->a(J)V

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->g()V

    return-void
.end method
