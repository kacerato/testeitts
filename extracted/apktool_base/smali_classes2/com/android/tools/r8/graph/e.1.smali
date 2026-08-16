.class public abstract Lcom/android/tools/r8/graph/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/e;->a:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 5
    sget-object p0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->h()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p2

    .line 10
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/Nv;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 11
    sget-object p0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p0

    .line 12
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;
    .locals 3

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    sget-object p0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-ne p0, p2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_4

    .line 20
    sget-boolean p0, Lcom/android/tools/r8/graph/e;->a:Z

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "context should not be null"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_a

    .line 23
    sget-object p0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p0

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v0

    if-nez v0, :cond_8

    .line 28
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p4

    if-nez p4, :cond_9

    .line 29
    :cond_8
    sget-object p0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p0

    .line 30
    :cond_9
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    .line 31
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 32
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->h()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 33
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p3

    .line 34
    invoke-static {p0, p2, p3}, Lcom/android/tools/r8/internal/Nv;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 35
    sget-object p0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p0

    :cond_a
    :goto_2
    return-object p1
.end method
