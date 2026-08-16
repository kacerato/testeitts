.class public final enum Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

.field public static final enum COLOR:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

.field public static final enum FLOAT16:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

.field public static final enum FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

.field public static final enum NORMAL_VECTOR:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

.field public static final enum SIGNED_BYTE_NORMALIZED:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

.field public static final enum UNSIGNED_BYTE:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

.field public static final enum UNSIGNED_BYTE_NORMALIZED:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;


# instance fields
.field private nativeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    const-string v1, "SIGNED_BYTE_NORMALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->SIGNED_BYTE_NORMALIZED:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    const-string v1, "NORMAL_VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->NORMAL_VECTOR:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    const-string v1, "UNSIGNED_BYTE_NORMALIZED"

    const/4 v2, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->UNSIGNED_BYTE_NORMALIZED:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v4, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->COLOR:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    const-string v1, "UNSIGNED_BYTE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->UNSIGNED_BYTE:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    const-string v1, "FLOAT16"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT16:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    const-string v1, "FLOAT32"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->a()[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->$VALUES:[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "nativeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->nativeType:I

    return-void
.end method

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
    .locals 7

    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->SIGNED_BYTE_NORMALIZED:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    sget-object v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->NORMAL_VECTOR:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    sget-object v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->UNSIGNED_BYTE_NORMALIZED:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    sget-object v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->COLOR:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    sget-object v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->UNSIGNED_BYTE:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    sget-object v5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT16:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    sget-object v6, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    filled-new-array/range {v0 .. v6}, [Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->$VALUES:[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->nativeType:I

    return v0
.end method
