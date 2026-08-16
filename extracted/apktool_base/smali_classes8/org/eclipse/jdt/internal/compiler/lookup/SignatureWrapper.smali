.class public Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bracket:I

.field public end:I

.field public signature:[C

.field public start:I

.field private use15specifics:Z

.field private useExternalAnnotations:Z


# direct methods
.method public constructor <init>([C)V
    .locals 1

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([CZ)V

    return-void
.end method

.method public constructor <init>([CZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    .line 5
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->use15specifics:Z

    if-nez p2, :cond_0

    .line 6
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->removeTypeArguments()V

    :cond_0
    return-void
.end method

.method public constructor <init>([CZZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    .line 11
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->use15specifics:Z

    .line 12
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->useExternalAnnotations:Z

    if-nez p2, :cond_0

    .line 13
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->removeTypeArguments()V

    :cond_0
    return-void
.end method

.method private removeTypeArguments()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    const/4 v3, 0x0

    aget-char v2, v2, v3

    const/16 v4, 0x3c

    if-ne v2, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v6, v5

    if-lt v1, v6, :cond_1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v2, v1

    invoke-virtual {v0, v3, v2, v1, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-void

    :cond_1
    aget-char v6, v5, v1

    if-ne v6, v4, :cond_2

    sub-int v6, v1, v2

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v1

    move v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public atEnd()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public charAtStart()C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    return v0
.end method

.method public computeEnd()I
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->useExternalAnnotations:Z

    const/16 v2, 0x5b

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    aget-char v1, v1, v0

    const/16 v3, 0x30

    if-eq v1, v3, :cond_0

    const/16 v3, 0x31

    if-eq v1, v3, :cond_0

    const/16 v3, 0x40

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_9

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    aget-char v2, v1, v0

    const/16 v3, 0x4c

    const/4 v4, -0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x54

    if-eq v2, v3, :cond_3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    goto :goto_3

    :cond_3
    const/16 v0, 0x3b

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-gt v0, v1, :cond_4

    const/16 v0, 0x3c

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-le v0, v1, :cond_5

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    if-ge v0, v1, :cond_5

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    goto :goto_3

    :cond_5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    :cond_6
    :goto_3
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->use15specifics:Z

    if-nez v0, :cond_8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    if-eq v0, v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    goto :goto_5

    :cond_8
    :goto_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    :goto_5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    return v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getFrom(I)[C
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    return-object p1
.end method

.method public isParameterized()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextName()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/16 v2, 0x3b

    invoke-static {v2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-gt v0, v1, :cond_0

    const/16 v0, 0x3c

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-le v0, v1, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    if-ge v0, v2, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public nextWord()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/16 v2, 0x3b

    invoke-static {v2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-gt v0, v1, :cond_0

    const/16 v0, 0x3c

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/16 v2, 0x2e

    invoke-static {v2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-le v1, v2, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    if-ge v1, v3, :cond_1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    :cond_1
    if-le v0, v2, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    if-ge v0, v1, :cond_2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public peekFullType()[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public skipAngleContents(I)I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    aget-char v1, v0, p1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_0

    return p1

    :cond_0
    array-length v0, v0

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    :goto_0
    if-lt p1, v0, :cond_1

    return p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    aget-char v3, v3, p1

    if-eq v3, v2, :cond_3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public tail()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v2, v1

    if-gt v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " ^ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    array-length v4, v1

    invoke-static {v1, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
