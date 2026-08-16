.class public abstract Lcom/android/tools/r8/internal/Xr;
.super Lcom/android/tools/r8/internal/Wo;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/Wo<",
        "Lcom/android/tools/r8/graph/l1;",
        ">;",
        "Lcom/android/tools/r8/internal/Jp;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Wo;-><init>(ILcom/android/tools/r8/graph/d4;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Wo;-><init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Wo;)Lcom/android/tools/r8/graph/l1;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast p0, Lcom/android/tools/r8/graph/l1;

    return-object p0
.end method


# virtual methods
.method public final I()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 4
    iget-short p3, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result p4

    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 6
    invoke-static {p2, p6, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p5

    invoke-virtual {p4, p2, p5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/s21;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/s21;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public final getField()Lcom/android/tools/r8/graph/l1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method

.method public final h()Lcom/android/tools/r8/internal/Jp;
    .locals 0

    return-object p0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
