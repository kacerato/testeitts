.class public Lcom/android/tools/r8/shaking/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/shaking/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/y;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/y;-><init>()V

    sput-object v0, Lcom/android/tools/r8/shaking/y;->a:Lcom/android/tools/r8/shaking/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/g1;)Z
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    iget-object v2, v2, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/o3;

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    iget-object p1, v1, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/d;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, v1, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/o3;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_7
    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_2
    const/4 p1, 0x0

    return p1
.end method
