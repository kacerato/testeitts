.class public Lorg/eclipse/jdt/internal/core/index/Index;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_SEPARATOR:C = '/'

.field static final JAR_SEPARATOR:C

.field static final MATCH_RULE_INDEX_MASK:I = 0x18f


# instance fields
.field public containerPath:Ljava/lang/String;

.field protected diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

.field protected memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

.field public monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

.field public separator:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "|"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Lorg/eclipse/jdt/internal/core/index/Index;->JAR_SEPARATOR:C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2f

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/index/Index;->containerPath:Ljava/lang/String;

    new-instance p2, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    new-instance p2, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    new-instance p2, Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;-><init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->initialize(Z)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    iget-char p1, p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->separator:C

    iput-char p1, p0, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C

    :cond_0
    return-void
.end method

.method public static isMatch([C[CI)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    return v3

    :cond_2
    const/4 v4, 0x2

    if-nez v2, :cond_4

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_3

    if-ne v1, v0, :cond_3

    aget-char p0, p0, v3

    const/16 p1, 0x2a

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v3

    :cond_4
    and-int/lit16 p2, p2, 0x18f

    if-eqz p2, :cond_10

    if-eq p2, v0, :cond_e

    if-eq p2, v4, :cond_d

    const/4 v4, 0x4

    if-eq p2, v4, :cond_c

    const/16 v4, 0x80

    if-eq p2, v4, :cond_9

    const/16 v4, 0x88

    if-eq p2, v4, :cond_7

    const/16 v4, 0x100

    if-eq p2, v4, :cond_9

    const/16 v4, 0x108

    if-eq p2, v4, :cond_7

    packed-switch p2, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p0

    return p0

    :pswitch_1
    aget-char p2, p0, v3

    aget-char v4, p1, v3

    if-ne p2, v4, :cond_5

    if-gt v1, v2, :cond_5

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v3

    :pswitch_2
    aget-char p2, p0, v3

    aget-char v4, p1, v3

    if-ne p2, v4, :cond_6

    if-ne v1, v2, :cond_6

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    return v3

    :cond_7
    aget-char p2, p0, v3

    aget-char v1, p1, v3

    if-ne p2, v1, :cond_8

    invoke-static {p0, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    return v3

    :cond_9
    invoke-static {p0, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p2

    if-eqz p2, :cond_a

    return v0

    :cond_a
    if-gt v1, v2, :cond_b

    invoke-static {p0, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p0

    if-eqz p0, :cond_b

    return v0

    :cond_b
    return v3

    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_d
    invoke-static {p0, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p0

    return p0

    :cond_e
    if-gt v1, v2, :cond_f

    invoke-static {p0, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p0

    if-eqz p0, :cond_f

    return v0

    :cond_f
    return v3

    :cond_10
    if-ne v1, v2, :cond_11

    invoke-static {p0, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result p0

    if-eqz p0, :cond_11

    return v0

    :cond_11
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addIndexEntry([C[CLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->addIndexEntry([C[CLjava/lang/String;)V

    return-void
.end method

.method public containerRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->containerPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Document path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be relative to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/Index;->containerPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getIndexFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIndexLastModified()J
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->lastModified()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getIndexLocation()Lorg/eclipse/jdt/internal/core/index/IndexLocation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    :goto_0
    return-object v0
.end method

.method public hasChanged()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->hasChanged()Z

    move-result v0

    return v0
.end method

.method public isIndexForJar()Z
    .locals 2

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C

    sget-char v1, Lorg/eclipse/jdt/internal/core/index/Index;->JAR_SEPARATOR:C

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->shouldMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitReadEnterWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/index/Index;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWriteEnterRead()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWriteEnterRead()V

    throw p1

    :cond_0
    :goto_0
    and-int/lit16 p3, p3, 0x18f

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->hasChanged()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v0, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->addQueryResults([[C[CILorg/eclipse/jdt/internal/core/index/MemoryIndex;)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v2, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->addQueryResults([[C[CILorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->addQueryResults([[C[CILorg/eclipse/jdt/internal/core/index/MemoryIndex;)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->elementSize:I

    new-array p2, p2, [Lorg/eclipse/jdt/internal/core/index/EntryResult;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length p3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v0, p3, :cond_3

    return-object p2

    :cond_3
    aget-object v2, p1, v0

    check-cast v2, Lorg/eclipse/jdt/internal/core/index/EntryResult;

    if-eqz v2, :cond_4

    add-int/lit8 v3, v1, 0x1

    aput-object v2, p2, v1

    move v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public queryDocumentNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->hasChanged()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->addDocumentNames(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;)Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v2, p1, v0}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->addDocumentNames(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->addDocumentNames(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;)Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    move-result-object v0

    :goto_0
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v2, v1, :cond_2

    return-object p1

    :cond_2
    aget-object v4, v0, v2

    if-eqz v4, :cond_3

    add-int/lit8 v5, v3, 0x1

    check-cast v4, Ljava/lang/String;

    aput-object v4, p1, v3

    move v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    new-instance v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;-><init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->initialize(Z)V

    return-void
.end method

.method public save()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/index/Index;->hasChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C

    iput-char v1, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->separator:C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->mergeWith(Lorg/eclipse/jdt/internal/core/index/MemoryIndex;)Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    new-instance v0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->memoryIndex:Lorg/eclipse/jdt/internal/core/index/MemoryIndex;

    return-void
.end method

.method public startQuery()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->startQuery()V

    :cond_0
    return-void
.end method

.method public stopQuery()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/Index;->diskIndex:Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->stopQuery()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/Index;->containerPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
