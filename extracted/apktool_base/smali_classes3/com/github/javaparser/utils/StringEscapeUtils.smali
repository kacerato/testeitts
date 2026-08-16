.class public final Lcom/github/javaparser/utils/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;,
        Lcom/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;,
        Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;,
        Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;,
        Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
    }
.end annotation


# static fields
.field private static final ESCAPE_JAVA:Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

.field private static final JAVA_CTRL_CHARS_ESCAPE:Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

.field private static final JAVA_CTRL_CHARS_UNESCAPE:Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

.field private static final UNESCAPE_JAVA:Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

.field private static final UNESCAPE_JAVA_TEXT_BLOCK:Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    const-string v1, "\\b"

    const-string v2, "\u0008"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\n"

    const-string v5, "\n"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\t"

    const-string v8, "\t"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\f"

    const-string v11, "\u000c"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\r"

    const-string v14, "\r"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v15

    filled-new-array {v3, v6, v9, v12, v15}, [[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    sput-object v0, Lcom/github/javaparser/utils/StringEscapeUtils;->JAVA_CTRL_CHARS_UNESCAPE:Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    new-instance v3, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v5

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v1, v2, v4, v5, v7}, [[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    sput-object v3, Lcom/github/javaparser/utils/StringEscapeUtils;->JAVA_CTRL_CHARS_ESCAPE:Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    new-instance v1, Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;

    new-instance v2, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    const-string v4, "\""

    const-string v5, "\\\""

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\"

    const-string v9, "\\\\"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v10

    filled-new-array {v7, v10}, [[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    const/4 v7, 0x2

    new-array v10, v7, [Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v2, 0x1

    aput-object v3, v10, v2

    invoke-direct {v1, v10, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;-><init>([Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    sput-object v1, Lcom/github/javaparser/utils/StringEscapeUtils;->ESCAPE_JAVA:Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    new-instance v1, Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;

    new-instance v3, Lcom/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;

    invoke-direct {v3, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;-><init>(Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    new-instance v10, Lcom/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;

    invoke-direct {v10, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;-><init>(Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    new-instance v12, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\\'"

    const-string v7, "\'"

    filled-new-array {v15, v7}, [Ljava/lang/String;

    move-result-object v2

    const-string v11, ""

    move-object/from16 v16, v7

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v13, v14, v2, v7}, [[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    const/4 v2, 0x4

    new-array v7, v2, [Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v10, v7, v3

    const/4 v3, 0x2

    aput-object v0, v7, v3

    const/4 v3, 0x3

    aput-object v12, v7, v3

    invoke-direct {v1, v7, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;-><init>([Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    sput-object v1, Lcom/github/javaparser/utils/StringEscapeUtils;->UNESCAPE_JAVA:Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    new-instance v1, Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;

    new-instance v7, Lcom/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;

    invoke-direct {v7, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;-><init>(Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    new-instance v10, Lcom/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;

    invoke-direct {v10, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;-><init>(Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    new-instance v12, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v17

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v16

    filled-new-array {v15, v4}, [Ljava/lang/String;

    move-result-object v19

    filled-new-array {v8, v11}, [Ljava/lang/String;

    move-result-object v20

    const-string v4, "\\s"

    const-string v5, " "

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v21

    const-string v4, "\\\n"

    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v22

    filled-new-array/range {v17 .. v22}, [[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    new-array v2, v2, [Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    const/4 v4, 0x0

    aput-object v7, v2, v4

    const/4 v4, 0x1

    aput-object v10, v2, v4

    const/4 v4, 0x2

    aput-object v0, v2, v4

    aput-object v12, v2, v3

    invoke-direct {v1, v2, v6}, Lcom/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;-><init>([Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;Lcom/github/javaparser/utils/StringEscapeUtils$1;)V

    sput-object v1, Lcom/github/javaparser/utils/StringEscapeUtils;->UNESCAPE_JAVA_TEXT_BLOCK:Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/utils/StringEscapeUtils;->ESCAPE_JAVA:Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    invoke-static {v0, p0}, Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->access$000(Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/utils/StringEscapeUtils;->UNESCAPE_JAVA:Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    invoke-static {v0, p0}, Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->access$000(Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeJavaTextBlock(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/utils/StringEscapeUtils;->UNESCAPE_JAVA_TEXT_BLOCK:Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    invoke-static {v0, p0}, Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->access$000(Lcom/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
