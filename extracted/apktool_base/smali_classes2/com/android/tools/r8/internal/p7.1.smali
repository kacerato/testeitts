.class public final Lcom/android/tools/r8/internal/p7;
.super Lcom/android/tools/r8/internal/B7;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/p7;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/p7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p7;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/p7;->b:Lcom/android/tools/r8/internal/p7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/B7;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    instance-of p1, p2, Lcom/android/tools/r8/internal/zv0;

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/tools/r8/internal/p7;->c:Z

    if-nez p1, :cond_3

    sget-object p1, Lcom/android/tools/r8/internal/fw0;->b:Lcom/android/tools/r8/internal/fw0;

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
    sget-boolean p1, Lcom/android/tools/r8/internal/p7;->c:Z

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    if-nez p1, :cond_8

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->l()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->g()Lcom/android/tools/r8/internal/xg;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p1, Lcom/android/tools/r8/internal/ig;

    if-eqz p2, :cond_9

    invoke-virtual {p5, p1}, Lcom/android/tools/r8/internal/Bo0;->a(Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xg;->A()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result p3

    if-eqz p3, :cond_a

    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    :cond_a
    new-instance p3, Lcom/android/tools/r8/internal/ig;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yg;->p()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/ig;-><init>(Lcom/android/tools/r8/internal/p10;Ljava/util/Set;)V

    return-object p3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "\u22a5(ARRAY)"

    return-object v0
.end method
