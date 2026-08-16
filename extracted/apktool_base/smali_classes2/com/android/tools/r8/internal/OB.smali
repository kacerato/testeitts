.class public final Lcom/android/tools/r8/internal/OB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/e2;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/OB;

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/OB;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/OB;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/OB;->a:Lcom/android/tools/r8/internal/OB;

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

    sget-boolean v0, Lcom/android/tools/r8/internal/OB;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/C4;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/tools/r8/internal/ej;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/C4;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->L()Lcom/android/tools/r8/internal/ej;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/C4;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/android/tools/r8/internal/ej;

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
