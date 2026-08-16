.class public final enum LJAVARuntime/UIAspectRatio$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/UIAspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/UIAspectRatio$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/UIAspectRatio$Mode;

.field public static final enum HeightControlsWidth:LJAVARuntime/UIAspectRatio$Mode;

.field public static final enum None:LJAVARuntime/UIAspectRatio$Mode;

.field public static final enum WidthControlsHeight:LJAVARuntime/UIAspectRatio$Mode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/UIAspectRatio$Mode;
    .locals 3

    sget-object v0, LJAVARuntime/UIAspectRatio$Mode;->None:LJAVARuntime/UIAspectRatio$Mode;

    sget-object v1, LJAVARuntime/UIAspectRatio$Mode;->WidthControlsHeight:LJAVARuntime/UIAspectRatio$Mode;

    sget-object v2, LJAVARuntime/UIAspectRatio$Mode;->HeightControlsWidth:LJAVARuntime/UIAspectRatio$Mode;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/UIAspectRatio$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/UIAspectRatio$Mode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIAspectRatio$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIAspectRatio$Mode;->None:LJAVARuntime/UIAspectRatio$Mode;

    new-instance v0, LJAVARuntime/UIAspectRatio$Mode;

    const-string v1, "WidthControlsHeight"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIAspectRatio$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIAspectRatio$Mode;->WidthControlsHeight:LJAVARuntime/UIAspectRatio$Mode;

    new-instance v0, LJAVARuntime/UIAspectRatio$Mode;

    const-string v1, "HeightControlsWidth"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIAspectRatio$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIAspectRatio$Mode;->HeightControlsWidth:LJAVARuntime/UIAspectRatio$Mode;

    invoke-static {}, LJAVARuntime/UIAspectRatio$Mode;->$values()[LJAVARuntime/UIAspectRatio$Mode;

    move-result-object v0

    sput-object v0, LJAVARuntime/UIAspectRatio$Mode;->$VALUES:[LJAVARuntime/UIAspectRatio$Mode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/UIAspectRatio$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/UIAspectRatio$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/UIAspectRatio$Mode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/UIAspectRatio$Mode;
    .locals 1

    sget-object v0, LJAVARuntime/UIAspectRatio$Mode;->$VALUES:[LJAVARuntime/UIAspectRatio$Mode;

    invoke-virtual {v0}, [LJAVARuntime/UIAspectRatio$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/UIAspectRatio$Mode;

    return-object v0
.end method
