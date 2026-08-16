.class public Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;
.super Ljava/io/PrintWriter;
.source "SourceFile"


# static fields
.field private static final XML_VERSION:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"


# instance fields
.field private lineSeparator:Ljava/lang/String;

.field private tab:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->tab:I

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->lineSeparator:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 5
    const-string p1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static appendEscapedChar(Ljava/lang/StringBuffer;C)V
    .locals 1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->getReplacement(C)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 p1, 0x26

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method private static getEscaped(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->appendEscapedChar(Ljava/lang/StringBuffer;C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getReplacement(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x26

    if-eq p0, v0, :cond_1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "apos"

    return-object p0

    :cond_1
    const-string p0, "amp"

    return-object p0

    :cond_2
    const-string p0, "gt"

    return-object p0

    :cond_3
    const-string p0, "lt"

    return-object p0

    :cond_4
    const-string p0, "quot"

    return-object p0
.end method

.method private printTabulation()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->tab:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public endTag(Ljava/lang/String;ZZ)V
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->tab:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->tab:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    return-void
.end method

.method public printString(Ljava/lang/String;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTabulation()V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTabulation()V

    :cond_0
    const/16 p3, 0x3c

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p3, p1, [Ljava/util/Map$Entry;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter$1;-><init>(Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;)V

    invoke-static {p3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    aget-object v1, p3, v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, "=\""

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v1, p3, v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->getEscaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p5, :cond_3

    const-string p1, "/>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    if-eqz p4, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    if-nez p5, :cond_5

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->tab:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->tab:I

    :cond_5
    return-void
.end method

.method public startTag(Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->tab:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->tab:I

    return-void
.end method
