.class public final Lcom/google/android/gms/internal/measurement/T4;
.super Lcom/google/android/gms/internal/measurement/U4;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public synthetic constructor <init>([BIIZ[B)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/U4;-><init>([B)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/measurement/T4;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/T4;->c:I

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmq;
        }
    .end annotation

    iget p1, p0, Lcom/google/android/gms/internal/measurement/T4;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/T4;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/T4;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/T4;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/T4;->c:I

    if-lez v1, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/T4;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/T4;->c:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/measurement/T4;->d:I

    :goto_0
    return p1
.end method
