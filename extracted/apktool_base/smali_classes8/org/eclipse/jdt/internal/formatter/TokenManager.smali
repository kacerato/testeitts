.class public Lorg/eclipse/jdt/internal/formatter/TokenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/eclipse/jdt/internal/formatter/Token;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMMENT_LINE_ANNOTATION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field final commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

.field private formatOffTagPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation
.end field

.field private headerEndIndex:I

.field private positionInLineCounter:Lorg/eclipse/jdt/internal/formatter/TokenTraverser;

.field private final source:Ljava/lang/String;

.field private final tabChar:I

.field private final tabSize:I

.field private tokenIndexToNLSAlign:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapWithSpaces:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\s*\\*?\\s*)(@)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->COMMENT_LINE_ANNOTATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->formatOffTagPairs:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->headerEndIndex:I

    .line 4
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->positionInLineCounter:Lorg/eclipse/jdt/internal/formatter/TokenTraverser;

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokens:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    .line 7
    iget p1, p3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tabSize:I

    .line 8
    iget p1, p3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tabChar:I

    .line 9
    iget-boolean p1, p3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tabs_only_for_leading_indentations:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->wrapWithSpaces:Z

    .line 10
    new-instance p1, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    invoke-direct {p1, p0, p3}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/TokenManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;",
            "Lorg/eclipse/jdt/internal/formatter/TokenManager;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->formatOffTagPairs:Ljava/util/List;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->headerEndIndex:I

    .line 14
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/TokenManager$1;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->positionInLineCounter:Lorg/eclipse/jdt/internal/formatter/TokenTraverser;

    .line 15
    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokens:Ljava/util/List;

    .line 16
    iget-object p1, p2, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    .line 17
    iget p1, p2, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tabSize:I

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tabSize:I

    .line 18
    iget p1, p2, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tabChar:I

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tabChar:I

    .line 19
    iget-boolean p1, p2, Lorg/eclipse/jdt/internal/formatter/TokenManager;->wrapWithSpaces:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->wrapWithSpaces:Z

    .line 20
    iget-object p1, p2, Lorg/eclipse/jdt/internal/formatter/TokenManager;->commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    return-void
.end method

.method private getEscapedTokenString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v0

    const-string v1, "&#64;"

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    iget v3, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/2addr v3, v2

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/2addr p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jdt/internal/formatter/TokenManager;->COMMENT_LINE_ANNOTATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tokenInside(Lorg/eclipse/jdt/core/dom/ASTNode;I)Z
    .locals 2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addDisableFormatTokenPair(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->formatOffTagPairs:Ljava/util/List;

    filled-new-array {p1, p2}, [Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNLSAlignIndex(II)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokenIndexToNLSAlign:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokenIndexToNLSAlign:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokenIndexToNLSAlign:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public countLineBreaksBetween(Ljava/lang/String;II)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-lt p2, p3, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_3

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    :goto_1
    move p2, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget p2, p2, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public findFirstTokenInLine(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(IZZ)I

    move-result p1

    return p1
.end method

.method public findFirstTokenInLine(IZZ)I
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v2

    if-lez v2, :cond_3

    .line 5
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sget-object v2, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->BLOCK_INDENT:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-ne v0, v2, :cond_2

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public findIndex(IIZ)I
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget v5, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    if-gt v5, p1, :cond_6

    iget v5, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-gt p1, v5, :cond_6

    move v2, v3

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    if-le v0, p1, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-ge v0, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_2
    if-ltz p2, :cond_5

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-ne p1, p2, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p3, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    const/4 p1, -0x1

    :goto_3
    add-int/2addr v2, p1

    goto :goto_2

    :cond_5
    :goto_4
    return v2

    :cond_6
    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    if-ge v4, p1, :cond_7

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v3, -0x1

    goto :goto_0
.end method

.method public findSourcePositionInLine(I)I
    .locals 3

    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(III)I

    move-result p1

    return p1
.end method

.method public firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result p1

    return p1
.end method

.method public firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result p1

    return p1
.end method

.method public firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result p1

    return p1
.end method

.method public firstTokenAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexAfter(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    return-object p1
.end method

.method public firstTokenBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    return-object p1
.end method

.method public firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/formatter/Token;

    return-object p1
.end method

.method public getDisableFormatTokenPairs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->formatOffTagPairs:Ljava/util/List;

    return-object v0
.end method

.method public getLength(III)I
    .locals 3

    move v0, p3

    :goto_0
    if-le p1, p2, :cond_0

    sub-int/2addr v0, p3

    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 8
    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tabSize:I

    if-lez v1, :cond_3

    .line 9
    rem-int v2, v0, v1

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I
    .locals 2

    .line 1
    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    invoke-virtual {p0, v0, v1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(III)I

    move-result p2

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isToEscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    :goto_0
    add-int/lit8 p2, p2, 0x4

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->COMMENT_LINE_ANNOTATION_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public getNLSAlign(I)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokenIndexToNLSAlign:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method public getPositionInLine(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v1

    if-lez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toIndent(IZ)I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->positionInLineCounter:Lorg/eclipse/jdt/internal/formatter/TokenTraverser;

    iput p1, v3, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->value:I

    iput v2, v3, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->traverse(ILorg/eclipse/jdt/internal/formatter/TokenTraverser;)I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->positionInLineCounter:Lorg/eclipse/jdt/internal/formatter/TokenTraverser;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceLength()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/eclipse/jdt/internal/formatter/Token;)I
    .locals 3

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    if-eq v1, p1, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method public insert(ILorg/eclipse/jdt/internal/formatter/Token;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokens:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public isInHeader(I)Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->headerEndIndex:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isStringConcatenation(Lorg/eclipse/jdt/core/dom/InfixExpression;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getOperator()Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;->PLUS:Lorg/eclipse/jdt/core/dom/InfixExpression$Operator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Expression;

    instance-of v2, v0, Lorg/eclipse/jdt/core/dom/StringLiteral;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    return v3

    :cond_3
    instance-of v2, v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->isStringConcatenation(Lorg/eclipse/jdt/core/dom/InfixExpression;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findIndex(IIZ)I

    move-result p1

    return p1
.end method

.method public lastTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setHeaderEndIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->headerEndIndex:I

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toIndent(IZ)I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tabChar:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->wrapWithSpaces:Z

    if-nez p2, :cond_2

    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tabSize:I

    if-gtz p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/2addr p1, p2

    sub-int/2addr p1, v1

    div-int/2addr p1, p2

    mul-int/2addr p1, p2

    :cond_2
    return p1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/lang/String;
    .locals 3

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isToEscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getEscapedTokenString(Lorg/eclipse/jdt/internal/formatter/Token;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public traverse(ILorg/eclipse/jdt/internal/formatter/TokenTraverser;)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenManager;->tokens:Ljava/util/List;

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->traverse(Ljava/util/List;I)I

    move-result p1

    return p1
.end method
