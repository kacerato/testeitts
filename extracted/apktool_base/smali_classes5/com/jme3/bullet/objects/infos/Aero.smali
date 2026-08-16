.class public final enum Lcom/jme3/bullet/objects/infos/Aero;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/bullet/objects/infos/Aero;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bullet/objects/infos/Aero;

.field public static final enum F_OneSided:Lcom/jme3/bullet/objects/infos/Aero;

.field public static final enum F_TwoSided:Lcom/jme3/bullet/objects/infos/Aero;

.field public static final enum F_TwoSidedLiftDrag:Lcom/jme3/bullet/objects/infos/Aero;

.field public static final enum V_OneSided:Lcom/jme3/bullet/objects/infos/Aero;

.field public static final enum V_Point:Lcom/jme3/bullet/objects/infos/Aero;

.field public static final enum V_TwoSided:Lcom/jme3/bullet/objects/infos/Aero;

.field public static final enum V_TwoSidedLiftDrag:Lcom/jme3/bullet/objects/infos/Aero;


# direct methods
.method private static synthetic $values()[Lcom/jme3/bullet/objects/infos/Aero;
    .locals 7

    sget-object v0, Lcom/jme3/bullet/objects/infos/Aero;->V_Point:Lcom/jme3/bullet/objects/infos/Aero;

    sget-object v1, Lcom/jme3/bullet/objects/infos/Aero;->V_TwoSided:Lcom/jme3/bullet/objects/infos/Aero;

    sget-object v2, Lcom/jme3/bullet/objects/infos/Aero;->V_TwoSidedLiftDrag:Lcom/jme3/bullet/objects/infos/Aero;

    sget-object v3, Lcom/jme3/bullet/objects/infos/Aero;->V_OneSided:Lcom/jme3/bullet/objects/infos/Aero;

    sget-object v4, Lcom/jme3/bullet/objects/infos/Aero;->F_TwoSided:Lcom/jme3/bullet/objects/infos/Aero;

    sget-object v5, Lcom/jme3/bullet/objects/infos/Aero;->F_TwoSidedLiftDrag:Lcom/jme3/bullet/objects/infos/Aero;

    sget-object v6, Lcom/jme3/bullet/objects/infos/Aero;->F_OneSided:Lcom/jme3/bullet/objects/infos/Aero;

    filled-new-array/range {v0 .. v6}, [Lcom/jme3/bullet/objects/infos/Aero;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/objects/infos/Aero;

    const-string v1, "V_Point"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Aero;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Aero;->V_Point:Lcom/jme3/bullet/objects/infos/Aero;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Aero;

    const-string v1, "V_TwoSided"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Aero;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Aero;->V_TwoSided:Lcom/jme3/bullet/objects/infos/Aero;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Aero;

    const-string v1, "V_TwoSidedLiftDrag"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Aero;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Aero;->V_TwoSidedLiftDrag:Lcom/jme3/bullet/objects/infos/Aero;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Aero;

    const-string v1, "V_OneSided"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Aero;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Aero;->V_OneSided:Lcom/jme3/bullet/objects/infos/Aero;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Aero;

    const-string v1, "F_TwoSided"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Aero;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Aero;->F_TwoSided:Lcom/jme3/bullet/objects/infos/Aero;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Aero;

    const-string v1, "F_TwoSidedLiftDrag"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Aero;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Aero;->F_TwoSidedLiftDrag:Lcom/jme3/bullet/objects/infos/Aero;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Aero;

    const-string v1, "F_OneSided"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Aero;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Aero;->F_OneSided:Lcom/jme3/bullet/objects/infos/Aero;

    invoke-static {}, Lcom/jme3/bullet/objects/infos/Aero;->$values()[Lcom/jme3/bullet/objects/infos/Aero;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/Aero;->$VALUES:[Lcom/jme3/bullet/objects/infos/Aero;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bullet/objects/infos/Aero;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/bullet/objects/infos/Aero;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/objects/infos/Aero;

    return-object p0
.end method

.method public static values()[Lcom/jme3/bullet/objects/infos/Aero;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/objects/infos/Aero;->$VALUES:[Lcom/jme3/bullet/objects/infos/Aero;

    invoke-virtual {v0}, [Lcom/jme3/bullet/objects/infos/Aero;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bullet/objects/infos/Aero;

    return-object v0
.end method
