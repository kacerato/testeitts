.class public final Lorg/eclipse/jdt/core/formatter/IndentManipulation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateSpaceEquivalents(II)I
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    rem-int v0, p1, p0

    sub-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static changeIndent(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    if-eqz p0, :cond_4

    if-ltz p1, :cond_4

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    :try_start_0
    new-instance v0, Lorg/eclipse/jface/text/DefaultLineTracker;

    invoke-direct {v0}, Lorg/eclipse/jface/text/DefaultLineTracker;-><init>()V

    invoke-interface {v0, p0}, Lorg/eclipse/jface/text/ILineTracker;->set(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/eclipse/jface/text/ILineTracker;->getNumberOfLines()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0, v3}, Lorg/eclipse/jface/text/ILineTracker;->getLineInformation(I)Lorg/eclipse/jface/text/IRegion;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v5

    invoke-interface {v4}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_3

    invoke-static {v4, p1, p2, p3}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->trimIndent(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static extractIndentString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    if-ltz p1, :cond_7

    if-ltz p2, :cond_7

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->calculateSpaceEquivalents(II)I

    move-result v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    invoke-static {v6}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isIndentChar(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    if-lt v3, p2, :cond_3

    add-int/2addr v5, v4

    if-nez p2, :cond_2

    move v3, v1

    move v4, v3

    goto :goto_3

    :cond_2
    rem-int/2addr v3, p2

    move v4, v1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    if-nez v5, :cond_5

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    return-object p0

    :cond_5
    if-ne v5, v0, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getChangeIndentEdits(Ljava/lang/String;IIILjava/lang/String;)[Lorg/eclipse/text/edits/ReplaceEdit;
    .locals 8

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    if-eqz p0, :cond_3

    if-ltz p1, :cond_3

    if-eqz p4, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/eclipse/jface/text/DefaultLineTracker;

    invoke-direct {v1}, Lorg/eclipse/jface/text/DefaultLineTracker;-><init>()V

    invoke-interface {v1, p0}, Lorg/eclipse/jface/text/ILineTracker;->set(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/eclipse/jface/text/ILineTracker;->getNumberOfLines()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/eclipse/text/edits/ReplaceEdit;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/text/edits/ReplaceEdit;

    return-object p0

    :cond_0
    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lorg/eclipse/jface/text/ILineTracker;->getLineInformation(I)Lorg/eclipse/jface/text/IRegion;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v5

    invoke-interface {v4}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2, p3}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->indexOfIndent(Ljava/lang/CharSequence;III)I

    move-result v6

    if-ltz v6, :cond_2

    new-instance v4, Lorg/eclipse/text/edits/ReplaceEdit;

    invoke-direct {v4, v5, v6, p4}, Lorg/eclipse/text/edits/ReplaceEdit;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v4, p2, p3}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->measureIndentUnits(Ljava/lang/CharSequence;II)I

    move-result v4

    new-instance v6, Lorg/eclipse/text/edits/ReplaceEdit;

    const-string v7, ""

    invoke-direct {v6, v5, v4, v7}, Lorg/eclipse/text/edits/ReplaceEdit;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/eclipse/text/edits/ReplaceEdit;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/text/edits/ReplaceEdit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getIndentWidth(Ljava/util/Map;)I
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->getTabWidth(Ljava/util/Map;)I

    move-result v0

    const-string v1, "org.eclipse.jdt.core.formatter.tabulation.char"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mixed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.formatter.indentation.size"

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->getIntValue(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getIntValue(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public static getTabWidth(Ljava/util/Map;)I
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "org.eclipse.jdt.core.formatter.tabulation.size"

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->getIntValue(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static indexOfIndent(Ljava/lang/CharSequence;III)I
    .locals 7

    mul-int/2addr p1, p3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v1, p3, :cond_2

    if-lt v2, p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->calculateSpaceEquivalents(II)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isIndentChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v2, p1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    return v3
.end method

.method public static isIndentChar(C)Z
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isLineDelimiterChar(C)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLineDelimiterChar(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static measureIndentInSpaces(Ljava/lang/CharSequence;I)I
    .locals 5

    if-ltz p1, :cond_3

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->calculateSpaceEquivalents(II)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isIndentChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static measureIndentUnits(Ljava/lang/CharSequence;II)I
    .locals 0

    if-ltz p2, :cond_1

    if-ltz p1, :cond_1

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->measureIndentInSpaces(Ljava/lang/CharSequence;I)I

    move-result p0

    div-int/2addr p0, p2

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static trimIndent(Ljava/lang/String;III)Ljava/lang/String;
    .locals 6

    if-ltz p2, :cond_9

    if-ltz p3, :cond_9

    if-eqz p0, :cond_9

    if-lez p1, :cond_8

    if-nez p3, :cond_0

    goto :goto_4

    :cond_0
    mul-int/2addr p1, p3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-lt v1, p3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->calculateSpaceEquivalents(II)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isIndentChar(C)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-ne v2, p1, :cond_3

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_3
    if-le v2, p1, :cond_4

    add-int/lit8 v0, v1, 0x1

    sub-int/2addr v2, p1

    new-array p1, v2, [C

    const/16 p2, 0x20

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([CC)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_2
    if-ne v0, p3, :cond_6

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    if-nez v3, :cond_7

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    :goto_4
    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
