.class public final enum Lcom/jme3/texture/Texture$WrapMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/texture/Texture$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum BorderClamp:Lcom/jme3/texture/Texture$WrapMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Clamp:Lcom/jme3/texture/Texture$WrapMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum MirrorBorderClamp:Lcom/jme3/texture/Texture$WrapMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MirrorClamp:Lcom/jme3/texture/Texture$WrapMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MirrorEdgeClamp:Lcom/jme3/texture/Texture$WrapMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum Repeat:Lcom/jme3/texture/Texture$WrapMode;


# direct methods
.method private static synthetic $values()[Lcom/jme3/texture/Texture$WrapMode;
    .locals 8

    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v2, Lcom/jme3/texture/Texture$WrapMode;->Clamp:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v3, Lcom/jme3/texture/Texture$WrapMode;->MirrorClamp:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v4, Lcom/jme3/texture/Texture$WrapMode;->BorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v5, Lcom/jme3/texture/Texture$WrapMode;->MirrorBorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v6, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v7, Lcom/jme3/texture/Texture$WrapMode;->MirrorEdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    filled-new-array/range {v0 .. v7}, [Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "Repeat"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "MirroredRepeat"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "Clamp"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->Clamp:Lcom/jme3/texture/Texture$WrapMode;

    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "MirrorClamp"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->MirrorClamp:Lcom/jme3/texture/Texture$WrapMode;

    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "BorderClamp"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->BorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "MirrorBorderClamp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->MirrorBorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "EdgeClamp"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "MirrorEdgeClamp"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->MirrorEdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-static {}, Lcom/jme3/texture/Texture$WrapMode;->$values()[Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->$VALUES:[Lcom/jme3/texture/Texture$WrapMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$WrapMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/texture/Texture$WrapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/texture/Texture$WrapMode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/texture/Texture$WrapMode;
    .locals 1

    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->$VALUES:[Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v0}, [Lcom/jme3/texture/Texture$WrapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Texture$WrapMode;

    return-object v0
.end method
