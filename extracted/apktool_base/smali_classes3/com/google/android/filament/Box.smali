.class public Lcom/google/android/filament/Box;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/filament/Box;->a:[F

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/Box;->b:[F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/filament/Box;->a:[F

    .line 6
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/Box;->b:[F

    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    const/4 p1, 0x1

    .line 8
    aput p2, v1, p1

    const/4 p2, 0x2

    .line 9
    aput p3, v1, p2

    .line 10
    aput p4, v0, v2

    .line 11
    aput p5, v0, p1

    .line 12
    aput p6, v0, p2

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 5
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 14
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/filament/Box;->a:[F

    .line 15
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/Box;->b:[F

    const/4 v2, 0x0

    .line 16
    aget v3, p1, v2

    aput v3, v1, v2

    const/4 v3, 0x1

    .line 17
    aget v4, p1, v3

    aput v4, v1, v3

    const/4 v4, 0x2

    .line 18
    aget p1, p1, v4

    aput p1, v1, v4

    .line 19
    aget p1, p2, v2

    aput p1, v0, v2

    .line 20
    aget p1, p2, v3

    aput p1, v0, v3

    .line 21
    aget p1, p2, v4

    aput p1, v0, v4

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Box;->a:[F

    return-object v0
.end method

.method public b()[F
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Box;->b:[F

    return-object v0
.end method

.method public c(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/Box;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    return-void
.end method

.method public d(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/Box;->b:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    return-void
.end method
