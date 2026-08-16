.class public final enum Lorg/openjdk/tools/doclint/HtmlTag$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/HtmlTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/doclint/HtmlTag$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/doclint/HtmlTag$Flag;

.field public static final enum ACCEPTS_BLOCK:Lorg/openjdk/tools/doclint/HtmlTag$Flag;

.field public static final enum ACCEPTS_INLINE:Lorg/openjdk/tools/doclint/HtmlTag$Flag;

.field public static final enum EXPECT_CONTENT:Lorg/openjdk/tools/doclint/HtmlTag$Flag;

.field public static final enum NO_NEST:Lorg/openjdk/tools/doclint/HtmlTag$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    const-string v1, "ACCEPTS_BLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/doclint/HtmlTag$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/doclint/HtmlTag$Flag;->ACCEPTS_BLOCK:Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    new-instance v1, Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    const-string v2, "ACCEPTS_INLINE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/doclint/HtmlTag$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/doclint/HtmlTag$Flag;->ACCEPTS_INLINE:Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    new-instance v2, Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    const-string v3, "EXPECT_CONTENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/doclint/HtmlTag$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/doclint/HtmlTag$Flag;->EXPECT_CONTENT:Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    new-instance v3, Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    const-string v4, "NO_NEST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/doclint/HtmlTag$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/doclint/HtmlTag$Flag;->NO_NEST:Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/HtmlTag$Flag;->$VALUES:[Lorg/openjdk/tools/doclint/HtmlTag$Flag;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/doclint/HtmlTag$Flag;
    .locals 1

    const-class v0, Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/doclint/HtmlTag$Flag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag$Flag;->$VALUES:[Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    invoke-virtual {v0}, [Lorg/openjdk/tools/doclint/HtmlTag$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    return-object v0
.end method
