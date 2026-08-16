.class public Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elementSize:I

.field public qualifiedNames:[[[C

.field public threshold:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->elementSize:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array p1, v0, [[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->qualifiedNames:[[[C

    return-void
.end method

.method private rehash()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->qualifiedNames:[[[C

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->qualifiedNames:[[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->qualifiedNames:[[[C

    iget v1, v0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->elementSize:I

    iput v1, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->elementSize:I

    iget v0, v0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->qualifiedNames:[[[C

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->add([[C)[[C

    goto :goto_0
.end method


# virtual methods
.method public add([[C)[[C
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->qualifiedNames:[[[C

    array-length v1, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    rem-int/2addr v0, v1

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->qualifiedNames:[[[C

    aget-object v3, v2, v0

    if-nez v3, :cond_3

    aput-object p1, v2, v0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->elementSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->threshold:I

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->rehash()V

    :cond_2
    return-object p1

    :cond_3
    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->qualifiedNames:[[[C

    array-length v0, v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/QualifiedNameSet;->qualifiedNames:[[[C

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
