.class public final enum Lcom/jme3/bullet/joints/motors/MotorParam;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/bullet/joints/motors/MotorParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum Bounce:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum Damping:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum Equilibrium:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum MaxMotorForce:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum MotorCfm:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum MotorErp:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum ServoTarget:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum Stiffness:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum StopCfm:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum StopErp:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum TargetVelocity:Lcom/jme3/bullet/joints/motors/MotorParam;

.field public static final enum UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;


# direct methods
.method private static synthetic $values()[Lcom/jme3/bullet/joints/motors/MotorParam;
    .locals 13

    sget-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->Bounce:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->Damping:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v2, Lcom/jme3/bullet/joints/motors/MotorParam;->Equilibrium:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v3, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v4, Lcom/jme3/bullet/joints/motors/MotorParam;->MaxMotorForce:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v5, Lcom/jme3/bullet/joints/motors/MotorParam;->MotorCfm:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v6, Lcom/jme3/bullet/joints/motors/MotorParam;->MotorErp:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v7, Lcom/jme3/bullet/joints/motors/MotorParam;->ServoTarget:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v8, Lcom/jme3/bullet/joints/motors/MotorParam;->Stiffness:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v9, Lcom/jme3/bullet/joints/motors/MotorParam;->StopCfm:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v10, Lcom/jme3/bullet/joints/motors/MotorParam;->StopErp:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v11, Lcom/jme3/bullet/joints/motors/MotorParam;->TargetVelocity:Lcom/jme3/bullet/joints/motors/MotorParam;

    sget-object v12, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    filled-new-array/range {v0 .. v12}, [Lcom/jme3/bullet/joints/motors/MotorParam;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "Bounce"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->Bounce:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "Damping"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->Damping:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "Equilibrium"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->Equilibrium:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "LowerLimit"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "MaxMotorForce"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->MaxMotorForce:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "MotorCfm"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->MotorCfm:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "MotorErp"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->MotorErp:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "ServoTarget"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->ServoTarget:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "Stiffness"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->Stiffness:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "StopCfm"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->StopCfm:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "StopErp"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->StopErp:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "TargetVelocity"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->TargetVelocity:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    const-string v1, "UpperLimit"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/MotorParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-static {}, Lcom/jme3/bullet/joints/motors/MotorParam;->$values()[Lcom/jme3/bullet/joints/motors/MotorParam;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->$VALUES:[Lcom/jme3/bullet/joints/motors/MotorParam;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bullet/joints/motors/MotorParam;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/joints/motors/MotorParam;

    return-object p0
.end method

.method public static values()[Lcom/jme3/bullet/joints/motors/MotorParam;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/joints/motors/MotorParam;->$VALUES:[Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-virtual {v0}, [Lcom/jme3/bullet/joints/motors/MotorParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bullet/joints/motors/MotorParam;

    return-object v0
.end method


# virtual methods
.method public canSet(F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/motors/MotorParam;->minValue()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/motors/MotorParam;->maxValue()F

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

.method public defaultForRotationMotor()F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :pswitch_1
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :pswitch_2
    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x40c00000    # 6.0f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public defaultForTranslationMotor()F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :pswitch_1
    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public maxValue()F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public minValue()F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, -0x800001

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public nativeIndex()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x4

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x3

    return v0
.end method

.method public tagSuffix()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
