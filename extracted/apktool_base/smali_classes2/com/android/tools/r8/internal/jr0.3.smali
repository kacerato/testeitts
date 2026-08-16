.class public final Lcom/android/tools/r8/internal/jr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/he;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:[Lcom/android/tools/r8/internal/hr0;

.field public f:I

.field public final g:Lcom/android/tools/r8/internal/p8;

.field public h:I

.field public i:Lcom/android/tools/r8/internal/p8;

.field public j:I

.field public k:[Lcom/android/tools/r8/internal/hr0;

.field public l:I

.field public m:[Lcom/android/tools/r8/internal/ir0;

.field public n:[Lcom/android/tools/r8/internal/ir0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/he;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    const/16 p1, 0x100

    new-array p1, p1, [Lcom/android/tools/r8/internal/hr0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    new-instance p1, Lcom/android/tools/r8/internal/p8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/hr0;)I
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->k:[Lcom/android/tools/r8/internal/hr0;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 109
    new-array v0, v0, [Lcom/android/tools/r8/internal/hr0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jr0;->k:[Lcom/android/tools/r8/internal/hr0;

    .line 110
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/jr0;->j:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/jr0;->k:[Lcom/android/tools/r8/internal/hr0;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 111
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/android/tools/r8/internal/hr0;

    .line 112
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iput-object v0, p0, Lcom/android/tools/r8/internal/jr0;->k:[Lcom/android/tools/r8/internal/hr0;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->k:[Lcom/android/tools/r8/internal/hr0;

    iget v1, p0, Lcom/android/tools/r8/internal/jr0;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/jr0;->j:I

    aput-object p1, v0, v1

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    return p1
.end method

.method public final a(Ljava/lang/String;)I
    .locals 10

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    .line 117
    iget-object v2, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v3, v2

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 118
    iget v3, v2, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v3, v1, :cond_0

    iget v3, v2, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v3, v0, :cond_0

    iget-object v3, v2, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 119
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget p1, v2, Lcom/android/tools/r8/internal/hr0;->a:I

    return p1

    .line 121
    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/p8;->b(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v2

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const v4, 0xffff

    if-gt v3, v4, :cond_5

    .line 124
    iget v5, v2, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v6, v5, 0x2

    add-int v7, v6, v3

    .line 125
    iget-object v8, v2, Lcom/android/tools/r8/internal/p8;->a:[B

    array-length v8, v8

    if-le v7, v8, :cond_2

    add-int/lit8 v7, v3, 0x2

    .line 126
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/p8;->a(I)V

    .line 127
    :cond_2
    iget-object v7, v2, Lcom/android/tools/r8/internal/p8;->a:[B

    add-int/lit8 v8, v5, 0x1

    ushr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    .line 128
    aput-byte v9, v7, v5

    int-to-byte v5, v3

    .line 129
    aput-byte v5, v7, v8

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 130
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v1, :cond_3

    const/16 v9, 0x7f

    if-gt v8, v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    int-to-byte v8, v8

    .line 131
    aput-byte v8, v7, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_1

    .line 132
    :cond_3
    iput v6, v2, Lcom/android/tools/r8/internal/p8;->b:I

    .line 133
    invoke-virtual {v2, p1, v5, v4}, Lcom/android/tools/r8/internal/p8;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/p8;

    goto :goto_2

    .line 134
    :cond_4
    iput v6, v2, Lcom/android/tools/r8/internal/p8;->b:I

    .line 135
    :goto_2
    new-instance v2, Lcom/android/tools/r8/internal/hr0;

    iget v3, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    invoke-direct {v2, v3, v1, v0, p1}, Lcom/android/tools/r8/internal/hr0;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    return p1

    .line 136
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UTF8 string too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, v0

    const/16 v0, 0xc

    add-int/2addr v1, v0

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 144
    iget-object v2, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v3, v2

    rem-int v3, v1, v3

    aget-object v2, v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 145
    iget v3, v2, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v3, v0, :cond_0

    iget v3, v2, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lcom/android/tools/r8/internal/hr0;->d:Ljava/lang/String;

    .line 146
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 147
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget p1, v2, Lcom/android/tools/r8/internal/hr0;->a:I

    return p1

    .line 149
    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_0

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/p8;->a(III)V

    .line 151
    new-instance v0, Lcom/android/tools/r8/internal/hr0;

    iget v2, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    return p1
.end method

.method public final a(II)Lcom/android/tools/r8/internal/hr0;
    .locals 8

    add-int v0, p1, p2

    const v1, 0x7fffffff

    and-int v7, v0, v1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v1, v0

    rem-int v1, v7, v1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v1, v7, :cond_0

    iget-wide v1, v0, Lcom/android/tools/r8/internal/hr0;->f:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->b(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/hr0;

    iget v3, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    int-to-long v5, p2

    move-object v2, v0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/hr0;-><init>(IIJI)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hr0;
    .locals 11

    .line 152
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int v10, v0, v1

    .line 153
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v1, v0

    rem-int v1, v10, v1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 154
    iget v1, v0, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v1, v10, :cond_0

    iget-wide v1, v0, Lcom/android/tools/r8/internal/hr0;->f:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/hr0;->d:Ljava/lang/String;

    .line 155
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 156
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    invoke-virtual {p0, p3, p4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/p8;->a(III)V

    .line 159
    new-instance v0, Lcom/android/tools/r8/internal/hr0;

    iget v3, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    int-to-long v8, p2

    const/4 v5, 0x0

    move-object v2, v0

    move v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1
.end method

.method public final a(IJ)Lcom/android/tools/r8/internal/hr0;
    .locals 11

    long-to-int v0, p2

    add-int v1, p1, v0

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    const v3, 0x7fffffff

    and-int v9, v1, v3

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v3, v1

    rem-int v3, v9, v3

    aget-object v1, v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 7
    iget v3, v1, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v3, v9, :cond_0

    iget-wide v3, v1, Lcom/android/tools/r8/internal/hr0;->f:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    return-object v1

    .line 8
    :cond_0
    iget-object v1, v1, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_0

    .line 9
    :cond_1
    iget v5, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/p8;->b(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v1

    .line 11
    iget v3, v1, Lcom/android/tools/r8/internal/p8;->b:I

    add-int/lit8 v4, v3, 0x8

    .line 12
    iget-object v6, v1, Lcom/android/tools/r8/internal/p8;->a:[B

    array-length v6, v6

    if-le v4, v6, :cond_2

    const/16 v6, 0x8

    .line 13
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/p8;->a(I)V

    .line 14
    :cond_2
    iget-object v6, v1, Lcom/android/tools/r8/internal/p8;->a:[B

    add-int/lit8 v7, v3, 0x1

    ushr-int/lit8 v8, v2, 0x18

    int-to-byte v8, v8

    .line 15
    aput-byte v8, v6, v3

    add-int/lit8 v8, v3, 0x2

    ushr-int/lit8 v10, v2, 0x10

    int-to-byte v10, v10

    .line 16
    aput-byte v10, v6, v7

    add-int/lit8 v7, v3, 0x3

    ushr-int/lit8 v10, v2, 0x8

    int-to-byte v10, v10

    .line 17
    aput-byte v10, v6, v8

    add-int/lit8 v8, v3, 0x4

    int-to-byte v2, v2

    .line 18
    aput-byte v2, v6, v7

    add-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v0, 0x18

    int-to-byte v7, v7

    .line 19
    aput-byte v7, v6, v8

    add-int/lit8 v7, v3, 0x6

    ushr-int/lit8 v8, v0, 0x10

    int-to-byte v8, v8

    .line 20
    aput-byte v8, v6, v2

    add-int/lit8 v3, v3, 0x7

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    .line 21
    aput-byte v2, v6, v7

    int-to-byte v0, v0

    .line 22
    aput-byte v0, v6, v3

    .line 23
    iput v4, v1, Lcom/android/tools/r8/internal/p8;->b:I

    .line 24
    iget v0, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/hr0;

    move-object v4, v0

    move v6, p1

    move-wide v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/internal/hr0;-><init>(IIJI)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;
    .locals 4

    .line 137
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 138
    iget-object v1, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v2, v1

    rem-int v2, v0, v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 139
    iget v2, v1, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 140
    :cond_0
    iget-object v1, v1, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/internal/p8;->c(II)Lcom/android/tools/r8/internal/p8;

    .line 142
    new-instance v1, Lcom/android/tools/r8/internal/hr0;

    iget v2, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/android/tools/r8/internal/hr0;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hr0;
    .locals 11

    .line 160
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int v10, v0, v1

    .line 161
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v1, v0

    rem-int v1, v10, v1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 162
    iget v1, v0, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v1, v10, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/hr0;->c:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/hr0;->d:Ljava/lang/String;

    .line 164
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 165
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 166
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    const/4 v1, 0x7

    .line 168
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v1

    .line 169
    iget v1, v1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {p0, p3, p4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 170
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/p8;->a(III)V

    .line 171
    new-instance v0, Lcom/android/tools/r8/internal/hr0;

    iget v3, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/jr0;->f:I

    const-wide/16 v8, 0x0

    move-object v2, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/hr0;
    .locals 14

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    if-eqz p5, :cond_0

    shl-int/lit8 v3, v1, 0x8

    goto :goto_0

    :cond_0
    move v3, v1

    .line 172
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    mul-int/2addr v8, v7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v7

    mul-int/2addr v7, v8

    mul-int/2addr v7, v3

    const/16 v8, 0xf

    add-int/2addr v7, v8

    const v9, 0x7fffffff

    and-int/2addr v9, v7

    .line 173
    iget-object v7, v0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v10, v7

    rem-int v10, v9, v10

    aget-object v7, v7, v10

    :goto_1
    if-eqz v7, :cond_2

    .line 174
    iget v10, v7, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v10, v8, :cond_1

    iget v10, v7, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v10, v9, :cond_1

    iget-wide v10, v7, Lcom/android/tools/r8/internal/hr0;->f:J

    int-to-long v12, v3

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    iget-object v10, v7, Lcom/android/tools/r8/internal/hr0;->c:Ljava/lang/String;

    .line 175
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v7, Lcom/android/tools/r8/internal/hr0;->d:Ljava/lang/String;

    .line 176
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v7, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 177
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    return-object v7

    .line 178
    :cond_1
    iget-object v7, v7, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_1

    :cond_2
    if-gt v1, v2, :cond_3

    .line 179
    iget-object v2, v0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    const/16 v7, 0x9

    .line 180
    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v7

    .line 181
    iget v7, v7, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v2, p1, v7}, Lcom/android/tools/r8/internal/p8;->b(II)V

    goto :goto_3

    .line 182
    :cond_3
    iget-object v2, v0, Lcom/android/tools/r8/internal/jr0;->g:Lcom/android/tools/r8/internal/p8;

    if-eqz p5, :cond_4

    const/16 v7, 0xb

    goto :goto_2

    :cond_4
    const/16 v7, 0xa

    .line 183
    :goto_2
    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v7

    .line 184
    iget v7, v7, Lcom/android/tools/r8/internal/hr0;->a:I

    .line 185
    invoke-virtual {v2, p1, v7}, Lcom/android/tools/r8/internal/p8;->b(II)V

    .line 186
    :goto_3
    new-instance v10, Lcom/android/tools/r8/internal/hr0;

    iget v2, v0, Lcom/android/tools/r8/internal/jr0;->f:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Lcom/android/tools/r8/internal/jr0;->f:I

    int-to-long v7, v3

    const/16 v3, 0xf

    move-object v1, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, v10}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v1

    return-object v1
.end method

.method public final varargs a(Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hr0;
    .locals 11

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/tools/r8/internal/p8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    .line 83
    :cond_0
    array-length v1, p2

    .line 84
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 85
    aget-object v5, p2, v4

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v5

    iget v5, v5, Lcom/android/tools/r8/internal/hr0;->a:I

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget v4, v0, Lcom/android/tools/r8/internal/p8;->b:I

    .line 87
    iget v6, p1, Lcom/android/tools/r8/internal/Qz;->a:I

    .line 88
    iget-object v7, p1, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    .line 89
    iget-object v8, p1, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    .line 90
    iget-object v9, p1, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    .line 91
    iget-boolean v10, p1, Lcom/android/tools/r8/internal/Qz;->e:Z

    move-object v5, p0

    .line 92
    invoke-virtual/range {v5 .. v10}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/hr0;

    move-result-object v5

    iget v5, v5, Lcom/android/tools/r8/internal/hr0;->a:I

    .line 93
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_2

    .line 95
    aget v6, v2, v5

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    :cond_2
    iget v0, v0, Lcom/android/tools/r8/internal/p8;->b:I

    sub-int/2addr v0, v4

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Qz;->hashCode()I

    move-result p1

    .line 98
    array-length v1, p2

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v5, p2, v2

    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const p2, 0x7fffffff

    and-int v10, p1, p2

    .line 100
    iget-object p1, p0, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    iget-object p1, p1, Lcom/android/tools/r8/internal/p8;->a:[B

    .line 101
    iget-object p2, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v1, p2

    rem-int v1, v10, v1

    aget-object p2, p2, v1

    :goto_3
    if-eqz p2, :cond_7

    .line 102
    iget v1, p2, Lcom/android/tools/r8/internal/hr0;->b:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    iget v1, p2, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v1, v10, :cond_6

    .line 103
    iget-wide v1, p2, Lcom/android/tools/r8/internal/hr0;->f:J

    long-to-int v1, v1

    move v2, v3

    :goto_4
    if-ge v2, v0, :cond_5

    add-int v5, v4, v2

    .line 104
    aget-byte v5, p1, v5

    add-int v6, v1, v2

    aget-byte v6, p1, v6

    if-eq v5, v6, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 105
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/jr0;->i:Lcom/android/tools/r8/internal/p8;

    iput v4, p1, Lcom/android/tools/r8/internal/p8;->b:I

    return-object p2

    .line 106
    :cond_6
    :goto_5
    iget-object p2, p2, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_3

    .line 107
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/hr0;

    iget v6, p0, Lcom/android/tools/r8/internal/jr0;->h:I

    add-int/lit8 p2, v6, 0x1

    iput p2, p0, Lcom/android/tools/r8/internal/jr0;->h:I

    int-to-long v8, v4

    const/16 v7, 0x40

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/hr0;-><init>(IIJI)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jr0;->b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/hr0;
    .locals 6

    .line 26
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 28
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 29
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 30
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    .line 31
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 32
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 33
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 34
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 35
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 36
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    .line 37
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 40
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 41
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 42
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/jr0;->a(II)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 44
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 45
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x5

    .line 46
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/jr0;->a(IJ)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 47
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 48
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/jr0;->a(IJ)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 50
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 51
    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x8

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 53
    :cond_8
    instance-of v0, p1, Lcom/android/tools/r8/internal/tt0;

    if-eqz v0, :cond_b

    .line 54
    check-cast p1, Lcom/android/tools/r8/internal/tt0;

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x7

    if-ne v0, v1, :cond_9

    .line 56
    iget-object v0, p1, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v1, p1, Lcom/android/tools/r8/internal/tt0;->c:I

    iget p1, p1, Lcom/android/tools/r8/internal/tt0;->d:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 60
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 62
    :cond_b
    instance-of v0, p1, Lcom/android/tools/r8/internal/Qz;

    if-eqz v0, :cond_c

    .line 63
    check-cast p1, Lcom/android/tools/r8/internal/Qz;

    .line 64
    iget v1, p1, Lcom/android/tools/r8/internal/Qz;->a:I

    .line 65
    iget-object v2, p1, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    .line 66
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    .line 67
    iget-object v4, p1, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    .line 68
    iget-boolean v5, p1, Lcom/android/tools/r8/internal/Qz;->e:Z

    move-object v0, p0

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 70
    :cond_c
    instance-of v0, p1, Lcom/android/tools/r8/internal/wh;

    if-eqz v0, :cond_d

    .line 71
    check-cast p1, Lcom/android/tools/r8/internal/wh;

    .line 72
    iget-object v0, p1, Lcom/android/tools/r8/internal/wh;->a:Ljava/lang/String;

    .line 73
    iget-object v1, p1, Lcom/android/tools/r8/internal/wh;->b:Ljava/lang/String;

    .line 74
    iget-object v2, p1, Lcom/android/tools/r8/internal/wh;->c:Lcom/android/tools/r8/internal/Qz;

    .line 75
    iget-object p1, p1, Lcom/android/tools/r8/internal/wh;->d:[Ljava/lang/Object;

    .line 76
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/jr0;->a(Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 77
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    const/16 v2, 0x11

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/tools/r8/internal/jr0;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    return-object p1

    .line 78
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(ILjava/lang/String;)I
    .locals 10

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x81

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    const v2, 0x7fffffff

    and-int v9, v0, v2

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v2, v0

    rem-int v2, v9, v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 22
    iget v2, v0, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v2, v9, :cond_0

    iget-wide v2, v0, Lcom/android/tools/r8/internal/hr0;->f:J

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    iget p1, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    return p1

    .line 25
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/hr0;

    iget v4, p0, Lcom/android/tools/r8/internal/jr0;->j:I

    int-to-long v7, p1

    const/16 v5, 0x81

    move-object v3, v0

    move-object v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->a(Lcom/android/tools/r8/internal/hr0;)I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 4

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x80

    add-int/2addr v0, v1

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v3, v2

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 16
    iget v3, v2, Lcom/android/tools/r8/internal/hr0;->b:I

    if-ne v3, v1, :cond_0

    iget v3, v2, Lcom/android/tools/r8/internal/hr0;->h:I

    if-ne v3, v0, :cond_0

    iget-object v3, v2, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    iget p1, v2, Lcom/android/tools/r8/internal/hr0;->a:I

    return p1

    .line 18
    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    goto :goto_0

    .line 19
    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/hr0;

    iget v3, p0, Lcom/android/tools/r8/internal/jr0;->j:I

    invoke-direct {v2, v3, v1, v0, p1}, Lcom/android/tools/r8/internal/hr0;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/jr0;->a(Lcom/android/tools/r8/internal/hr0;)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/hr0;)Lcom/android/tools/r8/internal/hr0;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/jr0;->d:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_2

    .line 2
    array-length v0, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 3
    new-array v2, v1, [Lcom/android/tools/r8/internal/hr0;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    .line 5
    iget v4, v3, Lcom/android/tools/r8/internal/hr0;->h:I

    rem-int/2addr v4, v1

    .line 6
    iget-object v5, v3, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    .line 7
    aget-object v6, v2, v4

    iput-object v6, v3, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    .line 8
    aput-object v3, v2, v4

    move-object v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9
    :cond_1
    iput-object v2, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    .line 10
    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/jr0;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/jr0;->d:I

    .line 11
    iget v0, p1, Lcom/android/tools/r8/internal/hr0;->h:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/jr0;->e:[Lcom/android/tools/r8/internal/hr0;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 12
    aget-object v2, v1, v0

    iput-object v2, p1, Lcom/android/tools/r8/internal/hr0;->i:Lcom/android/tools/r8/internal/hr0;

    .line 13
    aput-object p1, v1, v0

    return-object p1
.end method
