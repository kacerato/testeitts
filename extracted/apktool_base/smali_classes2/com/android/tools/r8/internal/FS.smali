.class public final Lcom/android/tools/r8/internal/FS;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final j:Lcom/android/tools/r8/internal/yS;

.field public static final synthetic k:Z = true


# instance fields
.field public final b:Ljava/util/Comparator;

.field public final c:Z

.field public d:Lcom/android/tools/r8/internal/ES;

.field public e:I

.field public f:I

.field public final g:Lcom/android/tools/r8/internal/ES;

.field public h:Lcom/android/tools/r8/internal/AS;

.field public i:Lcom/android/tools/r8/internal/CS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/yS;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yS;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/FS;->j:Lcom/android/tools/r8/internal/yS;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/FS;->j:Lcom/android/tools/r8/internal/yS;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/tools/r8/internal/FS;->e:I

    iput v1, p0, Lcom/android/tools/r8/internal/FS;->f:I

    iput-object v0, p0, Lcom/android/tools/r8/internal/FS;->b:Ljava/util/Comparator;

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/FS;->c:Z

    new-instance v0, Lcom/android/tools/r8/internal/ES;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/ES;-><init>(Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/ES;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/FS;->b:Ljava/util/Comparator;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/FS;->d:Lcom/android/tools/r8/internal/ES;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 3
    sget-object v3, Lcom/android/tools/r8/internal/FS;->j:Lcom/android/tools/r8/internal/yS;

    if-ne v0, v3, :cond_0

    .line 4
    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 5
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    .line 6
    :cond_1
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :cond_2
    if-gez v4, :cond_3

    .line 7
    iget-object v5, v1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v2

    .line 8
    :cond_6
    iget-object v9, p0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    const/4 p2, 0x1

    if-nez v1, :cond_9

    .line 9
    sget-object v2, Lcom/android/tools/r8/internal/FS;->j:Lcom/android/tools/r8/internal/yS;

    if-ne v0, v2, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_7

    goto :goto_4

    .line 10
    :cond_7
    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " is not Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_8
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/ES;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/FS;->c:Z

    iget-object v10, v9, Lcom/android/tools/r8/internal/ES;->f:Lcom/android/tools/r8/internal/ES;

    move-object v5, v0

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/ES;-><init>(ZLcom/android/tools/r8/internal/ES;Ljava/lang/Object;Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/FS;->d:Lcom/android/tools/r8/internal/ES;

    goto :goto_6

    .line 13
    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/ES;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/FS;->c:Z

    iget-object v10, v9, Lcom/android/tools/r8/internal/ES;->f:Lcom/android/tools/r8/internal/ES;

    move-object v5, v0

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/ES;-><init>(ZLcom/android/tools/r8/internal/ES;Ljava/lang/Object;Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V

    if-gez v4, :cond_a

    .line 14
    iput-object v0, v1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    goto :goto_5

    .line 15
    :cond_a
    iput-object v0, v1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    .line 16
    :goto_5
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;Z)V

    .line 17
    :goto_6
    iget p1, p0, Lcom/android/tools/r8/internal/FS;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/tools/r8/internal/FS;->e:I

    .line 18
    iget p1, p0, Lcom/android/tools/r8/internal/FS;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/tools/r8/internal/FS;->f:I

    return-object v0
.end method

.method public final a(Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/ES;
    .locals 3

    .line 19
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/FS;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/ES;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 21
    iget-object v2, v0, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 22
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/ES;)V
    .locals 5

    .line 55
    iget-object v0, p1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 56
    iget-object v1, p1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    .line 57
    iget-object v2, v1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 58
    iget-object v3, v1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    .line 59
    iput-object v2, p1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    if-eqz v2, :cond_0

    .line 60
    iput-object p1, v2, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    .line 61
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V

    .line 62
    iput-object p1, v1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 63
    iput-object v1, p1, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 64
    iget v0, v0, Lcom/android/tools/r8/internal/ES;->j:I

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 65
    iget v2, v2, Lcom/android/tools/r8/internal/ES;->j:I

    goto :goto_1

    :cond_2
    move v2, v4

    .line 66
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/tools/r8/internal/ES;->j:I

    if-eqz v3, :cond_3

    .line 67
    iget v4, v3, Lcom/android/tools/r8/internal/ES;->j:I

    .line 68
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/android/tools/r8/internal/ES;->j:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V
    .locals 2

    .line 23
    iget-object v0, p1, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    const/4 v1, 0x0

    .line 24
    iput-object v1, p1, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    if-eqz p2, :cond_0

    .line 25
    iput-object v0, p2, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    :cond_0
    if-eqz v0, :cond_4

    .line 26
    iget-object v1, v0, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    if-ne v1, p1, :cond_1

    .line 27
    iput-object p2, v0, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    return-void

    .line 28
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/FS;->k:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_3
    :goto_0
    iput-object p2, v0, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    return-void

    .line 30
    :cond_4
    iput-object p2, p0, Lcom/android/tools/r8/internal/FS;->d:Lcom/android/tools/r8/internal/ES;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ES;Z)V
    .locals 9

    :goto_0
    if-eqz p1, :cond_14

    .line 31
    iget-object v0, p1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 32
    iget-object v1, p1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 33
    iget v3, v0, Lcom/android/tools/r8/internal/ES;->j:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 34
    iget v4, v1, Lcom/android/tools/r8/internal/ES;->j:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    .line 35
    iget-object v0, v1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 36
    iget-object v3, v1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    if-eqz v3, :cond_2

    .line 37
    iget v3, v3, Lcom/android/tools/r8/internal/ES;->j:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    .line 38
    iget v2, v0, Lcom/android/tools/r8/internal/ES;->j:I

    :cond_3
    sub-int/2addr v2, v3

    if-eq v2, v7, :cond_7

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_5

    .line 39
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/FS;->k:Z

    if-nez v0, :cond_6

    if-ne v2, v8, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_6
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/FS;->b(Lcom/android/tools/r8/internal/ES;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;)V

    goto :goto_6

    .line 42
    :cond_7
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;)V

    :goto_6
    if-eqz p2, :cond_13

    goto :goto_c

    :cond_8
    const/4 v1, 0x2

    if-ne v5, v1, :cond_f

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 44
    iget-object v3, v0, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    if-eqz v3, :cond_9

    .line 45
    iget v3, v3, Lcom/android/tools/r8/internal/ES;->j:I

    goto :goto_7

    :cond_9
    move v3, v2

    :goto_7
    if-eqz v1, :cond_a

    .line 46
    iget v2, v1, Lcom/android/tools/r8/internal/ES;->j:I

    :cond_a
    sub-int/2addr v2, v3

    if-eq v2, v8, :cond_e

    if-nez v2, :cond_b

    if-nez p2, :cond_b

    goto :goto_9

    .line 47
    :cond_b
    sget-boolean v1, Lcom/android/tools/r8/internal/FS;->k:Z

    if-nez v1, :cond_d

    if-ne v2, v7, :cond_c

    goto :goto_8

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_d
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/FS;->b(Lcom/android/tools/r8/internal/ES;)V

    goto :goto_a

    .line 50
    :cond_e
    :goto_9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/FS;->b(Lcom/android/tools/r8/internal/ES;)V

    :goto_a
    if-eqz p2, :cond_13

    goto :goto_c

    :cond_f
    if-nez v5, :cond_10

    add-int/lit8 v3, v3, 0x1

    .line 51
    iput v3, p1, Lcom/android/tools/r8/internal/ES;->j:I

    if-eqz p2, :cond_13

    goto :goto_c

    .line 52
    :cond_10
    sget-boolean v0, Lcom/android/tools/r8/internal/FS;->k:Z

    if-nez v0, :cond_12

    if-eq v5, v7, :cond_12

    if-ne v5, v8, :cond_11

    goto :goto_b

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_12
    :goto_b
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v8

    iput v0, p1, Lcom/android/tools/r8/internal/ES;->j:I

    if-nez p2, :cond_13

    goto :goto_c

    .line 54
    :cond_13
    iget-object p1, p1, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    goto/16 :goto_0

    :cond_14
    :goto_c
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/ES;)V
    .locals 5

    .line 32
    iget-object v0, p1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 33
    iget-object v1, p1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    .line 34
    iget-object v2, v0, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 35
    iget-object v3, v0, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    .line 36
    iput-object v3, p1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    if-eqz v3, :cond_0

    .line 37
    iput-object p1, v3, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    .line 38
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V

    .line 39
    iput-object p1, v0, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    .line 40
    iput-object v0, p1, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 41
    iget v1, v1, Lcom/android/tools/r8/internal/ES;->j:I

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v3, :cond_2

    .line 42
    iget v3, v3, Lcom/android/tools/r8/internal/ES;->j:I

    goto :goto_1

    :cond_2
    move v3, v4

    .line 43
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/tools/r8/internal/ES;->j:I

    if-eqz v2, :cond_3

    .line 44
    iget v4, v2, Lcom/android/tools/r8/internal/ES;->j:I

    .line 45
    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/tools/r8/internal/ES;->j:I

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/ES;Z)V
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p1, Lcom/android/tools/r8/internal/ES;->f:Lcom/android/tools/r8/internal/ES;

    iget-object v0, p1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    iput-object v0, p2, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    iput-object p2, v0, Lcom/android/tools/r8/internal/ES;->f:Lcom/android/tools/r8/internal/ES;

    .line 3
    :cond_0
    iget-object p2, p1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 6
    iget v1, p2, Lcom/android/tools/r8/internal/ES;->j:I

    iget v4, v0, Lcom/android/tools/r8/internal/ES;->j:I

    if-le v1, v4, :cond_1

    .line 7
    iget-object v0, p2, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    :goto_0
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz p2, :cond_3

    .line 8
    iget-object v0, p2, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, v0, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    :goto_1
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz v0, :cond_2

    .line 10
    iget-object p2, v0, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 11
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/FS;->b(Lcom/android/tools/r8/internal/ES;Z)V

    .line 12
    iget-object p2, p1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    if-eqz p2, :cond_4

    .line 13
    iget v1, p2, Lcom/android/tools/r8/internal/ES;->j:I

    .line 14
    iput-object p2, v0, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    .line 15
    iput-object v0, p2, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    .line 16
    iput-object v3, p1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    goto :goto_2

    :cond_4
    move v1, v2

    .line 17
    :goto_2
    iget-object p2, p1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    if-eqz p2, :cond_5

    .line 18
    iget v2, p2, Lcom/android/tools/r8/internal/ES;->j:I

    .line 19
    iput-object p2, v0, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    .line 20
    iput-object v0, p2, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    .line 21
    iput-object v3, p1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    .line 22
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/android/tools/r8/internal/ES;->j:I

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V

    .line 25
    iput-object v3, p1, Lcom/android/tools/r8/internal/ES;->c:Lcom/android/tools/r8/internal/ES;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V

    .line 27
    iput-object v3, p1, Lcom/android/tools/r8/internal/ES;->d:Lcom/android/tools/r8/internal/ES;

    goto :goto_3

    .line 28
    :cond_8
    invoke-virtual {p0, p1, v3}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V

    .line 29
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/FS;->a(Lcom/android/tools/r8/internal/ES;Z)V

    .line 30
    iget p1, p0, Lcom/android/tools/r8/internal/FS;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/FS;->e:I

    .line 31
    iget p1, p0, Lcom/android/tools/r8/internal/FS;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/FS;->f:I

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/FS;->d:Lcom/android/tools/r8/internal/ES;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/FS;->e:I

    iget v0, p0, Lcom/android/tools/r8/internal/FS;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/FS;->f:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iput-object v0, v0, Lcom/android/tools/r8/internal/ES;->f:Lcom/android/tools/r8/internal/ES;

    iput-object v0, v0, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/FS;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/ES;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FS;->h:Lcom/android/tools/r8/internal/AS;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/AS;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/AS;-><init>(Lcom/android/tools/r8/internal/FS;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/FS;->h:Lcom/android/tools/r8/internal/AS;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/FS;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/ES;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FS;->i:Lcom/android/tools/r8/internal/CS;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/CS;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/CS;-><init>(Lcom/android/tools/r8/internal/FS;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/FS;->i:Lcom/android/tools/r8/internal/CS;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/FS;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/FS;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/ES;

    move-result-object p1

    iget-object v0, p1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    iput-object p2, p1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/FS;->a(Ljava/lang/Object;Z)Lcom/android/tools/r8/internal/ES;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/FS;->b(Lcom/android/tools/r8/internal/ES;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/FS;->e:I

    return v0
.end method
