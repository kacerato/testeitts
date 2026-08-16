.class public Lorg/eclipse/jdt/internal/core/index/EntryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private documentNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

.field private documentTables:[Ljava/lang/Object;

.field private word:[C


# direct methods
.method public constructor <init>([CLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->word:[C

    if-eqz p2, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentTables:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDocumentName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDocumentTable(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentTables:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentTables:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentTables:[Ljava/lang/Object;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentTables:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public getDocumentNames(Lorg/eclipse/jdt/internal/core/index/Index;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentTables:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    if-nez v3, :cond_1

    aget-object v0, v0, v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readDocumentNumbers(Ljava/lang/Object;)[I

    move-result-object v0

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/String;

    array-length v4, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    aget v5, v0, v1

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readDocumentName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentTables:[Ljava/lang/Object;

    aget-object v3, v3, v0

    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readDocumentNumbers(Ljava/lang/Object;)[I

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-lt v5, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p1, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    aget v7, v3, v5

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readDocumentName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->addDocumentName(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    if-nez p1, :cond_5

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p1

    :cond_5
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    new-array v0, v0, [Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v2, p1

    move v3, v1

    :goto_4
    if-lt v1, v2, :cond_6

    return-object v0

    :cond_6
    aget-object v4, p1, v1

    if-eqz v4, :cond_7

    add-int/lit8 v5, v3, 0x1

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    move v3, v5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getWord()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->word:[C

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentTables:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/EntryResult;->documentNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
