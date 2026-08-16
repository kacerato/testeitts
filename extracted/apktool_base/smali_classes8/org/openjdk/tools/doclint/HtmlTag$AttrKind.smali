.class public final enum Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/HtmlTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttrKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

.field public static final enum ALL:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

.field public static final enum HTML4:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

.field public static final enum HTML5:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

.field public static final enum INVALID:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

.field public static final enum OBSOLETE:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

.field public static final enum USE_CSS:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    const-string v1, "HTML4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->HTML4:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    new-instance v1, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    const-string v2, "HTML5"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->HTML5:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    new-instance v2, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    const-string v3, "INVALID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->INVALID:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    new-instance v3, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    const-string v4, "OBSOLETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->OBSOLETE:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    new-instance v4, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    const-string v5, "USE_CSS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->USE_CSS:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    new-instance v5, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    const-string v6, "ALL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->ALL:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    filled-new-array/range {v0 .. v5}, [Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->$VALUES:[Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->$VALUES:[Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    return-object v0
.end method
