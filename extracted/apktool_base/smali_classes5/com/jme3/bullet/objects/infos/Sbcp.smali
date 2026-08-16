.class public final enum Lcom/jme3/bullet/objects/infos/Sbcp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/bullet/objects/infos/Sbcp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum AnchorHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum ClusterKineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum ClusterKineticSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum ClusterRigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum ClusterRigidSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum ClusterSoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum ClusterSoftSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum Damping:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum Drag:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum DynamicFriction:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum KineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum Lift:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum MaxVolumeRatio:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum PoseMatching:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum Pressure:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum RigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum SoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum TimeScale:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum VelocityCorrection:Lcom/jme3/bullet/objects/infos/Sbcp;

.field public static final enum VolumeConservation:Lcom/jme3/bullet/objects/infos/Sbcp;


# direct methods
.method private static synthetic $values()[Lcom/jme3/bullet/objects/infos/Sbcp;
    .locals 20

    sget-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->AnchorHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v1, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterKineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v2, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterKineticSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v3, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterRigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v4, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterRigidSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v5, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterSoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v6, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterSoftSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v7, Lcom/jme3/bullet/objects/infos/Sbcp;->Damping:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v8, Lcom/jme3/bullet/objects/infos/Sbcp;->Drag:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v9, Lcom/jme3/bullet/objects/infos/Sbcp;->DynamicFriction:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v10, Lcom/jme3/bullet/objects/infos/Sbcp;->KineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v11, Lcom/jme3/bullet/objects/infos/Sbcp;->Lift:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v12, Lcom/jme3/bullet/objects/infos/Sbcp;->MaxVolumeRatio:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v13, Lcom/jme3/bullet/objects/infos/Sbcp;->PoseMatching:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v14, Lcom/jme3/bullet/objects/infos/Sbcp;->Pressure:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v15, Lcom/jme3/bullet/objects/infos/Sbcp;->RigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v16, Lcom/jme3/bullet/objects/infos/Sbcp;->SoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v17, Lcom/jme3/bullet/objects/infos/Sbcp;->TimeScale:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v18, Lcom/jme3/bullet/objects/infos/Sbcp;->VelocityCorrection:Lcom/jme3/bullet/objects/infos/Sbcp;

    sget-object v19, Lcom/jme3/bullet/objects/infos/Sbcp;->VolumeConservation:Lcom/jme3/bullet/objects/infos/Sbcp;

    filled-new-array/range {v0 .. v19}, [Lcom/jme3/bullet/objects/infos/Sbcp;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "AnchorHardness"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->AnchorHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "ClusterKineticHardness"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterKineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "ClusterKineticSplit"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterKineticSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "ClusterRigidHardness"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterRigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "ClusterRigidSplit"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterRigidSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "ClusterSoftHardness"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterSoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "ClusterSoftSplit"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->ClusterSoftSplit:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "Damping"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->Damping:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "Drag"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->Drag:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "DynamicFriction"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->DynamicFriction:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "KineticHardness"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->KineticHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "Lift"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->Lift:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "MaxVolumeRatio"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->MaxVolumeRatio:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "PoseMatching"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->PoseMatching:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "Pressure"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->Pressure:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "RigidHardness"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->RigidHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "SoftHardness"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->SoftHardness:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "TimeScale"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->TimeScale:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "VelocityCorrection"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->VelocityCorrection:Lcom/jme3/bullet/objects/infos/Sbcp;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    const-string v1, "VolumeConservation"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Sbcp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->VolumeConservation:Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-static {}, Lcom/jme3/bullet/objects/infos/Sbcp;->$values()[Lcom/jme3/bullet/objects/infos/Sbcp;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->$VALUES:[Lcom/jme3/bullet/objects/infos/Sbcp;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bullet/objects/infos/Sbcp;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/objects/infos/Sbcp;

    return-object p0
.end method

.method public static values()[Lcom/jme3/bullet/objects/infos/Sbcp;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/objects/infos/Sbcp;->$VALUES:[Lcom/jme3/bullet/objects/infos/Sbcp;

    invoke-virtual {v0}, [Lcom/jme3/bullet/objects/infos/Sbcp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bullet/objects/infos/Sbcp;

    return-object v0
.end method


# virtual methods
.method public canSet(F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/Sbcp;->minValue()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/Sbcp;->maxValue()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public defValue()F
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_5
    const v0, 0x3f333333    # 0.7f

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public maxValue()F
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public minValue()F
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, -0x800001

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
