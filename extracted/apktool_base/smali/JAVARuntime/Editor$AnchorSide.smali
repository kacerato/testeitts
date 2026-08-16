.class public final enum LJAVARuntime/Editor$AnchorSide;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnchorSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Editor$AnchorSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Editor$AnchorSide;

.field public static final enum Above:LJAVARuntime/Editor$AnchorSide;

.field public static final enum Below:LJAVARuntime/Editor$AnchorSide;

.field public static final enum Left:LJAVARuntime/Editor$AnchorSide;

.field public static final enum Right:LJAVARuntime/Editor$AnchorSide;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Editor$AnchorSide;
    .locals 4

    sget-object v0, LJAVARuntime/Editor$AnchorSide;->Left:LJAVARuntime/Editor$AnchorSide;

    sget-object v1, LJAVARuntime/Editor$AnchorSide;->Above:LJAVARuntime/Editor$AnchorSide;

    sget-object v2, LJAVARuntime/Editor$AnchorSide;->Below:LJAVARuntime/Editor$AnchorSide;

    sget-object v3, LJAVARuntime/Editor$AnchorSide;->Right:LJAVARuntime/Editor$AnchorSide;

    filled-new-array {v0, v1, v2, v3}, [LJAVARuntime/Editor$AnchorSide;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Editor$AnchorSide;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Editor$AnchorSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Editor$AnchorSide;->Left:LJAVARuntime/Editor$AnchorSide;

    new-instance v0, LJAVARuntime/Editor$AnchorSide;

    const-string v1, "Above"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Editor$AnchorSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Editor$AnchorSide;->Above:LJAVARuntime/Editor$AnchorSide;

    new-instance v0, LJAVARuntime/Editor$AnchorSide;

    const-string v1, "Below"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Editor$AnchorSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Editor$AnchorSide;->Below:LJAVARuntime/Editor$AnchorSide;

    new-instance v0, LJAVARuntime/Editor$AnchorSide;

    const-string v1, "Right"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/Editor$AnchorSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Editor$AnchorSide;->Right:LJAVARuntime/Editor$AnchorSide;

    invoke-static {}, LJAVARuntime/Editor$AnchorSide;->$values()[LJAVARuntime/Editor$AnchorSide;

    move-result-object v0

    sput-object v0, LJAVARuntime/Editor$AnchorSide;->$VALUES:[LJAVARuntime/Editor$AnchorSide;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Editor$AnchorSide;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Editor$AnchorSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Editor$AnchorSide;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Editor$AnchorSide;
    .locals 1

    sget-object v0, LJAVARuntime/Editor$AnchorSide;->$VALUES:[LJAVARuntime/Editor$AnchorSide;

    invoke-virtual {v0}, [LJAVARuntime/Editor$AnchorSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Editor$AnchorSide;

    return-object v0
.end method
