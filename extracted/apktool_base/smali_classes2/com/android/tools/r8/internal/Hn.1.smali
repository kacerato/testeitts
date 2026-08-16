.class public final Lcom/android/tools/r8/internal/Hn;
.super Lcom/android/tools/r8/internal/Fn;
.source "SourceFile"


# instance fields
.field public final e:[Lcom/android/tools/r8/internal/Np;

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/zE;[Lcom/android/tools/r8/internal/Np;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Fn;-><init>(Lcom/android/tools/r8/internal/zE;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Hn;->e:[Lcom/android/tools/r8/internal/Np;

    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/tools/r8/internal/Hn;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Kn;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/tools/r8/internal/Hn;->f:I

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;Ljava/util/ArrayList;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hn;->e:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v3

    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Fn;Lcom/android/tools/r8/internal/Kn;)Z
    .locals 0

    .line 7
    instance-of p2, p1, Lcom/android/tools/r8/internal/Hn;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/Hn;->e:[Lcom/android/tools/r8/internal/Np;

    check-cast p1, Lcom/android/tools/r8/internal/Hn;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Hn;->e:[Lcom/android/tools/r8/internal/Np;

    .line 8
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Hn;->f:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Hn;->f:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Hn;->f:I

    return v0
.end method
