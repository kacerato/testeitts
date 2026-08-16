.class public Lorg/eclipse/jdt/internal/core/util/SimpleDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jface/text/IDocument;


# instance fields
.field private buffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleDocument;->buffer:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public addDocumentListener(Lorg/eclipse/jface/text/IDocumentListener;)V
    .locals 0

    return-void
.end method

.method public addDocumentPartitioningListener(Lorg/eclipse/jface/text/IDocumentPartitioningListener;)V
    .locals 0

    return-void
.end method

.method public addPosition(Ljava/lang/String;Lorg/eclipse/jface/text/Position;)V
    .locals 0

    .line 1
    return-void
.end method

.method public addPosition(Lorg/eclipse/jface/text/Position;)V
    .locals 0

    .line 2
    return-void
.end method

.method public addPositionCategory(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addPositionUpdater(Lorg/eclipse/jface/text/IPositionUpdater;)V
    .locals 0

    return-void
.end method

.method public addPrenotifiedDocumentListener(Lorg/eclipse/jface/text/IDocumentListener;)V
    .locals 0

    return-void
.end method

.method public computeIndexInCategory(Ljava/lang/String;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computeNumberOfLines(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public computePartitioning(II)[Lorg/eclipse/jface/text/ITypedRegion;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public containsPosition(Ljava/lang/String;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public containsPositionCategory(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleDocument;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(II)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleDocument;->buffer:Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChar(I)C
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getContentType(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentPartitioner()Lorg/eclipse/jface/text/IDocumentPartitioner;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLegalContentTypes()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLegalLineDelimiters()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleDocument;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public getLineDelimiter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLineInformation(I)Lorg/eclipse/jface/text/IRegion;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLineInformationOfOffset(I)Lorg/eclipse/jface/text/IRegion;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLineLength(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLineOfOffset(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLineOffset(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNumberOfLines()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberOfLines(II)I
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public getPartition(I)Lorg/eclipse/jface/text/ITypedRegion;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionCategories()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositionUpdaters()[Lorg/eclipse/jface/text/IPositionUpdater;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositions(Ljava/lang/String;)[Lorg/eclipse/jface/text/Position;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insertPositionUpdater(Lorg/eclipse/jface/text/IPositionUpdater;I)V
    .locals 0

    return-void
.end method

.method public removeDocumentListener(Lorg/eclipse/jface/text/IDocumentListener;)V
    .locals 0

    return-void
.end method

.method public removeDocumentPartitioningListener(Lorg/eclipse/jface/text/IDocumentPartitioningListener;)V
    .locals 0

    return-void
.end method

.method public removePosition(Ljava/lang/String;Lorg/eclipse/jface/text/Position;)V
    .locals 0

    .line 1
    return-void
.end method

.method public removePosition(Lorg/eclipse/jface/text/Position;)V
    .locals 0

    .line 2
    return-void
.end method

.method public removePositionCategory(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removePositionUpdater(Lorg/eclipse/jface/text/IPositionUpdater;)V
    .locals 0

    return-void
.end method

.method public removePrenotifiedDocumentListener(Lorg/eclipse/jface/text/IDocumentListener;)V
    .locals 0

    return-void
.end method

.method public replace(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/SimpleDocument;->buffer:Ljava/lang/StringBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public search(ILjava/lang/String;ZZZ)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDocumentPartitioner(Lorg/eclipse/jface/text/IDocumentPartitioner;)V
    .locals 0

    return-void
.end method
