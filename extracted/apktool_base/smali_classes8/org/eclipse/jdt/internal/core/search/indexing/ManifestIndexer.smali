.class public Lorg/eclipse/jdt/internal/core/search/indexing/ManifestIndexer;
.super Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;
.source "SourceFile"


# static fields
.field private static final AUTOMATIC_MODULE_NAME:Ljava/lang/String; = "Automatic-Module-Name"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;-><init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V

    return-void
.end method


# virtual methods
.method public indexDocument()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->document:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getByteContents()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    const-string v3, "Automatic-Module-Name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/AbstractIndexer;->addModuleDeclaration([C)V

    :cond_0
    return-void
.end method
