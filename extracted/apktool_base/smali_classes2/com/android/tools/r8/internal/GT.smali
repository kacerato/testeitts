.class public Lcom/android/tools/r8/internal/GT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/internal/GT;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/GT;->b:I

    iput p2, p0, Lcom/android/tools/r8/internal/GT;->c:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/GT;->c:I

    const v1, 0xffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/GT;

    iget v0, p1, Lcom/android/tools/r8/internal/GT;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/GT;->b:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/GT;->c:I

    iget p1, p1, Lcom/android/tools/r8/internal/GT;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/GT;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/GT;

    iget v0, p1, Lcom/android/tools/r8/internal/GT;->b:I

    iget v2, p0, Lcom/android/tools/r8/internal/GT;->b:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/tools/r8/internal/GT;->c:I

    iget v0, p0, Lcom/android/tools/r8/internal/GT;->c:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/GT;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/GT;->c:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    return v1
.end method
