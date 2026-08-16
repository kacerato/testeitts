.class public Lorg/eclipse/jdt/internal/core/builder/StringSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elementSize:I

.field public threshold:I

.field public values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    return-void
.end method

.method private rehash()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/StringSet;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/StringSet;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/builder/StringSet;->add(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    aput-object p1, v2, v1

    iget p1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->threshold:I

    if-le p1, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/StringSet;->rehash()V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->elementSize:I

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public includes(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    array-length v0, v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/StringSet;->values:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
