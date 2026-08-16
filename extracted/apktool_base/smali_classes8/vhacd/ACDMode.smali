.class public final enum Lvhacd/ACDMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvhacd/ACDMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvhacd/ACDMode;

.field public static final enum TETRAHEDRON:Lvhacd/ACDMode;

.field public static final enum VOXEL:Lvhacd/ACDMode;


# direct methods
.method private static synthetic $values()[Lvhacd/ACDMode;
    .locals 2

    sget-object v0, Lvhacd/ACDMode;->VOXEL:Lvhacd/ACDMode;

    sget-object v1, Lvhacd/ACDMode;->TETRAHEDRON:Lvhacd/ACDMode;

    filled-new-array {v0, v1}, [Lvhacd/ACDMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lvhacd/ACDMode;

    const-string v1, "VOXEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvhacd/ACDMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvhacd/ACDMode;->VOXEL:Lvhacd/ACDMode;

    new-instance v0, Lvhacd/ACDMode;

    const-string v1, "TETRAHEDRON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lvhacd/ACDMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvhacd/ACDMode;->TETRAHEDRON:Lvhacd/ACDMode;

    invoke-static {}, Lvhacd/ACDMode;->$values()[Lvhacd/ACDMode;

    move-result-object v0

    sput-object v0, Lvhacd/ACDMode;->$VALUES:[Lvhacd/ACDMode;

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
            null,
            null
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

.method public static valueOf(Ljava/lang/String;)Lvhacd/ACDMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lvhacd/ACDMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvhacd/ACDMode;

    return-object p0
.end method

.method public static values()[Lvhacd/ACDMode;
    .locals 1

    sget-object v0, Lvhacd/ACDMode;->$VALUES:[Lvhacd/ACDMode;

    invoke-virtual {v0}, [Lvhacd/ACDMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvhacd/ACDMode;

    return-object v0
.end method
