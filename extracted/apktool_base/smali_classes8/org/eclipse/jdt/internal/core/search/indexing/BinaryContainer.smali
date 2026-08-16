.class public abstract Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;
.super Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;
.source "SourceFile"


# instance fields
.field scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    return-void
.end method

.method private isIdentifier()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->scanIdentifier()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public isValidPackageNameForClassOrisModule(Ljava/lang/String;)Z
    .locals 13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length v2, v1

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->MODULE_INFO:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/32 v8, 0x330000

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    array-length p1, p1

    array-length v1, v1

    sub-int/2addr p1, v1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->isIdentifier()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-gt v0, v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextChar()I

    move-result p1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->eofPosition:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-gt v0, p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryContainer;->isIdentifier()Z

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    :catch_0
    :cond_5
    :goto_0
    return v2
.end method
