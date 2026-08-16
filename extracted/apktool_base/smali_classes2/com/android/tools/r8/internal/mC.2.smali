.class public abstract Lcom/android/tools/r8/internal/mC;
.super Lcom/android/tools/r8/internal/nC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nC;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lcom/android/tools/r8/internal/QC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/lC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/lC;-><init>(Lcom/android/tools/r8/internal/mC;)V

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/android/tools/r8/internal/QC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/tC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tC;-><init>(Lcom/android/tools/r8/internal/nC;)V

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/wC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/wC;-><init>(Lcom/android/tools/r8/internal/nC;)V

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    return-object v0
.end method
