.class public final enum Lorg/openjdk/tools/doclint/HtmlVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/doclint/HtmlVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/doclint/HtmlVersion;

.field public static final enum ALL:Lorg/openjdk/tools/doclint/HtmlVersion;

.field public static final enum HTML4:Lorg/openjdk/tools/doclint/HtmlVersion;

.field public static final enum HTML5:Lorg/openjdk/tools/doclint/HtmlVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/doclint/HtmlVersion;

    const-string v1, "HTML4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/doclint/HtmlVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML4:Lorg/openjdk/tools/doclint/HtmlVersion;

    new-instance v1, Lorg/openjdk/tools/doclint/HtmlVersion;

    const-string v2, "HTML5"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/doclint/HtmlVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML5:Lorg/openjdk/tools/doclint/HtmlVersion;

    new-instance v2, Lorg/openjdk/tools/doclint/HtmlVersion;

    const-string v3, "ALL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/doclint/HtmlVersion;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/doclint/HtmlVersion;->ALL:Lorg/openjdk/tools/doclint/HtmlVersion;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/doclint/HtmlVersion;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/HtmlVersion;->$VALUES:[Lorg/openjdk/tools/doclint/HtmlVersion;

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

.method public static getHtmlVersion(Ljava/lang/String;)Lorg/openjdk/tools/doclint/HtmlVersion;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "html4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "html5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML5:Lorg/openjdk/tools/doclint/HtmlVersion;

    return-object p0

    :cond_1
    sget-object p0, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML4:Lorg/openjdk/tools/doclint/HtmlVersion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/doclint/HtmlVersion;
    .locals 1

    const-class v0, Lorg/openjdk/tools/doclint/HtmlVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/doclint/HtmlVersion;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/doclint/HtmlVersion;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlVersion;->$VALUES:[Lorg/openjdk/tools/doclint/HtmlVersion;

    invoke-virtual {v0}, [Lorg/openjdk/tools/doclint/HtmlVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/doclint/HtmlVersion;

    return-object v0
.end method
