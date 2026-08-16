.class public final enum LJAVARuntime/Texture$ExportFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExportFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Texture$ExportFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Texture$ExportFormat;

.field public static final enum JPG:LJAVARuntime/Texture$ExportFormat;

.field public static final enum PNG:LJAVARuntime/Texture$ExportFormat;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Texture$ExportFormat;
    .locals 2

    sget-object v0, LJAVARuntime/Texture$ExportFormat;->PNG:LJAVARuntime/Texture$ExportFormat;

    sget-object v1, LJAVARuntime/Texture$ExportFormat;->JPG:LJAVARuntime/Texture$ExportFormat;

    filled-new-array {v0, v1}, [LJAVARuntime/Texture$ExportFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Texture$ExportFormat;

    const-string v1, "PNG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Texture$ExportFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Texture$ExportFormat;->PNG:LJAVARuntime/Texture$ExportFormat;

    new-instance v0, LJAVARuntime/Texture$ExportFormat;

    const-string v1, "JPG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Texture$ExportFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Texture$ExportFormat;->JPG:LJAVARuntime/Texture$ExportFormat;

    invoke-static {}, LJAVARuntime/Texture$ExportFormat;->$values()[LJAVARuntime/Texture$ExportFormat;

    move-result-object v0

    sput-object v0, LJAVARuntime/Texture$ExportFormat;->$VALUES:[LJAVARuntime/Texture$ExportFormat;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Texture$ExportFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Texture$ExportFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Texture$ExportFormat;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Texture$ExportFormat;
    .locals 1

    sget-object v0, LJAVARuntime/Texture$ExportFormat;->$VALUES:[LJAVARuntime/Texture$ExportFormat;

    invoke-virtual {v0}, [LJAVARuntime/Texture$ExportFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Texture$ExportFormat;

    return-object v0
.end method
