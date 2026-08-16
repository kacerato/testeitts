.class public final enum Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/stat/graph/TabledLabelGrapher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

.field public static final enum Abbreviate:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

.field public static final enum Decimals:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

.field public static final enum FontScale:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

.field public static final enum FrameAverage:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

.field public static final enum Name:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

.field public static final enum TextColor:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

.field public static final enum ValueScale:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    const-string v1, "TextColor"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->TextColor:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    new-instance v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    const-string v2, "Name"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->Name:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    new-instance v2, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    const-string v3, "FrameAverage"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->FrameAverage:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    new-instance v3, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    const-string v4, "Decimals"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->Decimals:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    new-instance v4, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    const-string v5, "FontScale"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->FontScale:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    new-instance v5, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    const-string v6, "ValueScale"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->ValueScale:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    new-instance v6, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    const-string v7, "Abbreviate"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->Abbreviate:Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    filled-new-array/range {v0 .. v6}, [Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->$VALUES:[Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;
    .locals 1

    const-class v0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;
    .locals 1

    sget-object v0, Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->$VALUES:[Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    invoke-virtual {v0}, [Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/util/stat/graph/TabledLabelGrapher$ConfigKeys;

    return-object v0
.end method
