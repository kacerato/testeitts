.class public Lcom/google/android/filament/ToneMapper$f;
.super Lcom/google/android/filament/ToneMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/ToneMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x3e5c28f6    # 0.215f

    const/high16 v1, 0x41200000    # 10.0f

    const v2, 0x3fc66666    # 1.55f

    const v3, 0x3e3851ec    # 0.18f

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/filament/ToneMapper$f;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/filament/ToneMapper;->f(FFFF)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/ToneMapper;-><init>(JLcom/google/android/filament/u;)V

    return-void
.end method


# virtual methods
.method public r()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/ToneMapper;->i(J)F

    move-result v0

    return v0
.end method

.method public s()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/ToneMapper;->j(J)F

    move-result v0

    return v0
.end method

.method public t()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/ToneMapper;->k(J)F

    move-result v0

    return v0
.end method

.method public u()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/ToneMapper;->l(J)F

    move-result v0

    return v0
.end method

.method public v(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper;->q()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ToneMapper;->m(JF)V

    return-void
.end method

.method public w(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper;->q()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ToneMapper;->n(JF)V

    return-void
.end method

.method public x(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper;->q()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ToneMapper;->o(JF)V

    return-void
.end method

.method public y(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper;->q()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ToneMapper;->p(JF)V

    return-void
.end method
