.class public final Lcom/android/tools/r8/internal/Qe0;
.super Lcom/android/tools/r8/internal/Pe0;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:I

.field public b:[I

.field public final c:Ljava/util/BitSet;

.field public final d:Ljava/util/BitSet;

.field public final e:Ljava/util/BitSet;

.field public final f:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Pe0;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/Qe0;->a:I

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/tools/r8/internal/Qe0;->b:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Qe0;->b:[I

    const v3, 0x7fffffff

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qe0;->c:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qe0;->d:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qe0;->e:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .line 31
    sget-boolean v0, Lcom/android/tools/r8/internal/Qe0;->g:Z

    if-nez v0, :cond_1

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qe0;->b:[I

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 35
    aget p1, v1, p1

    return p1

    :cond_2
    if-nez v0, :cond_4

    .line 36
    iget v0, p0, Lcom/android/tools/r8/internal/Qe0;->a:I

    if-ge p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    const p1, 0x7fffffff

    return p1
.end method

.method public final a(IILcom/android/tools/r8/internal/FT;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qe0;->b:[I

    array-length v1, v0

    if-lt p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 12
    array-length v0, v0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 13
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/Qe0;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qe0;->b:[I

    array-length v2, v1

    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Qe0;->b:[I

    :goto_1
    if-ge v2, v0, :cond_1

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qe0;->b:[I

    const v3, 0x7fffffff

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qe0;->b:[I

    aput p2, v0, p1

    .line 18
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qe0;->c:Ljava/util/BitSet;

    .line 19
    iget-object v0, p3, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    .line 20
    iget-object v1, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    .line 21
    :goto_2
    invoke-virtual {p2, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 22
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qe0;->d:Ljava/util/BitSet;

    .line 23
    iget-boolean v0, p3, Lcom/android/tools/r8/internal/FT;->p:Z

    .line 24
    invoke-virtual {p2, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 25
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qe0;->e:Ljava/util/BitSet;

    .line 26
    iget-object v0, p3, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p3, p3, Lcom/android/tools/r8/internal/FT;->b:Lcom/android/tools/r8/internal/xw0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 28
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p3

    .line 29
    iget-boolean p3, p3, Lcom/android/tools/r8/internal/tZ;->l:Z

    if-nez p3, :cond_3

    move v2, v3

    .line 30
    :cond_3
    invoke-virtual {p2, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/Oe0;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Qe0;->g:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    return v1

    .line 5
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected register position type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qe0;->d:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qe0;->c:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 8
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qe0;->e:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1

    .line 9
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qe0;->c:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1

    .line 10
    :cond_6
    iget-object p2, p0, Lcom/android/tools/r8/internal/Qe0;->d:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public final b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
