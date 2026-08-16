.class public final enum Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/BlendState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DestinationFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum ConstantAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum ConstantColor:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum DestinationAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum One:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum OneMinusConstantAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum OneMinusConstantColor:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum OneMinusDestinationAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum OneMinusSourceColor:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum SourceColor:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field public static final enum Zero:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;


# instance fields
.field private usesConstantColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v1, "Zero"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->Zero:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v1, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v3, "One"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->One:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v3, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v5, "SourceColor"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->SourceColor:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v5, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v6, "OneMinusSourceColor"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v2}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceColor:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v6, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v7, "SourceAlpha"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v2}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v7, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v8, "OneMinusSourceAlpha"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v2}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v8, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v9, "DestinationAlpha"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v2}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->DestinationAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v9, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v10, "OneMinusDestinationAlpha"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11, v2}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusDestinationAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v10, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v2, "ConstantColor"

    const/16 v11, 0x8

    invoke-direct {v10, v2, v11, v4}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->ConstantColor:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v11, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v2, "OneMinusConstantColor"

    const/16 v12, 0x9

    invoke-direct {v11, v2, v12, v4}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusConstantColor:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v12, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v2, "ConstantAlpha"

    const/16 v13, 0xa

    invoke-direct {v12, v2, v13, v4}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->ConstantAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    new-instance v13, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v2, "OneMinusConstantAlpha"

    const/16 v14, 0xb

    invoke-direct {v13, v2, v14, v4}, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusConstantAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    filled-new-array/range {v0 .. v11}, [Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->$VALUES:[Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->usesConstantColor:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->$VALUES:[Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    return-object v0
.end method


# virtual methods
.method public usesConstantColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->usesConstantColor:Z

    return v0
.end method
