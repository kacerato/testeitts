.class public final enum Lcom/github/javaparser/utils/LineSeparator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/utils/LineSeparator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/utils/LineSeparator;

.field public static final enum ARBITRARY:Lcom/github/javaparser/utils/LineSeparator;

.field public static final enum CR:Lcom/github/javaparser/utils/LineSeparator;

.field public static final enum CRLF:Lcom/github/javaparser/utils/LineSeparator;

.field public static final enum LF:Lcom/github/javaparser/utils/LineSeparator;

.field public static final enum MIXED:Lcom/github/javaparser/utils/LineSeparator;

.field public static final enum NONE:Lcom/github/javaparser/utils/LineSeparator;

.field public static final enum SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

.field public static final enum UNKNOWN:Lcom/github/javaparser/utils/LineSeparator;


# instance fields
.field private final description:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/github/javaparser/utils/LineSeparator;

    const-string v1, "CR (\\r)"

    const-string v2, "CR"

    const/4 v3, 0x0

    const-string v4, "\r"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/github/javaparser/utils/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/github/javaparser/utils/LineSeparator;->CR:Lcom/github/javaparser/utils/LineSeparator;

    new-instance v1, Lcom/github/javaparser/utils/LineSeparator;

    const-string v2, "LF (\\n)"

    const-string v3, "LF"

    const/4 v5, 0x1

    const-string v6, "\n"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/github/javaparser/utils/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/github/javaparser/utils/LineSeparator;->LF:Lcom/github/javaparser/utils/LineSeparator;

    new-instance v2, Lcom/github/javaparser/utils/LineSeparator;

    const-string v3, "\r\n"

    const-string v5, "CRLF (\\r\\n)"

    const-string v7, "CRLF"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/github/javaparser/utils/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/github/javaparser/utils/LineSeparator;->CRLF:Lcom/github/javaparser/utils/LineSeparator;

    new-instance v3, Lcom/github/javaparser/utils/LineSeparator;

    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SYSTEM : ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "\\r"

    invoke-virtual {v5, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\n"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SYSTEM"

    const/4 v8, 0x3

    invoke-direct {v3, v5, v8, v7, v4}, Lcom/github/javaparser/utils/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    new-instance v4, Lcom/github/javaparser/utils/LineSeparator;

    const/4 v5, 0x4

    const-string v7, "ARBITRARY (\\n)"

    const-string v8, "ARBITRARY"

    invoke-direct {v4, v8, v5, v6, v7}, Lcom/github/javaparser/utils/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/github/javaparser/utils/LineSeparator;->ARBITRARY:Lcom/github/javaparser/utils/LineSeparator;

    new-instance v5, Lcom/github/javaparser/utils/LineSeparator;

    const-string v6, "MIXED"

    const/4 v7, 0x5

    const-string v8, ""

    invoke-direct {v5, v6, v7, v8, v6}, Lcom/github/javaparser/utils/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/github/javaparser/utils/LineSeparator;->MIXED:Lcom/github/javaparser/utils/LineSeparator;

    new-instance v6, Lcom/github/javaparser/utils/LineSeparator;

    const-string v7, "UNKNOWN"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8, v7}, Lcom/github/javaparser/utils/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/github/javaparser/utils/LineSeparator;->UNKNOWN:Lcom/github/javaparser/utils/LineSeparator;

    new-instance v7, Lcom/github/javaparser/utils/LineSeparator;

    const-string v9, "NONE"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8, v9}, Lcom/github/javaparser/utils/LineSeparator;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/github/javaparser/utils/LineSeparator;->NONE:Lcom/github/javaparser/utils/LineSeparator;

    filled-new-array/range {v0 .. v7}, [Lcom/github/javaparser/utils/LineSeparator;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/utils/LineSeparator;->$VALUES:[Lcom/github/javaparser/utils/LineSeparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "text",
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/javaparser/utils/LineSeparator;->text:Ljava/lang/String;

    iput-object p4, p0, Lcom/github/javaparser/utils/LineSeparator;->description:Ljava/lang/String;

    return-void
.end method

.method private static count(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "haystack",
            "needle"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method public static detect(Ljava/lang/String;)Lcom/github/javaparser/utils/LineSeparator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    const-string v0, "\r"

    invoke-static {p0, v0}, Lcom/github/javaparser/utils/LineSeparator;->count(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "\n"

    invoke-static {p0, v1}, Lcom/github/javaparser/utils/LineSeparator;->count(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "\r\n"

    invoke-static {p0, v2}, Lcom/github/javaparser/utils/LineSeparator;->count(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/github/javaparser/utils/LineSeparator;->getLineEnding(III)Lcom/github/javaparser/utils/LineSeparator;

    move-result-object p0

    return-object p0
.end method

.method public static getLineEnding(III)Lcom/github/javaparser/utils/LineSeparator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "countCr",
            "countLf",
            "countCrLf"
        }
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    sget-object p0, Lcom/github/javaparser/utils/LineSeparator;->NONE:Lcom/github/javaparser/utils/LineSeparator;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    sget-object p0, Lcom/github/javaparser/utils/LineSeparator;->CR:Lcom/github/javaparser/utils/LineSeparator;

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    if-lez p1, :cond_2

    if-nez p2, :cond_2

    sget-object p0, Lcom/github/javaparser/utils/LineSeparator;->LF:Lcom/github/javaparser/utils/LineSeparator;

    return-object p0

    :cond_2
    if-ne p0, p1, :cond_3

    if-ne p1, p2, :cond_3

    sget-object p0, Lcom/github/javaparser/utils/LineSeparator;->CRLF:Lcom/github/javaparser/utils/LineSeparator;

    return-object p0

    :cond_3
    sget-object p0, Lcom/github/javaparser/utils/LineSeparator;->MIXED:Lcom/github/javaparser/utils/LineSeparator;

    return-object p0
.end method

.method public static lookup(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ending"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/utils/LineSeparator;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->CR:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->LF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->CRLF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static lookupEscaped(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ending"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/utils/LineSeparator;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->CR:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0}, Lcom/github/javaparser/utils/LineSeparator;->asEscapedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->LF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0}, Lcom/github/javaparser/utils/LineSeparator;->asEscapedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->CRLF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0}, Lcom/github/javaparser/utils/LineSeparator;->asEscapedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/utils/LineSeparator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/utils/LineSeparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/utils/LineSeparator;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/utils/LineSeparator;
    .locals 1

    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->$VALUES:[Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0}, [Lcom/github/javaparser/utils/LineSeparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/utils/LineSeparator;

    return-object v0
.end method


# virtual methods
.method public asEscapedString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/utils/LineSeparator;->text:Ljava/lang/String;

    const-string v1, "\r"

    const-string v2, "\\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asRawString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/LineSeparator;->text:Ljava/lang/String;

    return-object v0
.end method

.method public describe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/LineSeparator;->description:Ljava/lang/String;

    return-object v0
.end method

.method public equalsString(Lcom/github/javaparser/utils/LineSeparator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineSeparator"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/LineSeparator;->text:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isStandardEol()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->CR:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/LineSeparator;->equalsString(Lcom/github/javaparser/utils/LineSeparator;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->LF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/LineSeparator;->equalsString(Lcom/github/javaparser/utils/LineSeparator;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->CRLF:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/LineSeparator;->equalsString(Lcom/github/javaparser/utils/LineSeparator;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
