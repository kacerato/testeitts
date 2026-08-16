.class public final enum Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/MaterialState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorMaterial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

.field public static final enum Ambient:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

.field public static final enum AmbientAndDiffuse:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

.field public static final enum Diffuse:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

.field public static final enum Emissive:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

.field public static final enum None:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

.field public static final enum Specular:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->None:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    new-instance v1, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const-string v2, "Ambient"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->Ambient:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    new-instance v2, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const-string v3, "Diffuse"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->Diffuse:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    new-instance v3, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const-string v4, "AmbientAndDiffuse"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->AmbientAndDiffuse:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    new-instance v4, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const-string v5, "Specular"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->Specular:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    new-instance v5, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    const-string v6, "Emissive"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->Emissive:Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    filled-new-array/range {v0 .. v5}, [Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->$VALUES:[Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->$VALUES:[Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/MaterialState$ColorMaterial;

    return-object v0
.end method
