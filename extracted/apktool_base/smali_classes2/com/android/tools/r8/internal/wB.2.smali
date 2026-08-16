.class public abstract Lcom/android/tools/r8/internal/wB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/J2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/J2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/wB;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/wB;->a:Lcom/android/tools/r8/graph/J2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/Aq;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/xx1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xx1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Ky;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Aq;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kc;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Ax1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ax1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Ky;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Kc;

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/Tu0;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Bx1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bx1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Ky;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Tu0;

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/ud;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/zx1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zx1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Ky;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/ud;

    return-object p0
.end method

.method public static c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Es;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/yx1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yx1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Ky;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Es;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/yB;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
