.class public final Lcom/android/tools/r8/internal/Cl;
.super Lcom/android/tools/r8/internal/Ql;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/hk;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/android/tools/r8/internal/Pl;

.field public final e:[Lcom/android/tools/r8/internal/Cl;

.field public final f:[Lcom/android/tools/r8/internal/Hl;

.field public final g:[Lcom/android/tools/r8/internal/Ol;

.field public final h:[Lcom/android/tools/r8/internal/Ol;

.field public final i:[Lcom/android/tools/r8/internal/Ol;

.field public final j:[Lcom/android/tools/r8/internal/Sl;

.field public final k:[I

.field public final l:[I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;)V
    .locals 9

    .line 45
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hk;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/android/tools/r8/internal/Ul;->a(Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/tools/r8/internal/Cl;->d:Lcom/android/tools/r8/internal/Pl;

    .line 49
    iget-object p3, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 50
    iget-object p3, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 51
    new-array p3, p3, [Lcom/android/tools/r8/internal/Sl;

    goto :goto_0

    .line 52
    :cond_0
    sget-object p3, Lcom/android/tools/r8/internal/Ul;->g:[Lcom/android/tools/r8/internal/Sl;

    .line 53
    :goto_0
    iput-object p3, p0, Lcom/android/tools/r8/internal/Cl;->j:[Lcom/android/tools/r8/internal/Sl;

    const/4 p3, 0x0

    move v0, p3

    .line 54
    :goto_1
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cl;->j:[Lcom/android/tools/r8/internal/Sl;

    new-instance v2, Lcom/android/tools/r8/internal/Sl;

    .line 56
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dl;

    .line 57
    invoke-direct {v2, v3, p2, p0, v0}, Lcom/android/tools/r8/internal/Sl;-><init>(Lcom/android/tools/r8/internal/dl;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 59
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    new-array v0, v0, [Lcom/android/tools/r8/internal/Cl;

    goto :goto_2

    .line 61
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/Ul;->c:[Lcom/android/tools/r8/internal/Cl;

    .line 62
    :goto_2
    iput-object v0, p0, Lcom/android/tools/r8/internal/Cl;->e:[Lcom/android/tools/r8/internal/Cl;

    move v0, p3

    .line 63
    :goto_3
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cl;->e:[Lcom/android/tools/r8/internal/Cl;

    new-instance v2, Lcom/android/tools/r8/internal/Cl;

    .line 65
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/hk;

    .line 66
    invoke-direct {v2, v3, p2, p0}, Lcom/android/tools/r8/internal/Cl;-><init>(Lcom/android/tools/r8/internal/hk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 67
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 68
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 69
    new-array v0, v0, [Lcom/android/tools/r8/internal/Hl;

    goto :goto_4

    .line 70
    :cond_4
    sget-object v0, Lcom/android/tools/r8/internal/Ul;->e:[Lcom/android/tools/r8/internal/Hl;

    .line 71
    :goto_4
    iput-object v0, p0, Lcom/android/tools/r8/internal/Cl;->f:[Lcom/android/tools/r8/internal/Hl;

    move v0, p3

    .line 72
    :goto_5
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 73
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cl;->f:[Lcom/android/tools/r8/internal/Hl;

    new-instance v2, Lcom/android/tools/r8/internal/Hl;

    .line 74
    iget-object v3, p1, Lcom/android/tools/r8/internal/hk;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/nk;

    .line 75
    invoke-direct {v2, v3, p2, p0}, Lcom/android/tools/r8/internal/Hl;-><init>(Lcom/android/tools/r8/internal/nk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 76
    :cond_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 77
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 78
    new-array v0, v0, [Lcom/android/tools/r8/internal/Ol;

    goto :goto_6

    .line 79
    :cond_6
    sget-object v0, Lcom/android/tools/r8/internal/Ul;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 80
    :goto_6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    move v0, p3

    .line 81
    :goto_7
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 82
    iget-object v7, p0, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    new-instance v8, Lcom/android/tools/r8/internal/Ol;

    .line 83
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/Ek;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, v0

    .line 84
    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/Ol;-><init>(Lcom/android/tools/r8/internal/Ek;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;IZ)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 85
    :cond_7
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 86
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/Ol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/Ol;

    goto :goto_8

    .line 87
    :cond_8
    sget-object v0, Lcom/android/tools/r8/internal/Ul;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 88
    :goto_8
    iput-object v0, p0, Lcom/android/tools/r8/internal/Cl;->h:[Lcom/android/tools/r8/internal/Ol;

    .line 89
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 90
    iget-object v0, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 91
    new-array v0, v0, [Lcom/android/tools/r8/internal/Ol;

    goto :goto_9

    .line 92
    :cond_9
    sget-object v0, Lcom/android/tools/r8/internal/Ul;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 93
    :goto_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/Cl;->i:[Lcom/android/tools/r8/internal/Ol;

    move v0, p3

    .line 94
    :goto_a
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 95
    iget-object v7, p0, Lcom/android/tools/r8/internal/Cl;->i:[Lcom/android/tools/r8/internal/Ol;

    new-instance v8, Lcom/android/tools/r8/internal/Ol;

    .line 96
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/Ek;

    const/4 v6, 0x1

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, v0

    .line 97
    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/Ol;-><init>(Lcom/android/tools/r8/internal/Ek;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;IZ)V

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    move v0, p3

    .line 98
    :goto_b
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 99
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cl;->j:[Lcom/android/tools/r8/internal/Sl;

    aget-object v1, v1, v0

    .line 100
    iget v2, v1, Lcom/android/tools/r8/internal/Sl;->g:I

    .line 101
    new-array v2, v2, [Lcom/android/tools/r8/internal/Ol;

    .line 102
    iput-object v2, v1, Lcom/android/tools/r8/internal/Sl;->h:[Lcom/android/tools/r8/internal/Ol;

    .line 103
    iput p3, v1, Lcom/android/tools/r8/internal/Sl;->g:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    move v0, p3

    .line 104
    :goto_c
    iget-object v1, p1, Lcom/android/tools/r8/internal/hk;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 105
    iget-object v1, p0, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    aget-object v1, v1, v0

    .line 106
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    if-eqz v2, :cond_c

    .line 107
    iget-object v3, v2, Lcom/android/tools/r8/internal/Sl;->h:[Lcom/android/tools/r8/internal/Ol;

    .line 108
    iget v4, v2, Lcom/android/tools/r8/internal/Sl;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lcom/android/tools/r8/internal/Sl;->g:I

    .line 109
    aput-object v1, v3, v4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 110
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->j:[Lcom/android/tools/r8/internal/Sl;

    array-length v1, v0

    move v2, p3

    move v3, v2

    :goto_d
    const/4 v4, 0x1

    if-ge v2, v1, :cond_10

    aget-object v5, v0, v2

    .line 111
    iget-object v5, v5, Lcom/android/tools/r8/internal/Sl;->h:[Lcom/android/tools/r8/internal/Ol;

    array-length v6, v5

    if-ne v6, v4, :cond_e

    aget-object v4, v5, p3

    .line 112
    iget-boolean v4, v4, Lcom/android/tools/r8/internal/Ol;->g:Z

    if-eqz v4, :cond_e

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_e
    if-gtz v3, :cond_f

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 113
    :cond_f
    new-instance p1, Lcom/android/tools/r8/internal/Fl;

    const-string p2, "Synthetic oneofs must come last."

    .line 114
    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 115
    throw p1

    .line 116
    :cond_10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->j:[Lcom/android/tools/r8/internal/Sl;

    array-length v0, v0

    .line 117
    iget-object p2, p2, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 118
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;)V

    .line 119
    iget-object p2, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 120
    iget-object p2, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 121
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cl;->k:[I

    .line 122
    iget-object p2, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 123
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cl;->l:[I

    .line 124
    iget-object p1, p1, Lcom/android/tools/r8/internal/hk;->h:Ljava/util/List;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/dk;

    .line 126
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->k:[I

    .line 127
    iget v1, p2, Lcom/android/tools/r8/internal/dk;->c:I

    .line 128
    aput v1, v0, p3

    .line 129
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->l:[I

    .line 130
    iget p2, p2, Lcom/android/tools/r8/internal/dk;->d:I

    .line 131
    aput p2, v0, p3

    add-int/2addr p3, v4

    goto :goto_f

    .line 132
    :cond_11
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cl;->k:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 133
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cl;->l:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-void

    .line 134
    :cond_12
    sget-object p1, Lcom/android/tools/r8/internal/Ul;->b:[I

    .line 135
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->k:[I

    .line 136
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->l:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v1, p1

    .line 5
    :goto_0
    sget-object v2, Lcom/android/tools/r8/internal/hk;->n:Lcom/android/tools/r8/internal/hk;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hk;->b()Lcom/android/tools/r8/internal/ak;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v3, v2, Lcom/android/tools/r8/internal/ak;->b:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lcom/android/tools/r8/internal/ak;->b:I

    .line 8
    iput-object v1, v2, Lcom/android/tools/r8/internal/ak;->c:Ljava/io/Serializable;

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 10
    sget-object v1, Lcom/android/tools/r8/internal/dk;->g:Lcom/android/tools/r8/internal/dk;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dk;->b()Lcom/android/tools/r8/internal/ck;

    move-result-object v1

    .line 11
    iget v3, v1, Lcom/android/tools/r8/internal/ck;->b:I

    or-int/2addr v3, v4

    iput v3, v1, Lcom/android/tools/r8/internal/ck;->b:I

    .line 12
    iput v4, v1, Lcom/android/tools/r8/internal/ck;->c:I

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 14
    iget v3, v1, Lcom/android/tools/r8/internal/ck;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Lcom/android/tools/r8/internal/ck;->b:I

    const/high16 v3, 0x20000000

    .line 15
    iput v3, v1, Lcom/android/tools/r8/internal/ck;->d:I

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ck;->b()Lcom/android/tools/r8/internal/dk;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dk;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    iget-object v5, v2, Lcom/android/tools/r8/internal/ak;->m:Lcom/android/tools/r8/internal/Af0;

    if-nez v5, :cond_2

    .line 20
    iget v5, v2, Lcom/android/tools/r8/internal/ak;->b:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_1

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v2, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    .line 22
    iget v5, v2, Lcom/android/tools/r8/internal/ak;->b:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Lcom/android/tools/r8/internal/ak;->b:I

    .line 23
    :cond_1
    iget-object v5, v2, Lcom/android/tools/r8/internal/ak;->l:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/Af0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 26
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ak;->b()Lcom/android/tools/r8/internal/hk;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hk;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    iput-object v1, p0, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    .line 29
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    .line 30
    sget-object p1, Lcom/android/tools/r8/internal/Ul;->c:[Lcom/android/tools/r8/internal/Cl;

    .line 31
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->e:[Lcom/android/tools/r8/internal/Cl;

    .line 32
    sget-object p1, Lcom/android/tools/r8/internal/Ul;->e:[Lcom/android/tools/r8/internal/Hl;

    .line 33
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->f:[Lcom/android/tools/r8/internal/Hl;

    .line 34
    sget-object p1, Lcom/android/tools/r8/internal/Ul;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 35
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    .line 36
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->h:[Lcom/android/tools/r8/internal/Ol;

    .line 37
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->i:[Lcom/android/tools/r8/internal/Ol;

    .line 38
    sget-object p1, Lcom/android/tools/r8/internal/Ul;->g:[Lcom/android/tools/r8/internal/Sl;

    .line 39
    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->j:[Lcom/android/tools/r8/internal/Sl;

    .line 40
    new-instance p1, Lcom/android/tools/r8/internal/Pl;

    invoke-direct {p1, v0, p0}, Lcom/android/tools/r8/internal/Pl;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/Cl;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->d:Lcom/android/tools/r8/internal/Pl;

    .line 41
    filled-new-array {v4}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->k:[I

    .line 42
    filled-new-array {v3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cl;->l:[I

    return-void

    .line 43
    :cond_3
    invoke-static {v1}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object p1

    throw p1

    .line 44
    :cond_4
    invoke-static {v1}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pl;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->d:Lcom/android/tools/r8/internal/Pl;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hk;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/fW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    return-object v0
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->e:[Lcom/android/tools/r8/internal/Cl;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Cl;->e()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/android/tools/r8/internal/Ol;->a(Lcom/android/tools/r8/internal/Ol;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->h:[Lcom/android/tools/r8/internal/Ol;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v0, v2

    :goto_2
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/android/tools/r8/internal/Cl;->h:[Lcom/android/tools/r8/internal/Ol;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v0, v3, v0

    aget-object v3, v3, v1

    iget-object v4, v0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v4, v4, Lcom/android/tools/r8/internal/Ek;->d:I

    iget-object v5, v3, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v5, v5, Lcom/android/tools/r8/internal/Ek;->d:I

    if-eq v4, v5, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/Fl;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Field number "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v4, v4, Lcom/android/tools/r8/internal/Ek;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has already been used in \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" by field \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->i:[Lcom/android/tools/r8/internal/Ol;

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ol;->a(Lcom/android/tools/r8/internal/Ol;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final f()Lcom/android/tools/r8/internal/Tk;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hk;->j:Lcom/android/tools/r8/internal/Tk;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/Tk;->j:Lcom/android/tools/r8/internal/Tk;

    :cond_0
    return-object v0
.end method
