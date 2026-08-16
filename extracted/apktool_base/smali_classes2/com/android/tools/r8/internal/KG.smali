.class public final Lcom/android/tools/r8/internal/KG;
.super Lcom/android/tools/r8/internal/OG;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/UH;


# instance fields
.field public final synthetic g:Lcom/android/tools/r8/internal/QG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QG;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/KG;->g:Lcom/android/tools/r8/internal/QG;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/OG;-><init>(Lcom/android/tools/r8/internal/QG;)V

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
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/KG;->g:Lcom/android/tools/r8/internal/QG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QG;->b:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OG;->d()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/KG;->g:Lcom/android/tools/r8/internal/QG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QG;->b:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OG;->b()I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/KG;->g:Lcom/android/tools/r8/internal/QG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QG;->b:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OG;->d()I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final r()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/KG;->g:Lcom/android/tools/r8/internal/QG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/QG;->b:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OG;->b()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
