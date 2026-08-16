.class public Lcom/android/tools/r8/shaking/P0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Lcom/android/tools/r8/internal/hC;

.field public final c:Lcom/android/tools/r8/origin/Origin;

.field public final d:Lcom/android/tools/r8/position/Position;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/origin/Origin;",
            "Lcom/android/tools/r8/position/Position;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    invoke-static {p2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/P0;->b:Lcom/android/tools/r8/internal/hC;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/P0;->c:Lcom/android/tools/r8/origin/Origin;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/P0;->d:Lcom/android/tools/r8/position/Position;

    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_9

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, p1, 0x1

    if-le v0, v4, :cond_2

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    move p1, v4

    :cond_3
    add-int/2addr p1, v2

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v5, 0x2f

    const/4 v6, -0x1

    if-ne v3, v6, :cond_6

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int v3, p0, v2

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_4

    return v1

    :cond_4
    if-nez v0, :cond_5

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eq p0, v6, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/P0;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 12
    :cond_6
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p0, v3, :cond_b

    if-nez v0, :cond_7

    .line 13
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_7

    return v1

    .line 14
    :cond_7
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/P0;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v2

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 15
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p0, v3, :cond_a

    return v1

    :cond_a
    const/16 v3, 0x3f

    if-eq v0, v3, :cond_c

    .line 16
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_b

    goto :goto_3

    :cond_b
    :goto_2
    return v1

    :cond_c
    :goto_3
    add-int/2addr p0, v2

    add-int/2addr p1, v2

    .line 17
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/P0;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 6

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/shaking/P0;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/P0;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 21
    :goto_1
    invoke-static {v2, v4, p1, v3}, Lcom/android/tools/r8/shaking/P0;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    xor-int/lit8 p1, v4, 0x1

    return p1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/P0;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/P0;->a:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/P0;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
