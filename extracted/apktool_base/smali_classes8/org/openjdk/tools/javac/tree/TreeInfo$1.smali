.class final Lorg/openjdk/tools/javac/tree/TreeInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/tree/TreeInfo;->diagEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$endPos:I

.field final synthetic val$tree:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree;I)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iput p2, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1;->val$endPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p1

    return p1
.end method

.method public getPreferredPosition()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1;->val$endPos:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v0

    return v0
.end method

.method public getTree()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object v0
.end method
