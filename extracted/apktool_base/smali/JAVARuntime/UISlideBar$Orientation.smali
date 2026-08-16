.class public final enum LJAVARuntime/UISlideBar$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/UISlideBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/UISlideBar$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/UISlideBar$Orientation;

.field public static final enum Horizontal:LJAVARuntime/UISlideBar$Orientation;

.field public static final enum Vertical:LJAVARuntime/UISlideBar$Orientation;


# direct methods
.method private static synthetic $values()[LJAVARuntime/UISlideBar$Orientation;
    .locals 2

    sget-object v0, LJAVARuntime/UISlideBar$Orientation;->Vertical:LJAVARuntime/UISlideBar$Orientation;

    sget-object v1, LJAVARuntime/UISlideBar$Orientation;->Horizontal:LJAVARuntime/UISlideBar$Orientation;

    filled-new-array {v0, v1}, [LJAVARuntime/UISlideBar$Orientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/UISlideBar$Orientation;

    const-string v1, "Vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/UISlideBar$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UISlideBar$Orientation;->Vertical:LJAVARuntime/UISlideBar$Orientation;

    new-instance v0, LJAVARuntime/UISlideBar$Orientation;

    const-string v1, "Horizontal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/UISlideBar$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UISlideBar$Orientation;->Horizontal:LJAVARuntime/UISlideBar$Orientation;

    invoke-static {}, LJAVARuntime/UISlideBar$Orientation;->$values()[LJAVARuntime/UISlideBar$Orientation;

    move-result-object v0

    sput-object v0, LJAVARuntime/UISlideBar$Orientation;->$VALUES:[LJAVARuntime/UISlideBar$Orientation;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/UISlideBar$Orientation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/UISlideBar$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/UISlideBar$Orientation;

    return-object p0
.end method

.method public static values()[LJAVARuntime/UISlideBar$Orientation;
    .locals 1

    sget-object v0, LJAVARuntime/UISlideBar$Orientation;->$VALUES:[LJAVARuntime/UISlideBar$Orientation;

    invoke-virtual {v0}, [LJAVARuntime/UISlideBar$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/UISlideBar$Orientation;

    return-object v0
.end method
