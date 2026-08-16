.class public final Lcom/android/tools/r8/internal/lq0;
.super Lcom/android/tools/r8/internal/ar0;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public final o:[Lcom/android/tools/r8/graph/L2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;[Lcom/android/tools/r8/graph/L2;[II)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/ar0;-><init>(Lcom/android/tools/r8/internal/xw0;[II)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    sget-boolean p1, Lcom/android/tools/r8/internal/lq0;->p:Z

    if-nez p1, :cond_8

    if-nez p1, :cond_2

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result p4

    if-ge p3, p4, :cond_2

    sget-boolean p4, Lcom/android/tools/r8/internal/ar0;->n:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/tools/r8/internal/ar0;->l:[I

    aget p4, p4, p3

    iget v0, p0, Lcom/android/tools/r8/internal/ar0;->m:I

    if-eq p4, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    array-length p3, p2

    const/4 p4, 0x1

    if-lt p3, p4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    if-nez p1, :cond_6

    array-length p3, p2

    const p4, 0xffff

    if-gt p3, p4, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    if-nez p1, :cond_8

    array-length p1, p2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result p2

    if-ne p1, p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public final O0()Lcom/android/tools/r8/internal/lq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 0

    .line 25
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 26
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    array-length v0, v0

    new-array v1, v0, [Lcom/android/tools/r8/internal/W5;

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 6
    iget-object v4, p0, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    array-length v5, v4

    .line 8
    sget-boolean v6, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v6, :cond_2

    if-ne v0, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_2
    :goto_1
    new-array v0, v5, [I

    .line 10
    new-array v6, v5, [I

    :goto_2
    if-ge v2, v5, :cond_4

    .line 11
    aget-object v7, v4, v2

    .line 12
    iget-object v8, p1, Lcom/android/tools/r8/internal/PS;->d:Lcom/android/tools/r8/internal/qd0;

    .line 13
    iget v9, v8, Lcom/android/tools/r8/internal/qd0;->i:I

    .line 14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v7, v10}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    .line 15
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 16
    :cond_3
    aput v9, v0, v2

    .line 17
    aget-object v7, v1, v2

    .line 18
    iget-object v8, p1, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/bT;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result v7

    .line 19
    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 20
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/OS;

    invoke-direct {v1, v0, v6}, Lcom/android/tools/r8/internal/OS;-><init>([I[I)V

    .line 21
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe3

    .line 23
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 0

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final k2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final q2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "          \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "          F -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w2()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/lq0;->o:[Lcom/android/tools/r8/graph/L2;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
