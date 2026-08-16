.class public final enum Lorg/openjdk/tools/doclint/HtmlTag$BlockType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/HtmlTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/doclint/HtmlTag$BlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

.field public static final enum BLOCK:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

.field public static final enum INLINE:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

.field public static final enum LIST_ITEM:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

.field public static final enum OTHER:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

.field public static final enum TABLE_ITEM:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    const-string v1, "BLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->BLOCK:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    new-instance v1, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    const-string v2, "INLINE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->INLINE:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    new-instance v2, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    const-string v3, "LIST_ITEM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->LIST_ITEM:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    new-instance v3, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    const-string v4, "TABLE_ITEM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->TABLE_ITEM:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    new-instance v4, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->OTHER:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->$VALUES:[Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/doclint/HtmlTag$BlockType;
    .locals 1

    const-class v0, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/doclint/HtmlTag$BlockType;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->$VALUES:[Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    invoke-virtual {v0}, [Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    return-object v0
.end method
