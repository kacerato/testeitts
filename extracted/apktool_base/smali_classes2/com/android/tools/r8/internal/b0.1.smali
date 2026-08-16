.class public abstract Lcom/android/tools/r8/internal/b0;
.super Lcom/android/tools/r8/internal/X;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/UH;
.implements Lcom/android/tools/r8/internal/HH;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/X;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/b0;->a(I)V

    return-void
.end method

.method public b(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/HH;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/b0;->b(I)V

    return-void
.end method
