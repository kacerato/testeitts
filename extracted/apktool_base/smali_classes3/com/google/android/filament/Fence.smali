.class public Lcom/google/android/filament/Fence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Fence$b;,
        Lcom/google/android/filament/Fence$a;
    }
.end annotation


# static fields
.field public static final b:J = -0x1L


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Fence;->a:J

    return-void
.end method

.method public static d(Lcom/google/android/filament/Fence;Lcom/google/android/filament/Fence$b;)Lcom/google/android/filament/Fence$a;
    .locals 2
    .param p0    # Lcom/google/android/filament/Fence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/filament/Fence$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Fence;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/Fence;->nWaitAndDestroy(JI)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/Fence$a;->ERROR:Lcom/google/android/filament/Fence$a;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/filament/Fence$a;->CONDITION_SATISFIED:Lcom/google/android/filament/Fence$a;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/filament/Fence$a;->ERROR:Lcom/google/android/filament/Fence$a;

    return-object p0
.end method

.method private static native nWait(JIJ)I
.end method

.method private static native nWaitAndDestroy(JI)I
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Fence;->a:J

    return-void
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Fence;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Fence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/google/android/filament/Fence$b;J)Lcom/google/android/filament/Fence$a;
    .locals 2
    .param p1    # Lcom/google/android/filament/Fence$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Fence;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/Fence;->nWait(JIJ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/google/android/filament/Fence$a;->ERROR:Lcom/google/android/filament/Fence$a;

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/filament/Fence$a;->TIMEOUT_EXPIRED:Lcom/google/android/filament/Fence$a;

    return-object p1

    :cond_1
    sget-object p1, Lcom/google/android/filament/Fence$a;->CONDITION_SATISFIED:Lcom/google/android/filament/Fence$a;

    return-object p1

    :cond_2
    sget-object p1, Lcom/google/android/filament/Fence$a;->ERROR:Lcom/google/android/filament/Fence$a;

    return-object p1
.end method
