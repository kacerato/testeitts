.class public abstract Lcom/android/tools/r8/internal/zO;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/DP;)Lcom/android/tools/r8/internal/zO;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/android/tools/r8/internal/zP;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/yO;->b:Lcom/android/tools/r8/internal/yO;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/yO;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/yO;-><init>(Lcom/android/tools/r8/internal/DP;)V

    return-object v0
.end method
