.class Lorg/eclipse/jdt/internal/formatter/SpacePreparator$1;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->finishUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field isPreviousJIDP:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/SpacePreparator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/SpacePreparator;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator$1;->this$0:Lorg/eclipse/jdt/internal/formatter/SpacePreparator;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator$1;->isPreviousJIDP:Z

    return-void
.end method


# virtual methods
.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator$1;->this$0:Lorg/eclipse/jdt/internal/formatter/SpacePreparator;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0x40

    if-ne p2, v1, :cond_1

    :cond_0
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator$1;->isPreviousJIDP:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getPrevious()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator$1;->isPreviousJIDP:Z

    iget p2, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eq p2, v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eq p2, v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->spaceAfter()V

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
