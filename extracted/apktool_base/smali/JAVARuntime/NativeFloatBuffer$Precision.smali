.class public final enum LJAVARuntime/NativeFloatBuffer$Precision;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/NativeFloatBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Precision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/NativeFloatBuffer$Precision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/NativeFloatBuffer$Precision;

.field public static final enum COLOR:LJAVARuntime/NativeFloatBuffer$Precision;

.field public static final enum FLOAT16:LJAVARuntime/NativeFloatBuffer$Precision;

.field public static final enum FLOAT32:LJAVARuntime/NativeFloatBuffer$Precision;

.field public static final enum NORMAL_VECTOR:LJAVARuntime/NativeFloatBuffer$Precision;

.field public static final enum SIGNED_BYTE_NORMALIZED:LJAVARuntime/NativeFloatBuffer$Precision;

.field public static final enum UNSIGNED_BYTE:LJAVARuntime/NativeFloatBuffer$Precision;

.field public static final enum UNSIGNED_BYTE_NORMALIZED:LJAVARuntime/NativeFloatBuffer$Precision;


# direct methods
.method private static synthetic $values()[LJAVARuntime/NativeFloatBuffer$Precision;
    .locals 7

    sget-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->SIGNED_BYTE_NORMALIZED:LJAVARuntime/NativeFloatBuffer$Precision;

    sget-object v1, LJAVARuntime/NativeFloatBuffer$Precision;->NORMAL_VECTOR:LJAVARuntime/NativeFloatBuffer$Precision;

    sget-object v2, LJAVARuntime/NativeFloatBuffer$Precision;->UNSIGNED_BYTE_NORMALIZED:LJAVARuntime/NativeFloatBuffer$Precision;

    sget-object v3, LJAVARuntime/NativeFloatBuffer$Precision;->COLOR:LJAVARuntime/NativeFloatBuffer$Precision;

    sget-object v4, LJAVARuntime/NativeFloatBuffer$Precision;->UNSIGNED_BYTE:LJAVARuntime/NativeFloatBuffer$Precision;

    sget-object v5, LJAVARuntime/NativeFloatBuffer$Precision;->FLOAT16:LJAVARuntime/NativeFloatBuffer$Precision;

    sget-object v6, LJAVARuntime/NativeFloatBuffer$Precision;->FLOAT32:LJAVARuntime/NativeFloatBuffer$Precision;

    filled-new-array/range {v0 .. v6}, [LJAVARuntime/NativeFloatBuffer$Precision;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/NativeFloatBuffer$Precision;

    const-string v1, "SIGNED_BYTE_NORMALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/NativeFloatBuffer$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->SIGNED_BYTE_NORMALIZED:LJAVARuntime/NativeFloatBuffer$Precision;

    new-instance v0, LJAVARuntime/NativeFloatBuffer$Precision;

    const-string v1, "NORMAL_VECTOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/NativeFloatBuffer$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->NORMAL_VECTOR:LJAVARuntime/NativeFloatBuffer$Precision;

    new-instance v0, LJAVARuntime/NativeFloatBuffer$Precision;

    const-string v1, "UNSIGNED_BYTE_NORMALIZED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/NativeFloatBuffer$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->UNSIGNED_BYTE_NORMALIZED:LJAVARuntime/NativeFloatBuffer$Precision;

    new-instance v0, LJAVARuntime/NativeFloatBuffer$Precision;

    const-string v1, "COLOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/NativeFloatBuffer$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->COLOR:LJAVARuntime/NativeFloatBuffer$Precision;

    new-instance v0, LJAVARuntime/NativeFloatBuffer$Precision;

    const-string v1, "UNSIGNED_BYTE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/NativeFloatBuffer$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->UNSIGNED_BYTE:LJAVARuntime/NativeFloatBuffer$Precision;

    new-instance v0, LJAVARuntime/NativeFloatBuffer$Precision;

    const-string v1, "FLOAT16"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/NativeFloatBuffer$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->FLOAT16:LJAVARuntime/NativeFloatBuffer$Precision;

    new-instance v0, LJAVARuntime/NativeFloatBuffer$Precision;

    const-string v1, "FLOAT32"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LJAVARuntime/NativeFloatBuffer$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->FLOAT32:LJAVARuntime/NativeFloatBuffer$Precision;

    invoke-static {}, LJAVARuntime/NativeFloatBuffer$Precision;->$values()[LJAVARuntime/NativeFloatBuffer$Precision;

    move-result-object v0

    sput-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->$VALUES:[LJAVARuntime/NativeFloatBuffer$Precision;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/NativeFloatBuffer$Precision;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/NativeFloatBuffer$Precision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/NativeFloatBuffer$Precision;

    return-object p0
.end method

.method public static values()[LJAVARuntime/NativeFloatBuffer$Precision;
    .locals 1

    sget-object v0, LJAVARuntime/NativeFloatBuffer$Precision;->$VALUES:[LJAVARuntime/NativeFloatBuffer$Precision;

    invoke-virtual {v0}, [LJAVARuntime/NativeFloatBuffer$Precision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/NativeFloatBuffer$Precision;

    return-object v0
.end method
