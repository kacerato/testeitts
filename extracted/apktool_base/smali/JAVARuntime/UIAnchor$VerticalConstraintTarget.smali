.class public final enum LJAVARuntime/UIAnchor$VerticalConstraintTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/UIAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerticalConstraintTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/UIAnchor$VerticalConstraintTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/UIAnchor$VerticalConstraintTarget;

.field public static final enum ToBottomOf:LJAVARuntime/UIAnchor$VerticalConstraintTarget;

.field public static final enum ToTopOf:LJAVARuntime/UIAnchor$VerticalConstraintTarget;

.field public static final enum Unfixed:LJAVARuntime/UIAnchor$VerticalConstraintTarget;


# direct methods
.method private static synthetic $values()[LJAVARuntime/UIAnchor$VerticalConstraintTarget;
    .locals 3

    sget-object v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;->Unfixed:LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    sget-object v1, LJAVARuntime/UIAnchor$VerticalConstraintTarget;->ToTopOf:LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    sget-object v2, LJAVARuntime/UIAnchor$VerticalConstraintTarget;->ToBottomOf:LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    const-string v1, "Unfixed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIAnchor$VerticalConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;->Unfixed:LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    new-instance v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    const-string v1, "ToTopOf"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIAnchor$VerticalConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;->ToTopOf:LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    new-instance v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    const-string v1, "ToBottomOf"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIAnchor$VerticalConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;->ToBottomOf:LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    invoke-static {}, LJAVARuntime/UIAnchor$VerticalConstraintTarget;->$values()[LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    move-result-object v0

    sput-object v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;->$VALUES:[LJAVARuntime/UIAnchor$VerticalConstraintTarget;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/UIAnchor$VerticalConstraintTarget;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    return-object p0
.end method

.method public static values()[LJAVARuntime/UIAnchor$VerticalConstraintTarget;
    .locals 1

    sget-object v0, LJAVARuntime/UIAnchor$VerticalConstraintTarget;->$VALUES:[LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    invoke-virtual {v0}, [LJAVARuntime/UIAnchor$VerticalConstraintTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/UIAnchor$VerticalConstraintTarget;

    return-object v0
.end method
