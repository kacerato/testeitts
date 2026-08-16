.class public final Lcom/android/tools/r8/internal/gw0;
.super Lcom/android/tools/r8/internal/iw0;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/gw0;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/gw0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gw0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/gw0;->b:Lcom/android/tools/r8/internal/gw0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/iw0;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
    .locals 8

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    instance-of v0, p2, Lcom/android/tools/r8/internal/zv0;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/gw0;->c:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    sget-object v1, Lcom/android/tools/r8/internal/r7;->b:Lcom/android/tools/r8/internal/r7;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/r7;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->d()Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/tools/r8/internal/yg;->c:Z

    return-object p1

    :cond_6
    if-nez v0, :cond_8

    instance-of p2, p1, Lcom/android/tools/r8/internal/zv0;

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    return-object p1

    :cond_9
    :goto_3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UNUSED(CLASS)"

    return-object v0
.end method
