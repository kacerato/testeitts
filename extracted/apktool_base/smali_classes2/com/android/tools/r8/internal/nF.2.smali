.class public final Lcom/android/tools/r8/internal/nF;
.super Lcom/android/tools/r8/internal/xF;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/UH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/zF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/xF;-><init>(Lcom/android/tools/r8/internal/zF;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xF;->b()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xF;->a()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xF;->b()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final r()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xF;->a()Lcom/android/tools/r8/internal/lF;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/internal/M;->b:I

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
