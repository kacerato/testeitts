.class public Lcom/google/android/filament/EntityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/EntityManager$a;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/filament/EntityManager;->nGetEntityManager()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/android/filament/EntityManager;->nGetEntityManager()J

    .line 6
    iput-wide p1, p0, Lcom/google/android/filament/EntityManager;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/filament/EntityManager;-><init>()V

    return-void
.end method

.method public static f()Lcom/google/android/filament/EntityManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/EntityManager$a;->a:Lcom/google/android/filament/EntityManager;

    return-object v0
.end method

.method private static native nCreate(J)I
.end method

.method private static native nCreateArray(JI[I)V
.end method

.method private static native nDestroy(JI)V
.end method

.method private static native nDestroyArray(JI[I)V
.end method

.method private static native nGetEntityManager()J
.end method

.method private static native nIsAlive(JI)Z
.end method


# virtual methods
.method public a()I
    .locals 2
    .annotation build Lcom/google/android/filament/g;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/EntityManager;->nCreate(J)I

    move-result v0

    return v0
.end method

.method public b(I)[I
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/filament/g;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    new-array v0, p1, [I

    iget-wide v1, p0, Lcom/google/android/filament/EntityManager;->a:J

    invoke-static {v1, v2, p1, v0}, Lcom/google/android/filament/EntityManager;->nCreateArray(JI[I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "n must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([I)[I
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    array-length v2, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/filament/EntityManager;->nCreateArray(JI[I)V

    return-object p1
.end method

.method public d(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/EntityManager;->nDestroy(JI)V

    return-void
.end method

.method public e([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    array-length v2, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/filament/EntityManager;->nDestroyArray(JI[I)V

    return-void
.end method

.method public g(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/EntityManager;->nIsAlive(JI)Z

    move-result p1

    return p1
.end method

.method public getNativeObject()J
    .locals 2
    .annotation build Lcom/google/android/filament/proguard/UsedByReflection;
        value = "AssetLoader.java"
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    return-wide v0
.end method
