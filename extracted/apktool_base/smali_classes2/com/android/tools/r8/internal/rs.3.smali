.class public Lcom/android/tools/r8/internal/rs;
.super Lcom/android/tools/r8/internal/Xr;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Xr;-><init>(ILcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/x5;->a()[Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Xr;-><init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Jp;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/rs;

    iget-short v1, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/rs;-><init>(ILcom/android/tools/r8/graph/l1;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Np;->e(I)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->g(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 2

    .line 2
    iget-short v0, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "SputObject"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x69

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "sput-object"

    return-object v0
.end method
