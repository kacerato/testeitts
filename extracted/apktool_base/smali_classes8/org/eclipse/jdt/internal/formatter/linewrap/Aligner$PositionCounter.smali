.class Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PositionCounter"
.end annotation


# instance fields
.field maxPosition:I

.field stoppingIndex:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method public findMaxPosition(II)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->stoppingIndex:I

    const/4 p2, 0x0

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->maxPosition:I

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p2, p1, p0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->traverse(ILorg/eclipse/jdt/internal/formatter/TokenTraverser;)I

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->maxPosition:I

    return p1
.end method

.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->stoppingIndex:I

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :cond_2
    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->isSpaceAfter()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksAfter()I

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->maxPosition:I

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->maxPosition:I

    return p2
.end method
