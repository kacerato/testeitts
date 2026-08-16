.class Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;
.super Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/utils/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AggregateTranslator"
.end annotation


# instance fields
.field private final translators:[Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;


# direct methods
.method private varargs constructor <init>([Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "translators"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;-><init>(Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, [Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    :goto_0
    iput-object v0, p0, Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;->translators:[Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;-><init>([Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;)V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 5
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

    iget-object v0, p0, Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;->translators:[Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2, p3}, Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v4

    if-eqz v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
