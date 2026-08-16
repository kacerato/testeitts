.class public final Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elementSize:I

.field public keyTable:[[C

.field threshold:I

.field public valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->elementSize:I

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->threshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    new-array p1, v0, [[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    .line 6
    new-array p1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-void
.end method

.method private rehash()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->elementSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    array-length v1, v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->threshold:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_0
.end method


# virtual methods
.method public containsKey([C)Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    aget-object v3, v3, v1

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    array-length v5, v3

    if-ne v5, v2, :cond_2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method public get([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    array-length v4, v3

    if-ne v4, v2, :cond_2

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aget-object p1, p1, v1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    array-length v0, v0

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    rem-int/2addr v1, v0

    array-length v2, p1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->keyTable:[[C

    aget-object v4, v3, v1

    if-nez v4, :cond_2

    aput-object p1, v3, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aput-object p2, p1, v1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->elementSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->elementSize:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->threshold:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->rehash()V

    :cond_1
    return-object p2

    :cond_2
    array-length v3, v4

    if-ne v3, v2, :cond_3

    invoke-static {v4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aput-object p2, p1, v1

    return-object p2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->elementSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    array-length v0, v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->toString()Ljava/lang/String;

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
