.class public Lorg/openjdk/tools/javac/parser/Tokens;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/parser/Tokens$NumericToken;,
        Lorg/openjdk/tools/javac/parser/Tokens$StringToken;,
        Lorg/openjdk/tools/javac/parser/Tokens$NamedToken;,
        Lorg/openjdk/tools/javac/parser/Tokens$Token;,
        Lorg/openjdk/tools/javac/parser/Tokens$Comment;,
        Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;
    }
.end annotation


# static fields
.field public static final DUMMY:Lorg/openjdk/tools/javac/parser/Tokens$Token;

.field public static final tokensKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/parser/Tokens;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

.field private maxKey:I

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private tokenName:[Lorg/openjdk/tools/javac/util/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/parser/Tokens;->tokensKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ERROR:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/openjdk/tools/javac/parser/Tokens$Token;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILorg/openjdk/tools/javac/util/List;)V

    sput-object v0, Lorg/openjdk/tools/javac/parser/Tokens;->DUMMY:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/parser/Tokens;->maxKey:I

    invoke-static {}, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->values()[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lorg/openjdk/tools/javac/util/Name;

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/Tokens;->tokenName:[Lorg/openjdk/tools/javac/util/Name;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens;->tokensKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v1, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/Tokens;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {}, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->values()[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v4, v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v3}, Lorg/openjdk/tools/javac/parser/Tokens;->enterKeyword(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/Tokens;->tokenName:[Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v5, 0x0

    aput-object v5, v4, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/openjdk/tools/javac/parser/Tokens;->maxKey:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/Tokens;->key:[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move p1, v0

    :goto_2
    iget v1, p0, Lorg/openjdk/tools/javac/parser/Tokens;->maxKey:I

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/Tokens;->key:[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->values()[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object p1

    array-length v1, p1

    :goto_3
    if-ge v0, v1, :cond_4

    aget-object v2, p1, v0

    iget-object v3, v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/Tokens;->key:[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/Tokens;->tokenName:[Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/Name;->getIndex()I

    move-result v4

    aput-object v2, v3, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private enterKeyword(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens;->tokenName:[Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aput-object p1, v0, p2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getIndex()I

    move-result p2

    iget v0, p0, Lorg/openjdk/tools/javac/parser/Tokens;->maxKey:I

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getIndex()I

    move-result p1

    iput p1, p0, Lorg/openjdk/tools/javac/parser/Tokens;->maxKey:I

    :cond_0
    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/Tokens;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens;->tokensKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/parser/Tokens;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/parser/Tokens;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/parser/Tokens;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public lookupKind(Ljava/lang/String;)Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/Tokens;->lookupKind(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object p1

    return-object p1
.end method

.method public lookupKind(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getIndex()I

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/parser/Tokens;->maxKey:I

    if-le v0, v1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens;->key:[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method
