.class public final enum LJAVARuntime/UIAnchor$HorizontalConstraintTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/UIAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HorizontalConstraintTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/UIAnchor$HorizontalConstraintTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

.field public static final enum ToLeftOf:LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

.field public static final enum ToRightOf:LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

.field public static final enum Unfixed:LJAVARuntime/UIAnchor$HorizontalConstraintTarget;


# direct methods
.method private static synthetic $values()[LJAVARuntime/UIAnchor$HorizontalConstraintTarget;
    .locals 3

    sget-object v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->Unfixed:LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    sget-object v1, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->ToLeftOf:LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    sget-object v2, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->ToRightOf:LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    const-string v1, "Unfixed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->Unfixed:LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    new-instance v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    const-string v1, "ToLeftOf"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->ToLeftOf:LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    new-instance v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    const-string v1, "ToRightOf"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->ToRightOf:LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    invoke-static {}, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->$values()[LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    move-result-object v0

    sput-object v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->$VALUES:[LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/UIAnchor$HorizontalConstraintTarget;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    return-object p0
.end method

.method public static values()[LJAVARuntime/UIAnchor$HorizontalConstraintTarget;
    .locals 1

    sget-object v0, LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->$VALUES:[LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    invoke-virtual {v0}, [LJAVARuntime/UIAnchor$HorizontalConstraintTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/UIAnchor$HorizontalConstraintTarget;

    return-object v0
.end method
