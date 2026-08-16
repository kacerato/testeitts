.class public final Lcom/android/tools/r8/internal/e80;
.super Lcom/android/tools/r8/internal/On;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/e80;

    new-instance v1, Lcom/android/tools/r8/internal/EO0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/EO0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/e80;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/On;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static k()Lcom/android/tools/r8/internal/e80;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/e80;

    new-instance v1, Lcom/android/tools/r8/internal/Wz0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Wz0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/e80;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static l()Lcom/android/tools/r8/internal/e80;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/e80;

    new-instance v1, Lcom/android/tools/r8/internal/t91;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/t91;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/e80;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method
