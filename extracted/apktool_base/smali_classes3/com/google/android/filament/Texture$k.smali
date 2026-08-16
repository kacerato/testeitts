.class public final enum Lcom/google/android/filament/Texture$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Texture$k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Texture$k;

.field public static final enum BYTE:Lcom/google/android/filament/Texture$k;

.field public static final enum COMPRESSED:Lcom/google/android/filament/Texture$k;

.field public static final enum FLOAT:Lcom/google/android/filament/Texture$k;

.field public static final enum HALF:Lcom/google/android/filament/Texture$k;

.field public static final enum INT:Lcom/google/android/filament/Texture$k;

.field public static final enum SHORT:Lcom/google/android/filament/Texture$k;

.field public static final enum UBYTE:Lcom/google/android/filament/Texture$k;

.field public static final enum UINT:Lcom/google/android/filament/Texture$k;

.field public static final enum UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$k;

.field public static final enum USHORT:Lcom/google/android/filament/Texture$k;

.field public static final enum USHORT_565:Lcom/google/android/filament/Texture$k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "UBYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "BYTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->BYTE:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "USHORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->USHORT:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "SHORT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->SHORT:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "UINT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->UINT:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "INT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->INT:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "HALF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->HALF:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "FLOAT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->FLOAT:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "COMPRESSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "UINT_10F_11F_11F_REV"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$k;

    const-string v1, "USHORT_565"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Texture$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Texture$k;->USHORT_565:Lcom/google/android/filament/Texture$k;

    invoke-static {}, Lcom/google/android/filament/Texture$k;->a()[Lcom/google/android/filament/Texture$k;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Texture$k;->$VALUES:[Lcom/google/android/filament/Texture$k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
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

.method public static synthetic a()[Lcom/google/android/filament/Texture$k;
    .locals 11

    sget-object v0, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    sget-object v1, Lcom/google/android/filament/Texture$k;->BYTE:Lcom/google/android/filament/Texture$k;

    sget-object v2, Lcom/google/android/filament/Texture$k;->USHORT:Lcom/google/android/filament/Texture$k;

    sget-object v3, Lcom/google/android/filament/Texture$k;->SHORT:Lcom/google/android/filament/Texture$k;

    sget-object v4, Lcom/google/android/filament/Texture$k;->UINT:Lcom/google/android/filament/Texture$k;

    sget-object v5, Lcom/google/android/filament/Texture$k;->INT:Lcom/google/android/filament/Texture$k;

    sget-object v6, Lcom/google/android/filament/Texture$k;->HALF:Lcom/google/android/filament/Texture$k;

    sget-object v7, Lcom/google/android/filament/Texture$k;->FLOAT:Lcom/google/android/filament/Texture$k;

    sget-object v8, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    sget-object v9, Lcom/google/android/filament/Texture$k;->UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$k;

    sget-object v10, Lcom/google/android/filament/Texture$k;->USHORT_565:Lcom/google/android/filament/Texture$k;

    filled-new-array/range {v0 .. v10}, [Lcom/google/android/filament/Texture$k;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Texture$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Texture$k;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Texture$k;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Texture$k;->$VALUES:[Lcom/google/android/filament/Texture$k;

    invoke-virtual {v0}, [Lcom/google/android/filament/Texture$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Texture$k;

    return-object v0
.end method
