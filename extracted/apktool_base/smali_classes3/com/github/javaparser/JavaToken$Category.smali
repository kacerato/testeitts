.class public final enum Lcom/github/javaparser/JavaToken$Category;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/JavaToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/JavaToken$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/JavaToken$Category;

.field public static final enum COMMENT:Lcom/github/javaparser/JavaToken$Category;

.field public static final enum EOL:Lcom/github/javaparser/JavaToken$Category;

.field public static final enum IDENTIFIER:Lcom/github/javaparser/JavaToken$Category;

.field public static final enum KEYWORD:Lcom/github/javaparser/JavaToken$Category;

.field public static final enum LITERAL:Lcom/github/javaparser/JavaToken$Category;

.field public static final enum OPERATOR:Lcom/github/javaparser/JavaToken$Category;

.field public static final enum SEPARATOR:Lcom/github/javaparser/JavaToken$Category;

.field public static final enum WHITESPACE_NO_EOL:Lcom/github/javaparser/JavaToken$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/github/javaparser/JavaToken$Category;

    const-string v1, "WHITESPACE_NO_EOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/javaparser/JavaToken$Category;->WHITESPACE_NO_EOL:Lcom/github/javaparser/JavaToken$Category;

    new-instance v1, Lcom/github/javaparser/JavaToken$Category;

    const-string v2, "EOL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/javaparser/JavaToken$Category;->EOL:Lcom/github/javaparser/JavaToken$Category;

    new-instance v2, Lcom/github/javaparser/JavaToken$Category;

    const-string v3, "COMMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/github/javaparser/JavaToken$Category;->COMMENT:Lcom/github/javaparser/JavaToken$Category;

    new-instance v3, Lcom/github/javaparser/JavaToken$Category;

    const-string v4, "IDENTIFIER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/javaparser/JavaToken$Category;->IDENTIFIER:Lcom/github/javaparser/JavaToken$Category;

    new-instance v4, Lcom/github/javaparser/JavaToken$Category;

    const-string v5, "KEYWORD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/github/javaparser/JavaToken$Category;->KEYWORD:Lcom/github/javaparser/JavaToken$Category;

    new-instance v5, Lcom/github/javaparser/JavaToken$Category;

    const-string v6, "LITERAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/javaparser/JavaToken$Category;->LITERAL:Lcom/github/javaparser/JavaToken$Category;

    new-instance v6, Lcom/github/javaparser/JavaToken$Category;

    const-string v7, "SEPARATOR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/github/javaparser/JavaToken$Category;->SEPARATOR:Lcom/github/javaparser/JavaToken$Category;

    new-instance v7, Lcom/github/javaparser/JavaToken$Category;

    const-string v8, "OPERATOR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/github/javaparser/JavaToken$Category;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/github/javaparser/JavaToken$Category;->OPERATOR:Lcom/github/javaparser/JavaToken$Category;

    filled-new-array/range {v0 .. v7}, [Lcom/github/javaparser/JavaToken$Category;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/JavaToken$Category;->$VALUES:[Lcom/github/javaparser/JavaToken$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/JavaToken$Category;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/JavaToken$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/JavaToken$Category;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/JavaToken$Category;
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->$VALUES:[Lcom/github/javaparser/JavaToken$Category;

    invoke-virtual {v0}, [Lcom/github/javaparser/JavaToken$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/JavaToken$Category;

    return-object v0
.end method


# virtual methods
.method public isComment()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->COMMENT:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndOfLine()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->EOL:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdentifier()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->IDENTIFIER:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKeyword()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->KEYWORD:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiteral()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->LITERAL:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOperator()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->OPERATOR:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeparator()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->SEPARATOR:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhitespace()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->WHITESPACE_NO_EOL:Lcom/github/javaparser/JavaToken$Category;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->EOL:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

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

.method public isWhitespaceButNotEndOfLine()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->WHITESPACE_NO_EOL:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhitespaceOrComment()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken$Category;->isWhitespace()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/github/javaparser/JavaToken$Category;->COMMENT:Lcom/github/javaparser/JavaToken$Category;

    if-ne p0, v0, :cond_0

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
