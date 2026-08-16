.class public abstract Lcom/android/tools/r8/internal/Pe0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public final a(IZ)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pe0;->a(I)I

    move-result v0

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pe0;->a(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public abstract a(IILcom/android/tools/r8/internal/FT;)V
.end method

.method public abstract a(ILcom/android/tools/r8/internal/Oe0;)Z
.end method

.method public abstract b(I)Z
.end method

.method public abstract c(I)V
.end method
