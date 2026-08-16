.class public final Lcom/android/tools/r8/internal/Pl;
.super Lcom/android/tools/r8/internal/Ql;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Mk;

.field public final c:[Lcom/android/tools/r8/internal/Cl;

.field public final d:[Lcom/android/tools/r8/internal/Hl;

.field public final e:[Lcom/android/tools/r8/internal/Tl;

.field public final f:[Lcom/android/tools/r8/internal/Ol;

.field public final g:[Lcom/android/tools/r8/internal/Pl;

.field public final h:Lcom/android/tools/r8/internal/El;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Mk;[Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/El;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 6
    iget-object v5, v4, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    .line 7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 10
    :goto_1
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->f:Lcom/android/tools/r8/internal/TI;

    .line 11
    check-cast v3, Lcom/android/tools/r8/internal/DH;

    .line 12
    iget v4, v3, Lcom/android/tools/r8/internal/DH;->d:I

    if-ge v1, v4, :cond_3

    .line 13
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/DH;->k(I)V

    .line 14
    iget-object v3, v3, Lcom/android/tools/r8/internal/DH;->c:[I

    aget v3, v3, v1

    if-ltz v3, :cond_2

    .line 15
    iget-object v4, p1, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 16
    iget-object v4, p1, Lcom/android/tools/r8/internal/Mk;->e:Lcom/android/tools/r8/internal/zR;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Pl;

    if-nez v3, :cond_1

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Fl;

    const-string p2, "Invalid public dependency index."

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Pl;Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/tools/r8/internal/Pl;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pl;->g:[Lcom/android/tools/r8/internal/Pl;

    .line 21
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Mk;->a()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p3, p0, p2}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Pl;Ljava/lang/String;)V

    .line 24
    iget-object p2, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 25
    iget-object p2, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 26
    new-array p2, p2, [Lcom/android/tools/r8/internal/Cl;

    goto :goto_3

    .line 27
    :cond_4
    sget-object p2, Lcom/android/tools/r8/internal/Ul;->c:[Lcom/android/tools/r8/internal/Cl;

    .line 28
    :goto_3
    iput-object p2, p0, Lcom/android/tools/r8/internal/Pl;->c:[Lcom/android/tools/r8/internal/Cl;

    move p2, v2

    .line 29
    :goto_4
    iget-object p3, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    if-ge p2, p3, :cond_5

    .line 30
    iget-object p3, p0, Lcom/android/tools/r8/internal/Pl;->c:[Lcom/android/tools/r8/internal/Cl;

    new-instance v1, Lcom/android/tools/r8/internal/Cl;

    .line 31
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->h:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/hk;

    .line 32
    invoke-direct {v1, v3, p0, v0}, Lcom/android/tools/r8/internal/Cl;-><init>(Lcom/android/tools/r8/internal/hk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;)V

    .line 33
    aput-object v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 34
    :cond_5
    iget-object p2, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 35
    iget-object p2, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 36
    new-array p2, p2, [Lcom/android/tools/r8/internal/Hl;

    goto :goto_5

    .line 37
    :cond_6
    sget-object p2, Lcom/android/tools/r8/internal/Ul;->e:[Lcom/android/tools/r8/internal/Hl;

    .line 38
    :goto_5
    iput-object p2, p0, Lcom/android/tools/r8/internal/Pl;->d:[Lcom/android/tools/r8/internal/Hl;

    move p2, v2

    .line 39
    :goto_6
    iget-object p3, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    .line 40
    iget-object p3, p0, Lcom/android/tools/r8/internal/Pl;->d:[Lcom/android/tools/r8/internal/Hl;

    new-instance v1, Lcom/android/tools/r8/internal/Hl;

    .line 41
    iget-object v3, p1, Lcom/android/tools/r8/internal/Mk;->i:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/nk;

    .line 42
    invoke-direct {v1, v3, p0, v0}, Lcom/android/tools/r8/internal/Hl;-><init>(Lcom/android/tools/r8/internal/nk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;)V

    aput-object v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 43
    :cond_7
    iget-object p2, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 44
    iget-object p2, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 45
    new-array p2, p2, [Lcom/android/tools/r8/internal/Tl;

    goto :goto_7

    .line 46
    :cond_8
    sget-object p2, Lcom/android/tools/r8/internal/Ul;->f:[Lcom/android/tools/r8/internal/Tl;

    .line 47
    :goto_7
    iput-object p2, p0, Lcom/android/tools/r8/internal/Pl;->e:[Lcom/android/tools/r8/internal/Tl;

    move p2, v2

    .line 48
    :goto_8
    iget-object p3, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_9

    .line 49
    iget-object p3, p0, Lcom/android/tools/r8/internal/Pl;->e:[Lcom/android/tools/r8/internal/Tl;

    new-instance v0, Lcom/android/tools/r8/internal/Tl;

    .line 50
    iget-object v1, p1, Lcom/android/tools/r8/internal/Mk;->j:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/jl;

    .line 51
    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/Tl;-><init>(Lcom/android/tools/r8/internal/jl;Lcom/android/tools/r8/internal/Pl;)V

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 52
    :cond_9
    iget-object p2, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a

    .line 53
    iget-object p2, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 54
    new-array p2, p2, [Lcom/android/tools/r8/internal/Ol;

    goto :goto_9

    .line 55
    :cond_a
    sget-object p2, Lcom/android/tools/r8/internal/Ul;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 56
    :goto_9
    iput-object p2, p0, Lcom/android/tools/r8/internal/Pl;->f:[Lcom/android/tools/r8/internal/Ol;

    .line 57
    :goto_a
    iget-object p2, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_b

    .line 58
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pl;->f:[Lcom/android/tools/r8/internal/Ol;

    new-instance p3, Lcom/android/tools/r8/internal/Ol;

    .line 59
    iget-object v0, p1, Lcom/android/tools/r8/internal/Mk;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/internal/Ek;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, p3

    move-object v5, p0

    move v7, v2

    .line 60
    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/Ol;-><init>(Lcom/android/tools/r8/internal/Ek;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;IZ)V

    aput-object p3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/internal/Cl;)V
    .locals 6

    .line 61
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    .line 62
    new-instance v0, Lcom/android/tools/r8/internal/El;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/tools/r8/internal/Pl;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/El;-><init>([Lcom/android/tools/r8/internal/Pl;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 63
    sget-object v2, Lcom/android/tools/r8/internal/Mk;->p:Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Mk;->c()Lcom/android/tools/r8/internal/Lk;

    move-result-object v2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v4, p2, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".placeholder.proto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iget v4, v2, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 69
    iput-object v3, v2, Lcom/android/tools/r8/internal/Lk;->c:Ljava/io/Serializable;

    .line 70
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iget v3, v2, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 73
    iput-object p1, v2, Lcom/android/tools/r8/internal/Lk;->d:Ljava/io/Serializable;

    .line 74
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 75
    iget-object v3, p2, Lcom/android/tools/r8/internal/Cl;->b:Lcom/android/tools/r8/internal/hk;

    .line 76
    iget-object v4, v2, Lcom/android/tools/r8/internal/Lk;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v4, :cond_1

    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iget v4, v2, Lcom/android/tools/r8/internal/Lk;->b:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_0

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v2, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    .line 80
    iget v4, v2, Lcom/android/tools/r8/internal/Lk;->b:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Lcom/android/tools/r8/internal/Lk;->b:I

    .line 81
    :cond_0
    iget-object v4, v2, Lcom/android/tools/r8/internal/Lk;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/Af0;->a(Lcom/android/tools/r8/internal/K0;)V

    .line 84
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Lk;->b()Lcom/android/tools/r8/internal/Mk;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Mk;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    iput-object v2, p0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    .line 87
    new-array v1, v1, [Lcom/android/tools/r8/internal/Pl;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Pl;->g:[Lcom/android/tools/r8/internal/Pl;

    .line 88
    filled-new-array {p2}, [Lcom/android/tools/r8/internal/Cl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Pl;->c:[Lcom/android/tools/r8/internal/Cl;

    .line 89
    sget-object v1, Lcom/android/tools/r8/internal/Ul;->e:[Lcom/android/tools/r8/internal/Hl;

    .line 90
    iput-object v1, p0, Lcom/android/tools/r8/internal/Pl;->d:[Lcom/android/tools/r8/internal/Hl;

    .line 91
    sget-object v1, Lcom/android/tools/r8/internal/Ul;->f:[Lcom/android/tools/r8/internal/Tl;

    .line 92
    iput-object v1, p0, Lcom/android/tools/r8/internal/Pl;->e:[Lcom/android/tools/r8/internal/Tl;

    .line 93
    sget-object v1, Lcom/android/tools/r8/internal/Ul;->d:[Lcom/android/tools/r8/internal/Ol;

    .line 94
    iput-object v1, p0, Lcom/android/tools/r8/internal/Pl;->f:[Lcom/android/tools/r8/internal/Ol;

    .line 95
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Pl;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;)V

    return-void

    .line 97
    :cond_2
    invoke-static {v2}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object p1

    throw p1
.end method

.method public static a(Lcom/android/tools/r8/internal/Mk;[Lcom/android/tools/r8/internal/Pl;)Lcom/android/tools/r8/internal/Pl;
    .locals 11

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/El;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/El;-><init>([Lcom/android/tools/r8/internal/Pl;)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Pl;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/internal/Pl;-><init>(Lcom/android/tools/r8/internal/Mk;[Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/El;)V

    .line 4
    iget-object p0, v1, Lcom/android/tools/r8/internal/Pl;->c:[Lcom/android/tools/r8/internal/Cl;

    array-length p1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Cl;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, v1, Lcom/android/tools/r8/internal/Pl;->e:[Lcom/android/tools/r8/internal/Tl;

    array-length p1, p0

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_4

    aget-object v3, p0, v2

    .line 7
    iget-object v3, v3, Lcom/android/tools/r8/internal/Tl;->e:[Lcom/android/tools/r8/internal/Rl;

    .line 8
    array-length v4, v3

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 9
    iget-object v7, v6, Lcom/android/tools/r8/internal/Rl;->d:Lcom/android/tools/r8/internal/Pl;

    .line 10
    iget-object v7, v7, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 11
    iget-object v8, v6, Lcom/android/tools/r8/internal/Rl;->b:Lcom/android/tools/r8/internal/Wk;

    .line 12
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Wk;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v7

    .line 13
    instance-of v7, v7, Lcom/android/tools/r8/internal/Cl;

    const-string v8, "\" is not a message type."

    const-string v9, "\""

    if-eqz v7, :cond_2

    .line 14
    iget-object v7, v6, Lcom/android/tools/r8/internal/Rl;->d:Lcom/android/tools/r8/internal/Pl;

    .line 15
    iget-object v7, v7, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 16
    iget-object v10, v6, Lcom/android/tools/r8/internal/Rl;->b:Lcom/android/tools/r8/internal/Wk;

    .line 17
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Wk;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v7

    .line 18
    instance-of v7, v7, Lcom/android/tools/r8/internal/Cl;

    if-eqz v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 19
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/Fl;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/tools/r8/internal/Rl;->b:Lcom/android/tools/r8/internal/Wk;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Wk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, v6, p1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 22
    throw p0

    .line 23
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Fl;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/tools/r8/internal/Rl;->b:Lcom/android/tools/r8/internal/Wk;

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Wk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, v6, p1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 26
    throw p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_4
    iget-object p0, v1, Lcom/android/tools/r8/internal/Pl;->f:[Lcom/android/tools/r8/internal/Ol;

    array-length p1, p0

    :goto_3
    if-ge v0, p1, :cond_5

    aget-object v2, p0, v0

    .line 28
    invoke-static {v2}, Lcom/android/tools/r8/internal/Ol;->a(Lcom/android/tools/r8/internal/Ol;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-object v1
.end method

.method public static a([Ljava/lang/String;[Lcom/android/tools/r8/internal/Pl;)Lcom/android/tools/r8/internal/Pl;
    .locals 4

    .line 29
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 30
    aget-object p0, p0, v2

    sget-object v0, Lcom/android/tools/r8/internal/YI;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/tools/r8/internal/YI;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 35
    :goto_1
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/internal/Mk;->q:Lcom/android/tools/r8/internal/Kk;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Mk;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Pl;->a(Lcom/android/tools/r8/internal/Mk;[Lcom/android/tools/r8/internal/Pl;)Lcom/android/tools/r8/internal/Pl;

    move-result-object p0
    :try_end_1
    .catch Lcom/android/tools/r8/internal/Fl; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid embedded descriptor for \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pl;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/fW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    return-object v0
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, v0, Lcom/android/tools/r8/internal/Mk;->n:Ljava/io/Serializable;

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v0, "proto3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0
.end method
