.class public final enum Lcom/ardor3d/scenegraph/hint/DataMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/scenegraph/hint/DataMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/scenegraph/hint/DataMode;

.field public static final enum Arrays:Lcom/ardor3d/scenegraph/hint/DataMode;

.field public static final enum Inherit:Lcom/ardor3d/scenegraph/hint/DataMode;

.field public static final enum VBO:Lcom/ardor3d/scenegraph/hint/DataMode;

.field public static final enum VBOInterleaved:Lcom/ardor3d/scenegraph/hint/DataMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ardor3d/scenegraph/hint/DataMode;

    const-string v1, "Inherit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/scenegraph/hint/DataMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/scenegraph/hint/DataMode;->Inherit:Lcom/ardor3d/scenegraph/hint/DataMode;

    new-instance v1, Lcom/ardor3d/scenegraph/hint/DataMode;

    const-string v2, "Arrays"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/scenegraph/hint/DataMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/scenegraph/hint/DataMode;->Arrays:Lcom/ardor3d/scenegraph/hint/DataMode;

    new-instance v2, Lcom/ardor3d/scenegraph/hint/DataMode;

    const-string v3, "VBO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/scenegraph/hint/DataMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/scenegraph/hint/DataMode;->VBO:Lcom/ardor3d/scenegraph/hint/DataMode;

    new-instance v3, Lcom/ardor3d/scenegraph/hint/DataMode;

    const-string v4, "VBOInterleaved"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/scenegraph/hint/DataMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/scenegraph/hint/DataMode;->VBOInterleaved:Lcom/ardor3d/scenegraph/hint/DataMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ardor3d/scenegraph/hint/DataMode;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/hint/DataMode;->$VALUES:[Lcom/ardor3d/scenegraph/hint/DataMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/scenegraph/hint/DataMode;
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/hint/DataMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/scenegraph/hint/DataMode;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/scenegraph/hint/DataMode;
    .locals 1

    sget-object v0, Lcom/ardor3d/scenegraph/hint/DataMode;->$VALUES:[Lcom/ardor3d/scenegraph/hint/DataMode;

    invoke-virtual {v0}, [Lcom/ardor3d/scenegraph/hint/DataMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/hint/DataMode;

    return-object v0
.end method
