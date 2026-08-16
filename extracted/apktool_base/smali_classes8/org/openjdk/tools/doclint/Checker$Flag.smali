.class public final enum Lorg/openjdk/tools/doclint/Checker$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/Checker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/doclint/Checker$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/doclint/Checker$Flag;

.field public static final enum HAS_ELEMENT:Lorg/openjdk/tools/doclint/Checker$Flag;

.field public static final enum HAS_HEADING:Lorg/openjdk/tools/doclint/Checker$Flag;

.field public static final enum HAS_INLINE_TAG:Lorg/openjdk/tools/doclint/Checker$Flag;

.field public static final enum HAS_TEXT:Lorg/openjdk/tools/doclint/Checker$Flag;

.field public static final enum REPORTED_BAD_INLINE:Lorg/openjdk/tools/doclint/Checker$Flag;

.field public static final enum TABLE_HAS_CAPTION:Lorg/openjdk/tools/doclint/Checker$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/openjdk/tools/doclint/Checker$Flag;

    const-string v1, "TABLE_HAS_CAPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/doclint/Checker$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/doclint/Checker$Flag;->TABLE_HAS_CAPTION:Lorg/openjdk/tools/doclint/Checker$Flag;

    new-instance v1, Lorg/openjdk/tools/doclint/Checker$Flag;

    const-string v2, "HAS_ELEMENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/doclint/Checker$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_ELEMENT:Lorg/openjdk/tools/doclint/Checker$Flag;

    new-instance v2, Lorg/openjdk/tools/doclint/Checker$Flag;

    const-string v3, "HAS_HEADING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/doclint/Checker$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_HEADING:Lorg/openjdk/tools/doclint/Checker$Flag;

    new-instance v3, Lorg/openjdk/tools/doclint/Checker$Flag;

    const-string v4, "HAS_INLINE_TAG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/doclint/Checker$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_INLINE_TAG:Lorg/openjdk/tools/doclint/Checker$Flag;

    new-instance v4, Lorg/openjdk/tools/doclint/Checker$Flag;

    const-string v5, "HAS_TEXT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/doclint/Checker$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_TEXT:Lorg/openjdk/tools/doclint/Checker$Flag;

    new-instance v5, Lorg/openjdk/tools/doclint/Checker$Flag;

    const-string v6, "REPORTED_BAD_INLINE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openjdk/tools/doclint/Checker$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/tools/doclint/Checker$Flag;->REPORTED_BAD_INLINE:Lorg/openjdk/tools/doclint/Checker$Flag;

    filled-new-array/range {v0 .. v5}, [Lorg/openjdk/tools/doclint/Checker$Flag;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/Checker$Flag;->$VALUES:[Lorg/openjdk/tools/doclint/Checker$Flag;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/doclint/Checker$Flag;
    .locals 1

    const-class v0, Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/doclint/Checker$Flag;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/doclint/Checker$Flag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/doclint/Checker$Flag;->$VALUES:[Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-virtual {v0}, [Lorg/openjdk/tools/doclint/Checker$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/doclint/Checker$Flag;

    return-object v0
.end method
