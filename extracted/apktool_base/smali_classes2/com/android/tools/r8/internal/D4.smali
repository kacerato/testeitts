.class public final Lcom/android/tools/r8/internal/D4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/e2;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/D4;

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/D4;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/D4;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/xw0;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/D4;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/C4;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/C4;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
