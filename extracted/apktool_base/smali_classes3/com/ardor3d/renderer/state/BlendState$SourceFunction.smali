.class public final enum Lcom/ardor3d/renderer/state/BlendState$SourceFunction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/BlendState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/state/BlendState$SourceFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum ConstantAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum ConstantColor:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum DestinationAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum DestinationColor:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum One:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum OneMinusConstantAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum OneMinusConstantColor:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum OneMinusDestinationAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum OneMinusDestinationColor:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum SourceAlphaSaturate:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field public static final enum Zero:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;


# instance fields
.field private usesConstantColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v1, "Zero"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->Zero:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v1, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v3, "One"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->One:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v3, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v5, "DestinationColor"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->DestinationColor:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v5, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v6, "OneMinusDestinationColor"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v2}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->OneMinusDestinationColor:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v6, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v7, "SourceAlpha"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v2}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v7, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v8, "OneMinusSourceAlpha"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v2}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v8, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v9, "DestinationAlpha"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v2}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->DestinationAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v9, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v10, "OneMinusDestinationAlpha"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11, v2}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->OneMinusDestinationAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v10, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v11, "SourceAlphaSaturate"

    const/16 v12, 0x8

    invoke-direct {v10, v11, v12, v2}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlphaSaturate:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v11, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v2, "ConstantColor"

    const/16 v12, 0x9

    invoke-direct {v11, v2, v12, v4}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->ConstantColor:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v12, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v2, "OneMinusConstantColor"

    const/16 v13, 0xa

    invoke-direct {v12, v2, v13, v4}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->OneMinusConstantColor:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v13, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v2, "ConstantAlpha"

    const/16 v14, 0xb

    invoke-direct {v13, v2, v14, v4}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->ConstantAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    new-instance v14, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v2, "OneMinusConstantAlpha"

    const/16 v15, 0xc

    invoke-direct {v14, v2, v15, v4}, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->OneMinusConstantAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

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

    move-object v12, v14

    filled-new-array/range {v0 .. v12}, [Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->$VALUES:[Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

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

    iput-boolean p3, p0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->usesConstantColor:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/state/BlendState$SourceFunction;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/state/BlendState$SourceFunction;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->$VALUES:[Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    return-object v0
.end method


# virtual methods
.method public usesConstantColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->usesConstantColor:Z

    return v0
.end method
