.class public Lorg/eclipse/jdt/internal/core/index/MemoryIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public NUM_CHANGES:I

.field allWords:Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

.field docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field lastDocumentName:Ljava/lang/String;

.field lastReferenceTable:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->NUM_CHANGES:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->allWords:Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

    return-void
.end method


# virtual methods
.method public addDocumentNames(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p1, :cond_2

    array-length v3, v0

    :goto_0
    if-lt v2, v3, :cond_0

    goto :goto_2

    :cond_0
    aget-object p1, v0, v2

    if-eqz p1, :cond_1

    aget-object p1, v1, v2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length v3, v0

    move v4, v2

    :goto_1
    if-lt v4, v3, :cond_3

    :goto_2
    return-void

    :cond_3
    aget-object v5, v0, v4

    if-eqz v5, :cond_4

    aget-object v5, v1, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, v1, v4

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public addIndexEntry([C[CLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->lastDocumentName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->lastReferenceTable:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    invoke-virtual {v0, p3, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->lastDocumentName:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->lastReferenceTable:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-object p3, v0

    :goto_0
    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

    if-nez v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;-><init>(I)V

    invoke-virtual {p3, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->allWords:Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->add([C)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->add([C)[C

    return-void
.end method

.method public addQueryResults([[C[CILorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p0

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v8, 0xd

    if-ne v2, v6, :cond_6

    if-eqz v1, :cond_6

    array-length v6, v4

    move-object/from16 v2, p4

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v6, :cond_0

    goto :goto_4

    :cond_0
    aget-object v11, v4, v10

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    if-eqz v11, :cond_5

    array-length v12, v0

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v12, :cond_1

    goto :goto_2

    :cond_1
    aget-object v14, v0, v13

    invoke-virtual {v11, v14}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

    if-eqz v14, :cond_4

    invoke-virtual {v14, v1}, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->includes([C)Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v2, :cond_2

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v2, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    :cond_2
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/core/index/EntryResult;

    if-nez v11, :cond_3

    new-instance v11, Lorg/eclipse/jdt/internal/core/index/EntryResult;

    invoke-direct {v11, v1, v7}, Lorg/eclipse/jdt/internal/core/index/EntryResult;-><init>([CLjava/lang/Object;)V

    invoke-virtual {v2, v1, v11}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    aget-object v12, v5, v10

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->addDocumentName(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    array-length v6, v4

    move-object/from16 v10, p4

    const/4 v11, 0x0

    :goto_3
    if-lt v11, v6, :cond_7

    move-object v2, v10

    :goto_4
    return-object v2

    :cond_7
    aget-object v12, v4, v11

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    if-eqz v12, :cond_8

    array-length v13, v0

    const/4 v14, 0x0

    :goto_5
    if-lt v14, v13, :cond_9

    :cond_8
    move-object v1, v7

    goto :goto_b

    :cond_9
    aget-object v15, v0, v14

    invoke-virtual {v12, v15}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

    if-eqz v15, :cond_e

    iget-object v15, v15, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    array-length v9, v15

    const/4 v7, 0x0

    :goto_6
    if-lt v7, v9, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    aget-object v8, v15, v7

    if-eqz v8, :cond_d

    invoke-static {v1, v8, v2}, Lorg/eclipse/jdt/internal/core/index/Index;->isMatch([C[CI)Z

    move-result v17

    if-eqz v17, :cond_d

    if-nez v10, :cond_b

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/16 v0, 0xd

    invoke-direct {v10, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    goto :goto_7

    :cond_b
    const/16 v0, 0xd

    :goto_7
    invoke-virtual {v10, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/eclipse/jdt/internal/core/index/EntryResult;

    if-nez v16, :cond_c

    new-instance v0, Lorg/eclipse/jdt/internal/core/index/EntryResult;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1}, Lorg/eclipse/jdt/internal/core/index/EntryResult;-><init>([CLjava/lang/Object;)V

    invoke-virtual {v10, v8, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, v16

    :goto_8
    aget-object v8, v5, v11

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->addDocumentName(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v8, 0xd

    goto :goto_6

    :cond_e
    move-object v1, v7

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object v7, v1

    const/16 v8, 0xd

    move-object/from16 v1, p2

    goto :goto_5

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    move-object v7, v1

    const/16 v8, 0xd

    move-object/from16 v1, p2

    goto :goto_3
.end method

.method public hasChanged()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->lastDocumentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->lastDocumentName:Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->lastReferenceTable:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldMerge()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->NUM_CHANGES:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
