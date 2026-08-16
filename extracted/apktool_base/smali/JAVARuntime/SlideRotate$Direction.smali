.class public final enum LJAVARuntime/SlideRotate$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/SlideRotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/SlideRotate$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/SlideRotate$Direction;

.field public static final enum Horizontal:LJAVARuntime/SlideRotate$Direction;

.field public static final enum Vertical:LJAVARuntime/SlideRotate$Direction;


# direct methods
.method private static synthetic $values()[LJAVARuntime/SlideRotate$Direction;
    .locals 2

    sget-object v0, LJAVARuntime/SlideRotate$Direction;->Vertical:LJAVARuntime/SlideRotate$Direction;

    sget-object v1, LJAVARuntime/SlideRotate$Direction;->Horizontal:LJAVARuntime/SlideRotate$Direction;

    filled-new-array {v0, v1}, [LJAVARuntime/SlideRotate$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/SlideRotate$Direction;

    const-string v1, "Vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/SlideRotate$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/SlideRotate$Direction;->Vertical:LJAVARuntime/SlideRotate$Direction;

    new-instance v0, LJAVARuntime/SlideRotate$Direction;

    const-string v1, "Horizontal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/SlideRotate$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/SlideRotate$Direction;->Horizontal:LJAVARuntime/SlideRotate$Direction;

    invoke-static {}, LJAVARuntime/SlideRotate$Direction;->$values()[LJAVARuntime/SlideRotate$Direction;

    move-result-object v0

    sput-object v0, LJAVARuntime/SlideRotate$Direction;->$VALUES:[LJAVARuntime/SlideRotate$Direction;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/SlideRotate$Direction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/SlideRotate$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/SlideRotate$Direction;

    return-object p0
.end method

.method public static values()[LJAVARuntime/SlideRotate$Direction;
    .locals 1

    sget-object v0, LJAVARuntime/SlideRotate$Direction;->$VALUES:[LJAVARuntime/SlideRotate$Direction;

    invoke-virtual {v0}, [LJAVARuntime/SlideRotate$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/SlideRotate$Direction;

    return-object v0
.end method
