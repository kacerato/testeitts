.class public final Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elementSize:I

.field public threshold:I

.field public words:[[C


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->elementSize:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array p1, v0, [[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    return-void
.end method

.method private rehash()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    iget v1, v0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->elementSize:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->elementSize:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->add([C)[C

    goto :goto_0
.end method


# virtual methods
.method public add([C)[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    aput-object p1, v2, v1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->elementSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->threshold:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->rehash()V

    :cond_1
    return-object p1

    :cond_2
    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public includes([C)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0
.end method
