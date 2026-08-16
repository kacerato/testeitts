.class public final Lcom/android/tools/r8/internal/hw0;
.super Lcom/android/tools/r8/internal/iw0;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/hw0;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/hw0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hw0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/hw0;->b:Lcom/android/tools/r8/internal/hw0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/iw0;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
    .locals 0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    instance-of p1, p2, Lcom/android/tools/r8/internal/zv0;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/hw0;->c:Z

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/tools/r8/internal/ug;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Iw0;->e()Lcom/android/tools/r8/internal/ug;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/android/tools/r8/internal/Bo0;->a(Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ug;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/tools/r8/internal/yg;->c:Z

    return-object p1

    :cond_6
    :goto_2
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UNUSED(PRIMITIVE)"

    return-object v0
.end method
