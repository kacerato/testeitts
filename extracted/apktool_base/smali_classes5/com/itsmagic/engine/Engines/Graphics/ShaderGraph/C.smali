.class public final enum Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum BRANCH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum MAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public static final enum TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "NUMBER01"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "COLOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "FLOAT2"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "FLOAT3"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "FLOAT4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "MAT3"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "MAT4"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "TEXTURE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "CUBEMAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "BRANCH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->BRANCH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, "DYNAMIC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->a()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->$VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 12

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v6, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v7, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v10, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->BRANCH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v11, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    filled-new-array/range {v0 .. v11}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->$VALUES:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-object v0
.end method
