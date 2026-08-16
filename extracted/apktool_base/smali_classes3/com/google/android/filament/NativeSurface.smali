.class public Lcom/google/android/filament/NativeSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/filament/NativeSurface;->a:I

    iput p2, p0, Lcom/google/android/filament/NativeSurface;->b:I

    invoke-static {p1, p2}, Lcom/google/android/filament/NativeSurface;->nCreateSurface(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/NativeSurface;->c:J

    return-void
.end method

.method private static native nCreateSurface(II)J
.end method

.method private static native nDestroySurface(J)V
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/NativeSurface;->c:J

    invoke-static {v0, v1}, Lcom/google/android/filament/NativeSurface;->nDestroySurface(J)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/filament/NativeSurface;->b:I

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/NativeSurface;->c:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/filament/NativeSurface;->a:I

    return v0
.end method
