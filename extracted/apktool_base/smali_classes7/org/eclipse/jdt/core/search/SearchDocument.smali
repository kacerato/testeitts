.class public abstract Lorg/eclipse/jdt/core/search/SearchDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private containerRelativePath:Ljava/lang/String;

.field private documentPath:Ljava/lang/String;

.field private index:Lorg/eclipse/jdt/internal/core/index/Index;

.field private parser:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

.field private participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

.field private shouldIndexResolvedDocument:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->shouldIndexResolvedDocument:Z

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->documentPath:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    return-void
.end method

.method private getContainerRelativePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->containerRelativePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->index:Lorg/eclipse/jdt/internal/core/index/Index;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->containerRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->containerRelativePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->containerRelativePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addIndexEntry([C[C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->index:Lorg/eclipse/jdt/internal/core/index/Index;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getContainerRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->addIndexEntry([C[CLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract getByteContents()[B
.end method

.method public abstract getCharContents()[C
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public getParser()Lorg/eclipse/jdt/internal/compiler/SourceElementParser;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->parser:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    return-object v0
.end method

.method public final getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->participant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->documentPath:Ljava/lang/String;

    return-object v0
.end method

.method public removeAllIndexEntries()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->index:Lorg/eclipse/jdt/internal/core/index/Index;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getContainerRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requireIndexingResolvedDocument()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->shouldIndexResolvedDocument:Z

    return-void
.end method

.method public setIndex(Lorg/eclipse/jdt/internal/core/index/Index;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->index:Lorg/eclipse/jdt/internal/core/index/Index;

    return-void
.end method

.method public setParser(Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->parser:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    return-void
.end method

.method public shouldIndexResolvedDocument()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchDocument;->shouldIndexResolvedDocument:Z

    return v0
.end method
