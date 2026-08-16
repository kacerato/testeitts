.class public final enum Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/stat/graph/TimedAreaGrapher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

.field public static final enum Antialias:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

.field public static final enum Color:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

.field public static final enum ShowAreas:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

.field public static final enum Stipple:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

.field public static final enum Width:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    const-string v1, "Antialias"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Antialias:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    new-instance v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    const-string v2, "ShowAreas"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->ShowAreas:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    new-instance v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    const-string v3, "Width"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Width:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    new-instance v3, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    const-string v4, "Stipple"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Stipple:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    new-instance v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    const-string v5, "Color"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->Color:Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->$VALUES:[Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;
    .locals 1

    const-class v0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;
    .locals 1

    sget-object v0, Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->$VALUES:[Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    invoke-virtual {v0}, [Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/util/stat/graph/TimedAreaGrapher$ConfigKeys;

    return-object v0
.end method
