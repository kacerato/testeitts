.class public abstract Lcom/android/tools/r8/internal/TB;
.super Lcom/android/tools/r8/internal/hC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/hC;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TB;->j()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TB;->j()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->g()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TB;->j()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract j()Lcom/android/tools/r8/internal/XB;
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TB;->j()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
