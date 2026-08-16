.class Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;
.super Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/utils/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookupTranslator"
.end annotation


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefixSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final shortest:I


# direct methods
.method private varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "lookup"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;-><init>(Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->lookupMap:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->prefixSet:Ljava/util/HashSet;

    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 5
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p1, v3

    .line 6
    iget-object v6, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->lookupMap:Ljava/util/HashMap;

    aget-object v7, v5, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v6, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->prefixSet:Ljava/util/HashSet;

    aget-object v7, v5, v1

    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    aget-object v5, v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v5, v0, :cond_0

    move v0, v5

    :cond_0
    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 9
    :cond_3
    iput v0, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->shortest:I

    .line 10
    iput v1, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->longest:I

    return-void
.end method

.method public synthetic constructor <init>([[Ljava/lang/CharSequence;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "index",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->prefixSet:Ljava/util/HashSet;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->longest:I

    add-int v1, p2, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    :cond_0
    :goto_0
    iget v1, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->shortest:I

    if-lt v0, v1, :cond_2

    add-int v1, p2, v0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;->lookupMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
