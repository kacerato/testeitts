.class public Lcom/android/tools/r8/internal/lL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/Reader;

.field public b:Z

.field public final c:[C

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:J

.field public j:I

.field public k:Ljava/lang/String;

.field public l:[I

.field public m:I

.field public n:[Ljava/lang/String;

.field public o:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/kL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kL;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/kL;->a:Lcom/android/tools/r8/internal/kL;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/lL;->b:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->e:I

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->g:I

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/tools/r8/internal/lL;->l:[I

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/lL;->m:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    const-string v0, "in == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/lL;->a:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public final a(C)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :goto_0
    iget v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 3
    iget v4, p0, Lcom/android/tools/r8/internal/lL;->e:I

    move v5, v4

    move v4, v3

    :goto_1
    const/16 v6, 0x10

    const/4 v7, 0x1

    if-ge v3, v5, :cond_5

    add-int/lit8 v8, v3, 0x1

    .line 4
    aget-char v3, v0, v3

    if-ne v3, p1, :cond_1

    .line 5
    iput v8, p0, Lcom/android/tools/r8/internal/lL;->d:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v7

    if-nez v2, :cond_0

    .line 6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v4, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v2, v0, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v9, 0x5c

    if-ne v3, v9, :cond_3

    .line 9
    iput v8, p0, Lcom/android/tools/r8/internal/lL;->d:I

    sub-int/2addr v8, v4

    add-int/lit8 v3, v8, -0x1

    if-nez v2, :cond_2

    mul-int/lit8 v8, v8, 0x2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    :cond_2
    invoke-virtual {v2, v0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->v()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    iget v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 14
    iget v5, p0, Lcom/android/tools/r8/internal/lL;->e:I

    move v3, v4

    goto :goto_1

    :cond_3
    const/16 v6, 0xa

    if-ne v3, v6, :cond_4

    .line 15
    iget v3, p0, Lcom/android/tools/r8/internal/lL;->f:I

    add-int/2addr v3, v7

    iput v3, p0, Lcom/android/tools/r8/internal/lL;->f:I

    .line 16
    iput v8, p0, Lcom/android/tools/r8/internal/lL;->g:I

    :cond_4
    move v3, v8

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    sub-int v2, v3, v4

    mul-int/lit8 v2, v2, 0x2

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v5

    :cond_6
    sub-int v5, v3, v4

    .line 18
    invoke-virtual {v2, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 19
    iput v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 20
    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    .line 21
    :cond_7
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 5

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 35
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    if-ge v1, v2, :cond_4

    .line 36
    iget-object v3, p0, Lcom/android/tools/r8/internal/lL;->l:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-eq v3, v2, :cond_0

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x2e

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    aget v3, v3, v1

    if-eqz p1, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    const/16 v2, 0x5b

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Z
    .locals 7

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    .line 23
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->g:I

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->g:I

    .line 24
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->e:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 25
    iput v1, p0, Lcom/android/tools/r8/internal/lL;->e:I

    .line 26
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 27
    :cond_0
    iput v3, p0, Lcom/android/tools/r8/internal/lL;->e:I

    .line 28
    :goto_0
    iput v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->a:Ljava/io/Reader;

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 30
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    .line 31
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->f:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->g:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    .line 32
    iget v5, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/lit8 v1, v1, 0x1

    .line 33
    iput v1, p0, Lcom/android/tools/r8/internal/lL;->g:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method public final b(Z)I
    .locals 9

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    .line 21
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 22
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 23
    iput v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 24
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 25
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 27
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 28
    aget-char v5, v0, v1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 29
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->f:I

    .line 30
    iput v4, p0, Lcom/android/tools/r8/internal/lL;->g:I

    goto/16 :goto_6

    :cond_3
    const/16 v7, 0x20

    if-eq v5, v7, :cond_f

    const/16 v7, 0xd

    if-eq v5, v7, :cond_f

    const/16 v7, 0x9

    if-ne v5, v7, :cond_4

    goto/16 :goto_6

    :cond_4
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_d

    .line 31
    iput v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    const/4 v8, 0x2

    if-ne v4, v2, :cond_5

    .line 32
    iput v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 33
    invoke-virtual {p0, v8}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v1

    .line 34
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->d:I

    if-nez v1, :cond_5

    goto :goto_1

    .line 35
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->e()V

    .line 36
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    aget-char v2, v0, v1

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_7

    if-eq v2, v7, :cond_6

    :goto_1
    return v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 37
    iput v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->w()V

    .line 39
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 40
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 41
    iput v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 42
    :goto_2
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v1, v8

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    if-le v1, v2, :cond_9

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 43
    :cond_8
    const-string p1, "Unterminated comment"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 44
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->d:I

    aget-char v1, v1, v2

    if-ne v1, v6, :cond_a

    .line 45
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->f:I

    add-int/lit8 v2, v2, 0x1

    .line 46
    iput v2, p0, Lcom/android/tools/r8/internal/lL;->g:I

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v8, :cond_c

    .line 47
    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v4, v1

    aget-char v2, v2, v4

    const-string v4, "*/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_b

    .line 48
    :goto_5
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    goto :goto_2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 49
    :cond_c
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v1, v8

    .line 50
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x23

    if-ne v5, v1, :cond_e

    .line 51
    iput v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->e()V

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->w()V

    .line 54
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 55
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    goto/16 :goto_0

    .line 56
    :cond_e
    iput v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    return v5

    :cond_f
    :goto_6
    move v1, v4

    goto/16 :goto_0
.end method

.method public final b(C)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 3
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 4
    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    .line 5
    iput v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 6
    iput v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->v()C

    .line 8
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 9
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 10
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->f:I

    .line 11
    iput v4, p0, Lcom/android/tools/r8/internal/lL;->g:I

    :cond_2
    move v1, v4

    goto :goto_1

    .line 12
    :cond_3
    iput v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    .line 13
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(I)V
    .locals 3

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/lL;->m:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->l:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 16
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/lL;->l:[I

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->l:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    aput p1, v0, v1

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 57
    new-instance v0, Lcom/android/tools/r8/internal/GU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/GU;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->b(I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->l:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->m:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->b(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lL;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()I
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/tools/r8/internal/lL;->l:[I

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->m:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v4, v1, v2

    const/4 v8, 0x6

    const/16 v10, 0x3d

    const/16 v11, 0x3a

    const/4 v15, 0x3

    const/16 v7, 0xa

    const/16 v12, 0x7d

    const/16 v16, 0x0

    const/16 v13, 0x3b

    const/16 v14, 0x2c

    const/4 v9, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-ne v4, v3, :cond_1

    aput v6, v1, v2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_1
    if-ne v4, v6, :cond_4

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/lL;->b(Z)I

    move-result v1

    if-eq v1, v14, :cond_0

    if-eq v1, v13, :cond_3

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_2

    iput v9, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v9

    :cond_2
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v16

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    goto :goto_0

    :cond_4
    if-eq v4, v15, :cond_5

    if-ne v4, v5, :cond_6

    :cond_5
    move v3, v9

    goto/16 :goto_16

    :cond_6
    if-ne v4, v9, :cond_9

    aput v5, v1, v2

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/lL;->b(Z)I

    move-result v1

    if-eq v1, v11, :cond_0

    if-ne v1, v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    iget v1, v0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->e:I

    if-lt v1, v2, :cond_7

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    iget-object v1, v0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    aget-char v1, v1, v2

    const/16 v9, 0x3e

    if-ne v1, v9, :cond_0

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    goto :goto_0

    :cond_8
    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v16

    :cond_9
    if-ne v4, v8, :cond_d

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/lL;->b:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/lL;->b(Z)I

    iget v1, v0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/lit8 v1, v1, 0x4

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->e:I

    if-le v1, v2, :cond_a

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    iget v1, v0, Lcom/android/tools/r8/internal/lL;->d:I

    iget-object v2, v0, Lcom/android/tools/r8/internal/lL;->c:[C

    aget-char v9, v2, v1

    const/16 v8, 0x29

    if-ne v9, v8, :cond_c

    add-int/lit8 v8, v1, 0x1

    aget-char v8, v2, v8

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_c

    add-int/lit8 v8, v1, 0x2

    aget-char v8, v2, v8

    if-ne v8, v12, :cond_c

    add-int/lit8 v8, v1, 0x3

    aget-char v8, v2, v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_c

    add-int/lit8 v8, v1, 0x4

    aget-char v2, v2, v8

    if-eq v2, v7, :cond_b

    goto :goto_1

    :cond_b
    add-int/2addr v1, v5

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->d:I

    :cond_c
    :goto_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/lL;->l:[I

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v2, v3

    const/4 v8, 0x7

    aput v8, v1, v2

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x7

    if-ne v4, v8, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Z)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_e

    const/16 v1, 0x11

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v1

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    goto :goto_2

    :cond_f
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v4, v2, :cond_45

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/lL;->b(Z)I

    move-result v2

    const/16 v8, 0x22

    if-eq v2, v8, :cond_44

    const/16 v8, 0x27

    if-eq v2, v8, :cond_43

    if-eq v2, v14, :cond_3f

    if-eq v2, v13, :cond_3f

    const/16 v8, 0x5b

    if-eq v2, v8, :cond_3e

    const/16 v8, 0x5d

    if-eq v2, v8, :cond_3d

    const/16 v8, 0x7b

    if-eq v2, v8, :cond_3c

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    iget-object v4, v0, Lcom/android/tools/r8/internal/lL;->c:[C

    aget-char v2, v4, v2

    const/16 v4, 0x74

    if-eq v2, v4, :cond_14

    const/16 v4, 0x54

    if-ne v2, v4, :cond_10

    goto :goto_4

    :cond_10
    const/16 v4, 0x66

    if-eq v2, v4, :cond_13

    const/16 v4, 0x46

    if-ne v2, v4, :cond_11

    goto :goto_3

    :cond_11
    const/16 v4, 0x6e

    if-eq v2, v4, :cond_12

    const/16 v4, 0x4e

    if-ne v2, v4, :cond_19

    :cond_12
    const-string v2, "null"

    const-string v4, "NULL"

    const/4 v8, 0x7

    goto :goto_5

    :cond_13
    :goto_3
    const-string v2, "false"

    const-string v4, "FALSE"

    const/4 v8, 0x6

    goto :goto_5

    :cond_14
    :goto_4
    const-string v2, "true"

    const-string v4, "TRUE"

    move v8, v5

    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    move v1, v3

    :goto_6
    if-ge v1, v9, :cond_17

    iget v5, v0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v5, v1

    iget v15, v0, Lcom/android/tools/r8/internal/lL;->e:I

    if-lt v5, v15, :cond_15

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_7

    :cond_15
    iget-object v5, v0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v15, v0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v15, v1

    aget-char v5, v5, v15

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v5, v15, :cond_16

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v5, v15, :cond_16

    goto :goto_7

    :cond_16
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x5

    const/4 v15, 0x3

    goto :goto_6

    :cond_17
    iget v1, v0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v1, v9

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->e:I

    if-lt v1, v2, :cond_18

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_18
    iget-object v1, v0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v2, v9

    aget-char v1, v1, v2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1b

    if-eq v1, v7, :cond_1b

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1b

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1a

    if-eq v1, v14, :cond_1b

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1a

    if-eq v1, v10, :cond_1a

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1b

    if-eq v1, v12, :cond_1b

    if-eq v1, v11, :cond_1b

    if-eq v1, v13, :cond_1a

    packed-switch v1, :pswitch_data_0

    :cond_19
    :goto_7
    const/4 v8, 0x0

    goto :goto_8

    :cond_1a
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    :cond_1b
    :pswitch_1
    iget v1, v0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->d:I

    iput v8, v0, Lcom/android/tools/r8/internal/lL;->h:I

    :goto_8
    if-eqz v8, :cond_1c

    return v8

    :cond_1c
    iget-object v1, v0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v4, v0, Lcom/android/tools/r8/internal/lL;->e:I

    const-wide/16 v8, 0x0

    move/from16 v18, v3

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_9
    add-int v13, v2, v15

    if-ne v13, v4, :cond_1f

    array-length v2, v1

    if-ne v15, v2, :cond_1d

    goto/16 :goto_13

    :cond_1d
    add-int/lit8 v2, v15, 0x1

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_f

    :cond_1e
    iget v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v4, v0, Lcom/android/tools/r8/internal/lL;->e:I

    :cond_1f
    add-int v13, v2, v15

    aget-char v13, v1, v13

    const/16 v11, 0x2b

    if-eq v13, v11, :cond_36

    const/16 v11, 0x45

    if-eq v13, v11, :cond_34

    const/16 v11, 0x65

    if-eq v13, v11, :cond_34

    const/16 v11, 0x2d

    if-eq v13, v11, :cond_32

    const/16 v11, 0x2e

    if-eq v13, v11, :cond_31

    const/16 v11, 0x30

    if-lt v13, v11, :cond_20

    const/16 v11, 0x39

    if-le v13, v11, :cond_21

    :cond_20
    const/16 v1, 0x9

    goto :goto_e

    :cond_21
    if-eq v5, v3, :cond_22

    if-nez v5, :cond_23

    :cond_22
    move/from16 v21, v4

    const/4 v3, 0x6

    goto :goto_d

    :cond_23
    if-ne v5, v6, :cond_27

    const-wide/16 v19, 0x0

    cmp-long v11, v8, v19

    if-nez v11, :cond_24

    goto/16 :goto_13

    :cond_24
    const-wide/16 v19, 0xa

    mul-long v19, v19, v8

    add-int/lit8 v13, v13, -0x30

    move/from16 v21, v4

    int-to-long v3, v13

    sub-long v19, v19, v3

    const-wide v3, -0xcccccccccccccccL

    cmp-long v3, v8, v3

    if-gtz v3, :cond_26

    if-nez v3, :cond_25

    cmp-long v3, v19, v8

    if-gez v3, :cond_25

    goto :goto_a

    :cond_25
    const/4 v3, 0x0

    goto :goto_b

    :cond_26
    :goto_a
    const/4 v3, 0x1

    :goto_b
    and-int v18, v18, v3

    move-wide/from16 v8, v19

    const/4 v3, 0x6

    goto/16 :goto_12

    :cond_27
    move/from16 v21, v4

    const/4 v3, 0x3

    if-ne v5, v3, :cond_28

    const/4 v3, 0x6

    const/4 v5, 0x4

    goto/16 :goto_12

    :cond_28
    const/4 v3, 0x5

    if-eq v5, v3, :cond_29

    const/4 v3, 0x6

    if-ne v5, v3, :cond_37

    goto :goto_c

    :cond_29
    const/4 v3, 0x6

    :goto_c
    const/4 v5, 0x7

    goto/16 :goto_12

    :goto_d
    add-int/lit8 v13, v13, -0x30

    neg-int v4, v13

    int-to-long v4, v4

    move-wide v8, v4

    move v5, v6

    goto/16 :goto_12

    :goto_e
    if-eq v13, v1, :cond_2b

    if-eq v13, v7, :cond_2b

    const/16 v1, 0xc

    if-eq v13, v1, :cond_2b

    const/16 v1, 0xd

    if-eq v13, v1, :cond_2b

    const/16 v1, 0x20

    if-eq v13, v1, :cond_2b

    const/16 v1, 0x23

    if-eq v13, v1, :cond_2a

    if-eq v13, v14, :cond_2b

    const/16 v1, 0x2f

    if-eq v13, v1, :cond_2a

    if-eq v13, v10, :cond_2a

    const/16 v1, 0x7b

    if-eq v13, v1, :cond_2b

    if-eq v13, v12, :cond_2b

    const/16 v1, 0x3a

    if-eq v13, v1, :cond_2b

    const/16 v1, 0x3b

    if-eq v13, v1, :cond_2a

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_13

    :cond_2a
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    :cond_2b
    :goto_f
    :pswitch_3
    if-ne v5, v6, :cond_2f

    if-eqz v18, :cond_2f

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v8, v1

    if-nez v1, :cond_2c

    if-eqz v17, :cond_2f

    :cond_2c
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-nez v1, :cond_2d

    if-nez v17, :cond_2f

    :cond_2d
    if-eqz v17, :cond_2e

    goto :goto_10

    :cond_2e
    neg-long v8, v8

    :goto_10
    iput-wide v8, v0, Lcom/android/tools/r8/internal/lL;->i:J

    iget v1, v0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v1, v15

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->d:I

    const/16 v5, 0xf

    iput v5, v0, Lcom/android/tools/r8/internal/lL;->h:I

    goto :goto_14

    :cond_2f
    if-eq v5, v6, :cond_30

    const/4 v1, 0x4

    if-eq v5, v1, :cond_30

    const/4 v1, 0x7

    if-ne v5, v1, :cond_38

    :cond_30
    iput v15, v0, Lcom/android/tools/r8/internal/lL;->j:I

    const/16 v5, 0x10

    iput v5, v0, Lcom/android/tools/r8/internal/lL;->h:I

    goto :goto_14

    :cond_31
    move/from16 v21, v4

    const/4 v3, 0x6

    if-ne v5, v6, :cond_38

    const/4 v5, 0x3

    goto :goto_12

    :cond_32
    move/from16 v21, v4

    const/4 v3, 0x6

    if-nez v5, :cond_33

    const/4 v5, 0x1

    const/16 v17, 0x1

    goto :goto_12

    :cond_33
    const/4 v4, 0x5

    if-ne v5, v4, :cond_38

    goto :goto_11

    :cond_34
    move/from16 v21, v4

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eq v5, v6, :cond_35

    const/4 v13, 0x4

    if-ne v5, v13, :cond_38

    :cond_35
    move v5, v4

    goto :goto_12

    :cond_36
    move/from16 v21, v4

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-ne v5, v4, :cond_38

    :goto_11
    move v5, v3

    :cond_37
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v21

    const/4 v3, 0x1

    const/16 v11, 0x3a

    goto/16 :goto_9

    :cond_38
    :goto_13
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_39

    return v5

    :cond_39
    iget-object v1, v0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    aget-char v1, v1, v2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3b

    if-eq v1, v7, :cond_3b

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3b

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x23

    if-eq v1, v2, :cond_3a

    if-eq v1, v14, :cond_3b

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3a

    if-eq v1, v10, :cond_3a

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_3b

    if-eq v1, v12, :cond_3b

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_3b

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_3a

    packed-switch v1, :pswitch_data_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    iput v7, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v7

    :cond_3a
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    :cond_3b
    :pswitch_5
    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v16

    :cond_3c
    move v1, v3

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v1

    :cond_3d
    move v1, v3

    if-ne v4, v1, :cond_40

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v2

    :cond_3e
    move v2, v15

    iput v2, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v2

    :cond_3f
    move v1, v3

    :cond_40
    if-eq v4, v1, :cond_42

    if-ne v4, v6, :cond_41

    goto :goto_15

    :cond_41
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v16

    :cond_42
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    iget v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/android/tools/r8/internal/lL;->d:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v1

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v1

    :cond_44
    const/16 v1, 0x9

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v1

    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_16
    aput v3, v1, v2

    const/4 v1, 0x5

    if-ne v4, v1, :cond_48

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Z)I

    move-result v2

    if-eq v2, v14, :cond_48

    const/16 v1, 0x3b

    if-eq v2, v1, :cond_47

    if-ne v2, v12, :cond_46

    iput v6, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v6

    :cond_46
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v16

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    :cond_48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Z)I

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4e

    const/16 v3, 0x27

    if-eq v2, v3, :cond_4d

    if-eq v2, v12, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    iget v3, v0, Lcom/android/tools/r8/internal/lL;->d:I

    sub-int/2addr v3, v1

    iput v3, v0, Lcom/android/tools/r8/internal/lL;->d:I

    int-to-char v1, v2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4a

    if-eq v1, v7, :cond_4a

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4a

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4a

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4a

    const/16 v2, 0x23

    if-eq v1, v2, :cond_49

    if-eq v1, v14, :cond_4a

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_49

    if-eq v1, v10, :cond_49

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_4a

    if-eq v1, v12, :cond_4a

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_4a

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_49

    packed-switch v1, :pswitch_data_3

    const/16 v1, 0xe

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v1

    :cond_49
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    :cond_4a
    :pswitch_7
    const-string v1, "Expected name"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v16

    :cond_4b
    const/4 v1, 0x5

    if-eq v4, v1, :cond_4c

    iput v6, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v6

    :cond_4c
    const-string v1, "Expected name"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v16

    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/lL;->e()V

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v1

    :cond_4e
    const/16 v1, 0xd

    iput v1, v0, Lcom/android/tools/r8/internal/lL;->h:I

    return v1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public g()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    add-int/lit8 v0, v0, -0x2

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    sub-int/2addr v0, v1

    aget v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->f:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->g:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()D
    .locals 6

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/android/tools/r8/internal/lL;->i:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v5, p0, Lcom/android/tools/r8/internal/lL;->j:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    :goto_2
    iput v3, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/lL;->b:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v2, Lcom/android/tools/r8/internal/GU;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/GU;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0
.end method

.method public o()I
    .locals 7

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/lL;->i:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    iput v3, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/tools/r8/internal/lL;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v5, p0, Lcom/android/tools/r8/internal/lL;->j:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    goto :goto_3

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v3, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v4, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    iput v3, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()J
    .locals 8

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/android/tools/r8/internal/lL;->i:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v5, p0, Lcom/android/tools/r8/internal/lL;->j:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    goto :goto_3

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v4, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v5, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v0, v6, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-wide v4

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/lL;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/android/tools/r8/internal/lL;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->j:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->h:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/tools/r8/internal/lL;->e:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->e()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    array-length v3, v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v4, p0, Lcom/android/tools/r8/internal/lL;->d:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->d:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0xa

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x5

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/16 v0, 0x9

    return v0

    :pswitch_5
    const/16 v0, 0x8

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_8
    const/4 v0, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v()C
    .locals 7

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->e:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/android/tools/r8/internal/lL;->d:I

    aget-char v0, v0, v1

    const/16 v6, 0xa

    if-eq v0, v6, :cond_f

    const/16 v4, 0x22

    if-eq v0, v4, :cond_e

    const/16 v4, 0x27

    if-eq v0, v4, :cond_e

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_e

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_e

    const/16 v4, 0x62

    if-eq v0, v4, :cond_d

    const/16 v4, 0x66

    if-eq v0, v4, :cond_c

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_b

    const/16 v5, 0x72

    if-eq v0, v5, :cond_a

    const/16 v5, 0x74

    if-eq v0, v5, :cond_9

    const/16 v5, 0x75

    if-ne v0, v5, :cond_8

    add-int/lit8 v1, v1, 0x5

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->e:I

    const/4 v5, 0x4

    if-le v1, v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    aget-char v3, v3, v0

    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    const/16 v6, 0x30

    if-lt v3, v6, :cond_4

    const/16 v6, 0x39

    if-gt v3, v6, :cond_4

    add-int/lit8 v3, v3, -0x30

    :goto_3
    add-int/2addr v3, v2

    int-to-char v2, v3

    goto :goto_4

    :cond_4
    const/16 v6, 0x61

    if-lt v3, v6, :cond_5

    if-gt v3, v4, :cond_5

    add-int/lit8 v3, v3, -0x57

    goto :goto_3

    :cond_5
    const/16 v6, 0x41

    if-lt v3, v6, :cond_6

    const/16 v6, 0x46

    if-gt v3, v6, :cond_6

    add-int/lit8 v3, v3, -0x37

    goto :goto_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    const-string v2, "\\u"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    return v2

    :cond_8
    const-string v0, "Invalid escape sequence"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->b(Ljava/lang/String;)V

    throw v3

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    return v6

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    :cond_e
    return v0

    :cond_f
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->f:I

    iput v5, p0, Lcom/android/tools/r8/internal/lL;->g:I

    return v0
.end method

.method public final w()V
    .locals 4

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->e:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/lL;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/tools/r8/internal/lL;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/tools/r8/internal/lL;->f:I

    iput v3, p0, Lcom/android/tools/r8/internal/lL;->g:I

    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    return-void
.end method

.method public final x()V
    .locals 3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/tools/r8/internal/lL;->e:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->c:[C

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->e()V

    :cond_2
    :pswitch_1
    iget v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    return-void

    :cond_3
    iput v1, p0, Lcom/android/tools/r8/internal/lL;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lL;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public y()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->f()I

    move-result v2

    :cond_1
    const/16 v3, 0x27

    const/16 v4, 0x22

    const-string v5, "<skipped>"

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    return-void

    :pswitch_2
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->d:I

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->d:I

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->x()V

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lL;->b(C)V

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/lL;->b(C)V

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->x()V

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/lL;->b(C)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/lL;->b(C)V

    goto :goto_2

    :pswitch_9
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    :goto_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/lL;->b(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_b
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/lL;->n:[Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v3, v6

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :cond_2
    iget v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/android/tools/r8/internal/lL;->m:I

    goto :goto_0

    :pswitch_c
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/lL;->b(I)V

    goto :goto_1

    :cond_3
    :goto_2
    iput v0, p0, Lcom/android/tools/r8/internal/lL;->h:I

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/lL;->o:[I

    iget v1, p0, Lcom/android/tools/r8/internal/lL;->m:I

    sub-int/2addr v1, v6

    aget v2, v0, v1

    add-int/2addr v2, v6

    aput v2, v0, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
