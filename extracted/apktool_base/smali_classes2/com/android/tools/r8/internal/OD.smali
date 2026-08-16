.class public final Lcom/android/tools/r8/internal/OD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/H;

.field public d:Lcom/android/tools/r8/internal/H;

.field public e:[Lcom/android/tools/r8/internal/H;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/H;)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/android/tools/r8/internal/OD;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/OD;->b:I

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    .line 11
    iput-object v0, p1, Lcom/android/tools/r8/internal/H;->d:Lcom/android/tools/r8/internal/H;

    .line 12
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    const/4 v0, 0x0

    .line 14
    iput v0, p1, Lcom/android/tools/r8/internal/H;->f:I

    return-void
.end method

.method public final a()[Lcom/android/tools/r8/internal/H;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/OD;->c:Lcom/android/tools/r8/internal/H;

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/OD;->b:I

    new-array v1, v1, [Lcom/android/tools/r8/internal/H;

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 3
    aput-object v0, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 4
    iput v2, v0, Lcom/android/tools/r8/internal/H;->f:I

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/H;->e:Lcom/android/tools/r8/internal/H;

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final b(Lcom/android/tools/r8/internal/H;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OD;->a()[Lcom/android/tools/r8/internal/H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    :cond_0
    iget p1, p1, Lcom/android/tools/r8/internal/H;->f:I

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ND;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ND;-><init>(Lcom/android/tools/r8/internal/OD;)V

    return-object v0
.end method

.method public final j(I)Lcom/android/tools/r8/internal/H;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/OD;->b:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OD;->a()[Lcom/android/tools/r8/internal/H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/OD;->e:[Lcom/android/tools/r8/internal/H;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
