.class public final enum Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/javadoc/JavadocBlockTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum AUTHOR:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum DEPRECATED:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum EXCEPTION:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum PARAM:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum RETURN:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum SEE:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum SERIAL:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum SERIAL_DATA:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum SERIAL_FIELD:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum SINCE:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum THROWS:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum UNKNOWN:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

.field public static final enum VERSION:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;


# instance fields
.field private keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v1, "AUTHOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->AUTHOR:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v1, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v2, "DEPRECATED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->DEPRECATED:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v2, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v3, "EXCEPTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->EXCEPTION:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v3, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v4, "PARAM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->PARAM:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v4, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v5, "RETURN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->RETURN:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v5, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v6, "SEE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->SEE:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v6, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v7, "SERIAL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->SERIAL:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v7, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v8, "SERIAL_DATA"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->SERIAL_DATA:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v8, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v9, "SERIAL_FIELD"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->SERIAL_FIELD:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v9, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v10, "SINCE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->SINCE:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v10, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v11, "THROWS"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->THROWS:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v11, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v12, "VERSION"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->VERSION:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v12, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    const-string v13, "UNKNOWN"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->UNKNOWN:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    filled-new-array/range {v0 .. v12}, [Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->$VALUES:[Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

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

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->screamingToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->keyword:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public static fromName(Ljava/lang/String;)Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagName"
        }
    .end annotation

    invoke-static {}, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->values()[Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->keyword:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->UNKNOWN:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;
    .locals 1

    sget-object v0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->$VALUES:[Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    invoke-virtual {v0}, [Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    return-object v0
.end method


# virtual methods
.method public hasName()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->PARAM:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->EXCEPTION:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;->THROWS:Lcom/github/javaparser/javadoc/JavadocBlockTag$Type;

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
