.class public final enum LDc/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDc/d$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDc/d$b;

.field public static final enum BindPoseNormal:LDc/d$b;

.field public static final enum BindPosePosition:LDc/d$b;

.field public static final enum BindPoseTangent:LDc/d$b;

.field public static final enum Binormal:LDc/d$b;

.field public static final enum BoneIndex:LDc/d$b;

.field public static final enum BoneWeight:LDc/d$b;

.field public static final enum Color:LDc/d$b;

.field public static final enum HWBoneIndex:LDc/d$b;

.field public static final enum HWBoneWeight:LDc/d$b;

.field public static final enum Index:LDc/d$b;

.field public static final enum InstanceData:LDc/d$b;

.field public static final enum InterleavedData:LDc/d$b;

.field public static final enum MorphTarget0:LDc/d$b;

.field public static final enum MorphTarget1:LDc/d$b;

.field public static final enum MorphTarget10:LDc/d$b;

.field public static final enum MorphTarget11:LDc/d$b;

.field public static final enum MorphTarget12:LDc/d$b;

.field public static final enum MorphTarget13:LDc/d$b;

.field public static final enum MorphTarget2:LDc/d$b;

.field public static final enum MorphTarget3:LDc/d$b;

.field public static final enum MorphTarget4:LDc/d$b;

.field public static final enum MorphTarget5:LDc/d$b;

.field public static final enum MorphTarget6:LDc/d$b;

.field public static final enum MorphTarget7:LDc/d$b;

.field public static final enum MorphTarget8:LDc/d$b;

.field public static final enum MorphTarget9:LDc/d$b;

.field public static final enum Normal:LDc/d$b;

.field public static final enum Position:LDc/d$b;

.field public static final enum Reserved0:LDc/d$b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Size:LDc/d$b;

.field public static final enum Tangent:LDc/d$b;

.field public static final enum TexCoord:LDc/d$b;

.field public static final enum TexCoord2:LDc/d$b;

.field public static final enum TexCoord3:LDc/d$b;

.field public static final enum TexCoord4:LDc/d$b;

.field public static final enum TexCoord5:LDc/d$b;

.field public static final enum TexCoord6:LDc/d$b;

.field public static final enum TexCoord7:LDc/d$b;

.field public static final enum TexCoord8:LDc/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LDc/d$b;

    const-string v1, "Position"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->Position:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "Size"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->Size:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "Normal"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->Normal:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "TexCoord"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->TexCoord:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "Color"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->Color:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "Tangent"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->Tangent:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "Binormal"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->Binormal:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "InterleavedData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->InterleavedData:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "Reserved0"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->Reserved0:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "Index"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->Index:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "BindPosePosition"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->BindPosePosition:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "BindPoseNormal"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->BindPoseNormal:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "BoneWeight"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->BoneWeight:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "BoneIndex"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->BoneIndex:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "TexCoord2"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->TexCoord2:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "TexCoord3"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->TexCoord3:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "TexCoord4"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->TexCoord4:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "TexCoord5"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->TexCoord5:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "TexCoord6"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->TexCoord6:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "TexCoord7"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->TexCoord7:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "TexCoord8"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->TexCoord8:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "BindPoseTangent"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->BindPoseTangent:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "HWBoneWeight"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->HWBoneWeight:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "HWBoneIndex"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->HWBoneIndex:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "InstanceData"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->InstanceData:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget0"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget0:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget1"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget1:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget2"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget2:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget3"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget3:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget4"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget4:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget5"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget5:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget6"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget6:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget7"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget7:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget8"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget8:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget9"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget9:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget10"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget10:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget11"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget11:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget12"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget12:LDc/d$b;

    new-instance v0, LDc/d$b;

    const-string v1, "MorphTarget13"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, LDc/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDc/d$b;->MorphTarget13:LDc/d$b;

    invoke-static {}, LDc/d$b;->a()[LDc/d$b;

    move-result-object v0

    sput-object v0, LDc/d$b;->$VALUES:[LDc/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static synthetic a()[LDc/d$b;
    .locals 39

    sget-object v0, LDc/d$b;->Position:LDc/d$b;

    sget-object v1, LDc/d$b;->Size:LDc/d$b;

    sget-object v2, LDc/d$b;->Normal:LDc/d$b;

    sget-object v3, LDc/d$b;->TexCoord:LDc/d$b;

    sget-object v4, LDc/d$b;->Color:LDc/d$b;

    sget-object v5, LDc/d$b;->Tangent:LDc/d$b;

    sget-object v6, LDc/d$b;->Binormal:LDc/d$b;

    sget-object v7, LDc/d$b;->InterleavedData:LDc/d$b;

    sget-object v8, LDc/d$b;->Reserved0:LDc/d$b;

    sget-object v9, LDc/d$b;->Index:LDc/d$b;

    sget-object v10, LDc/d$b;->BindPosePosition:LDc/d$b;

    sget-object v11, LDc/d$b;->BindPoseNormal:LDc/d$b;

    sget-object v12, LDc/d$b;->BoneWeight:LDc/d$b;

    sget-object v13, LDc/d$b;->BoneIndex:LDc/d$b;

    sget-object v14, LDc/d$b;->TexCoord2:LDc/d$b;

    sget-object v15, LDc/d$b;->TexCoord3:LDc/d$b;

    sget-object v16, LDc/d$b;->TexCoord4:LDc/d$b;

    sget-object v17, LDc/d$b;->TexCoord5:LDc/d$b;

    sget-object v18, LDc/d$b;->TexCoord6:LDc/d$b;

    sget-object v19, LDc/d$b;->TexCoord7:LDc/d$b;

    sget-object v20, LDc/d$b;->TexCoord8:LDc/d$b;

    sget-object v21, LDc/d$b;->BindPoseTangent:LDc/d$b;

    sget-object v22, LDc/d$b;->HWBoneWeight:LDc/d$b;

    sget-object v23, LDc/d$b;->HWBoneIndex:LDc/d$b;

    sget-object v24, LDc/d$b;->InstanceData:LDc/d$b;

    sget-object v25, LDc/d$b;->MorphTarget0:LDc/d$b;

    sget-object v26, LDc/d$b;->MorphTarget1:LDc/d$b;

    sget-object v27, LDc/d$b;->MorphTarget2:LDc/d$b;

    sget-object v28, LDc/d$b;->MorphTarget3:LDc/d$b;

    sget-object v29, LDc/d$b;->MorphTarget4:LDc/d$b;

    sget-object v30, LDc/d$b;->MorphTarget5:LDc/d$b;

    sget-object v31, LDc/d$b;->MorphTarget6:LDc/d$b;

    sget-object v32, LDc/d$b;->MorphTarget7:LDc/d$b;

    sget-object v33, LDc/d$b;->MorphTarget8:LDc/d$b;

    sget-object v34, LDc/d$b;->MorphTarget9:LDc/d$b;

    sget-object v35, LDc/d$b;->MorphTarget10:LDc/d$b;

    sget-object v36, LDc/d$b;->MorphTarget11:LDc/d$b;

    sget-object v37, LDc/d$b;->MorphTarget12:LDc/d$b;

    sget-object v38, LDc/d$b;->MorphTarget13:LDc/d$b;

    filled-new-array/range {v0 .. v38}, [LDc/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LDc/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LDc/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDc/d$b;

    return-object p0
.end method

.method public static values()[LDc/d$b;
    .locals 1

    sget-object v0, LDc/d$b;->$VALUES:[LDc/d$b;

    invoke-virtual {v0}, [LDc/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDc/d$b;

    return-object v0
.end method
