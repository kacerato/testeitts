.class public final enum Lcom/ardor3d/scenegraph/hint/NormalsMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/scenegraph/hint/NormalsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/scenegraph/hint/NormalsMode;

.field public static final enum AlwaysNormalize:Lcom/ardor3d/scenegraph/hint/NormalsMode;

.field public static final enum Inherit:Lcom/ardor3d/scenegraph/hint/NormalsMode;

.field public static final enum NormalizeIfScaled:Lcom/ardor3d/scenegraph/hint/NormalsMode;

.field public static final enum Off:Lcom/ardor3d/scenegraph/hint/NormalsMode;

.field public static final enum UseProvided:Lcom/ardor3d/scenegraph/hint/NormalsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;

    const-string v1, "Inherit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/scenegraph/hint/NormalsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Inherit:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    new-instance v1, Lcom/ardor3d/scenegraph/hint/NormalsMode;

    const-string v2, "UseProvided"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/scenegraph/hint/NormalsMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/scenegraph/hint/NormalsMode;->UseProvided:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    new-instance v2, Lcom/ardor3d/scenegraph/hint/NormalsMode;

    const-string v3, "AlwaysNormalize"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/scenegraph/hint/NormalsMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/scenegraph/hint/NormalsMode;->AlwaysNormalize:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    new-instance v3, Lcom/ardor3d/scenegraph/hint/NormalsMode;

    const-string v4, "NormalizeIfScaled"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/scenegraph/hint/NormalsMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/scenegraph/hint/NormalsMode;->NormalizeIfScaled:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    new-instance v4, Lcom/ardor3d/scenegraph/hint/NormalsMode;

    const-string v5, "Off"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/scenegraph/hint/NormalsMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Off:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ardor3d/scenegraph/hint/NormalsMode;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;->$VALUES:[Lcom/ardor3d/scenegraph/hint/NormalsMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/scenegraph/hint/NormalsMode;
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/scenegraph/hint/NormalsMode;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/scenegraph/hint/NormalsMode;
    .locals 1

    sget-object v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;->$VALUES:[Lcom/ardor3d/scenegraph/hint/NormalsMode;

    invoke-virtual {v0}, [Lcom/ardor3d/scenegraph/hint/NormalsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/hint/NormalsMode;

    return-object v0
.end method
