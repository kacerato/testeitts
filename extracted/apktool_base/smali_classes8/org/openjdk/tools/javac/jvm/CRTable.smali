.class public Lorg/openjdk/tools/javac/jvm/CRTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/jvm/CRTFlags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;,
        Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;,
        Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;
    }
.end annotation


# instance fields
.field private final crtDebug:Z

.field private endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

.field private entries:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;",
            ">;"
        }
    .end annotation
.end field

.field methodTree:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

.field private positions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/tree/EndPosTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->crtDebug:Z

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->entries:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->positions:Ljava/util/Map;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->methodTree:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/jvm/CRTable;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->positions:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/jvm/CRTable;)Lorg/openjdk/tools/javac/tree/EndPosTable;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    return-object p0
.end method

.method private encodePosition(ILorg/openjdk/tools/javac/util/Position$LineMap;Lorg/openjdk/tools/javac/util/Log;)I
    .locals 2

    invoke-interface {p2, p1}, Lorg/openjdk/tools/javac/util/Position$LineMap;->getLineNumber(I)I

    move-result v0

    invoke-interface {p2, p1}, Lorg/openjdk/tools/javac/util/Position$LineMap;->getColumnNumber(I)I

    move-result p2

    invoke-static {v0, p2}, Lorg/openjdk/tools/javac/util/Position;->encodePosition(II)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "position.overflow"

    invoke-virtual {p3, p1, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p2
.end method

.method private getTypes(I)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRT_STATEMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRT_BLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRT_ASSIGNMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRT_FLOW_CONTROLLER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRT_FLOW_TARGET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRT_INVOKE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRT_CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRT_BRANCH_TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CRT_BRANCH_FALSE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    return-object v1
.end method


# virtual methods
.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->entries:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;III)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->entries:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method

.method public writeCRT(Lorg/openjdk/tools/javac/util/ByteBuffer;Lorg/openjdk/tools/javac/util/Position$LineMap;Lorg/openjdk/tools/javac/util/Log;)I
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;-><init>(Lorg/openjdk/tools/javac/jvm/CRTable;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->methodTree:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable$SourceComputer;->csp(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->entries:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;

    iget v3, v2, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->startPc:I

    iget v4, v2, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->endPc:I

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/CRTable;->positions:Ljava/util/Map;

    iget-object v4, v2, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->tree:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;

    const-string v4, "CRT: tree source positions are undefined"

    invoke-static {v3, v4}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v4, v3, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->startPos:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget v6, v3, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    if-ne v6, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, p2, p3}, Lorg/openjdk/tools/javac/jvm/CRTable;->encodePosition(ILorg/openjdk/tools/javac/util/Position$LineMap;Lorg/openjdk/tools/javac/util/Log;)I

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    iget v3, v3, Lorg/openjdk/tools/javac/jvm/CRTable$SourceRange;->endPos:I

    invoke-direct {p0, v3, p2, p3}, Lorg/openjdk/tools/javac/jvm/CRTable;->encodePosition(ILorg/openjdk/tools/javac/util/Position$LineMap;Lorg/openjdk/tools/javac/util/Log;)I

    move-result v3

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    iget v5, v2, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->startPc:I

    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    iget v5, v2, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->endPc:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendInt(I)V

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendInt(I)V

    iget v2, v2, Lorg/openjdk/tools/javac/jvm/CRTable$CRTEntry;->flags:I

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendChar(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_5
    return v1
.end method
