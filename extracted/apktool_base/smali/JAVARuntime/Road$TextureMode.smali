.class public final enum LJAVARuntime/Road$TextureMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Road;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Road$TextureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Road$TextureMode;

.field public static final enum Horizontal:LJAVARuntime/Road$TextureMode;

.field public static final enum Vertical:LJAVARuntime/Road$TextureMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Road$TextureMode;
    .locals 2

    sget-object v0, LJAVARuntime/Road$TextureMode;->Vertical:LJAVARuntime/Road$TextureMode;

    sget-object v1, LJAVARuntime/Road$TextureMode;->Horizontal:LJAVARuntime/Road$TextureMode;

    filled-new-array {v0, v1}, [LJAVARuntime/Road$TextureMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Road$TextureMode;

    const-string v1, "Vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Road$TextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Road$TextureMode;->Vertical:LJAVARuntime/Road$TextureMode;

    new-instance v0, LJAVARuntime/Road$TextureMode;

    const-string v1, "Horizontal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Road$TextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Road$TextureMode;->Horizontal:LJAVARuntime/Road$TextureMode;

    invoke-static {}, LJAVARuntime/Road$TextureMode;->$values()[LJAVARuntime/Road$TextureMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/Road$TextureMode;->$VALUES:[LJAVARuntime/Road$TextureMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Road$TextureMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Road$TextureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Road$TextureMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Road$TextureMode;
    .locals 1

    sget-object v0, LJAVARuntime/Road$TextureMode;->$VALUES:[LJAVARuntime/Road$TextureMode;

    invoke-virtual {v0}, [LJAVARuntime/Road$TextureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Road$TextureMode;

    return-object v0
.end method
