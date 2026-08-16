.class public final Lcom/android/tools/r8/internal/uz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Cl;

.field public final b:[Lcom/android/tools/r8/internal/jz;

.field public c:[Ljava/lang/String;

.field public final d:[Lcom/android/tools/r8/internal/kz;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Cl;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uz;->a:Lcom/android/tools/r8/internal/Cl;

    iput-object p2, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    iget-object p2, p1, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/android/tools/r8/internal/jz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cl;->j:[Lcom/android/tools/r8/internal/Sl;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/tools/r8/internal/kz;

    iput-object p1, p0, Lcom/android/tools/r8/internal/uz;->d:[Lcom/android/tools/r8/internal/kz;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/uz;->e:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;
    .locals 2

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->i:Lcom/android/tools/r8/internal/Cl;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/uz;->a:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ek;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    .line 13
    iget p1, p1, Lcom/android/tools/r8/internal/Ol;->b:I

    .line 14
    aget-object p0, p0, p1

    return-object p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This type does not have extensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/kz;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/Sl;->f:Lcom/android/tools/r8/internal/Cl;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/uz;->a:Lcom/android/tools/r8/internal/Cl;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/internal/uz;->d:[Lcom/android/tools/r8/internal/kz;

    .line 5
    iget p1, p1, Lcom/android/tools/r8/internal/Sl;->b:I

    .line 6
    aget-object p0, p0, p1

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OneofDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;
    .locals 12

    .line 17
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/uz;->e:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 18
    :cond_0
    monitor-enter p0

    .line 19
    :try_start_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/uz;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_a

    .line 21
    iget-object v4, p0, Lcom/android/tools/r8/internal/uz;->a:Lcom/android/tools/r8/internal/Cl;

    .line 22
    iget-object v4, v4, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    .line 23
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 24
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/tools/r8/internal/Ol;

    .line 25
    iget-object v4, v6, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    if-eqz v4, :cond_2

    .line 26
    iget-object v5, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    .line 27
    iget v4, v4, Lcom/android/tools/r8/internal/Sl;->b:I

    add-int/2addr v4, v0

    .line 28
    aget-object v4, v5, v4

    move-object v10, v4

    goto :goto_1

    :cond_2
    move-object v10, v3

    .line 29
    :goto_1
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 30
    iget-object v4, v6, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 31
    iget-object v4, v4, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 32
    sget-object v5, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v4, v5, :cond_4

    .line 33
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ol;->i()Z

    move-result v4

    if-nez v4, :cond_3

    .line 34
    iget-object v3, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    new-instance v4, Lcom/android/tools/r8/internal/oz;

    iget-object v5, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, p1, p2}, Lcom/android/tools/r8/internal/oz;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_2

    .line 35
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    aget-object p2, p2, v2

    .line 36
    const-string p2, "getDefaultInstance"

    new-array v0, v1, [Ljava/lang/Class;

    .line 37
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 38
    new-array p2, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {p1, v3, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/wz;

    .line 40
    iget-object p2, v6, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 41
    iget p2, p2, Lcom/android/tools/r8/internal/Ek;->d:I

    .line 42
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/wz;->internalGetMapField(I)Lcom/android/tools/r8/internal/NU;

    .line 43
    throw v3

    .line 44
    :cond_4
    sget-object v3, Lcom/android/tools/r8/internal/Ml;->j:Lcom/android/tools/r8/internal/Ml;

    if-ne v4, v3, :cond_5

    .line 45
    iget-object v3, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    new-instance v4, Lcom/android/tools/r8/internal/lz;

    iget-object v5, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/android/tools/r8/internal/lz;-><init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_2

    .line 46
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    new-instance v4, Lcom/android/tools/r8/internal/nz;

    iget-object v5, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, p1, p2}, Lcom/android/tools/r8/internal/nz;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto :goto_2

    .line 47
    :cond_6
    iget-object v3, v6, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 48
    iget-object v3, v3, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 49
    sget-object v4, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v3, v4, :cond_7

    .line 50
    iget-object v3, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    new-instance v4, Lcom/android/tools/r8/internal/sz;

    iget-object v5, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/sz;-><init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_2

    .line 51
    :cond_7
    sget-object v4, Lcom/android/tools/r8/internal/Ml;->j:Lcom/android/tools/r8/internal/Ml;

    if-ne v3, v4, :cond_8

    .line 52
    iget-object v3, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    new-instance v4, Lcom/android/tools/r8/internal/pz;

    iget-object v5, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/pz;-><init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_2

    .line 53
    :cond_8
    sget-object v4, Lcom/android/tools/r8/internal/Ml;->h:Lcom/android/tools/r8/internal/Ml;

    if-ne v3, v4, :cond_9

    .line 54
    iget-object v3, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    new-instance v4, Lcom/android/tools/r8/internal/tz;

    iget-object v5, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/tz;-><init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_2

    .line 55
    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/internal/uz;->b:[Lcom/android/tools/r8/internal/jz;

    new-instance v4, Lcom/android/tools/r8/internal/rz;

    iget-object v5, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/rz;-><init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 56
    :cond_a
    iget-object v2, p0, Lcom/android/tools/r8/internal/uz;->d:[Lcom/android/tools/r8/internal/kz;

    array-length v2, v2

    :goto_3
    if-ge v1, v2, :cond_b

    .line 57
    iget-object v10, p0, Lcom/android/tools/r8/internal/uz;->d:[Lcom/android/tools/r8/internal/kz;

    new-instance v11, Lcom/android/tools/r8/internal/kz;

    iget-object v5, p0, Lcom/android/tools/r8/internal/uz;->a:Lcom/android/tools/r8/internal/Cl;

    iget-object v4, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    add-int v6, v1, v0

    aget-object v7, v4, v6

    move-object v4, v11

    move v6, v1

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/internal/kz;-><init>(Lcom/android/tools/r8/internal/Cl;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/uz;->e:Z

    .line 59
    iput-object v3, p0, Lcom/android/tools/r8/internal/uz;->c:[Ljava/lang/String;

    .line 60
    monitor-exit p0

    return-object p0

    .line 61
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
