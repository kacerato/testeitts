.class public final Lcom/android/tools/r8/internal/Rr;
.super Lcom/android/tools/r8/internal/Ln;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/M2;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/Ln;-><init>(ILcom/android/tools/r8/graph/M2;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ln;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->e(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 3

    .line 1
    iget-short v0, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ln;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/M2;Z)V

    return-void
.end method
