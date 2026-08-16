.class public final Lcom/android/tools/r8/internal/r7;
.super Lcom/android/tools/r8/internal/B7;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/r7;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/r7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r7;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/r7;->b:Lcom/android/tools/r8/internal/r7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/B7;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result p6

    if-eqz p6, :cond_0

    return-object p0

    :cond_0
    instance-of p6, p2, Lcom/android/tools/r8/internal/zv0;

    if-eqz p6, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->n()Z

    move-result p6

    if-eqz p6, :cond_4

    sget-boolean p1, Lcom/android/tools/r8/internal/r7;->c:Z

    if-nez p1, :cond_3

    sget-object p1, Lcom/android/tools/r8/internal/gw0;->b:Lcom/android/tools/r8/internal/gw0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/internal/Iw0;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object p2

    :cond_4
    sget-boolean p6, Lcom/android/tools/r8/internal/r7;->c:Z

    if-nez p6, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    if-nez p6, :cond_8

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/Iw0;->l()Z

    move-result p6

    if-eqz p6, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->g()Lcom/android/tools/r8/internal/xg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xg;->z()Lcom/android/tools/r8/internal/xt;

    move-result-object p6

    sget-boolean v0, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v0, Lcom/android/tools/r8/internal/zt;->c:Lcom/android/tools/r8/internal/zt;

    invoke-virtual {v0, p1, p6, p3, p4}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object p3

    if-eqz p4, :cond_9

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p6

    invoke-static {p1, p3, p4, p6}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object p3

    :cond_9
    instance-of p4, p2, Lcom/android/tools/r8/internal/lg;

    if-eqz p4, :cond_a

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xg;->z()Lcom/android/tools/r8/internal/xt;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/Bo0;->a(Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yg;->p()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "\u22a5(CLASS)"

    return-object v0
.end method
