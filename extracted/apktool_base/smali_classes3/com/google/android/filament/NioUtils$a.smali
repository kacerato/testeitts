.class public final enum Lcom/google/android/filament/NioUtils$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/NioUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/NioUtils$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/NioUtils$a;

.field public static final enum BYTE:Lcom/google/android/filament/NioUtils$a;

.field public static final enum CHAR:Lcom/google/android/filament/NioUtils$a;

.field public static final enum DOUBLE:Lcom/google/android/filament/NioUtils$a;

.field public static final enum FLOAT:Lcom/google/android/filament/NioUtils$a;

.field public static final enum INT:Lcom/google/android/filament/NioUtils$a;

.field public static final enum LONG:Lcom/google/android/filament/NioUtils$a;

.field public static final enum SHORT:Lcom/google/android/filament/NioUtils$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/NioUtils$a;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/NioUtils$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$a;->BYTE:Lcom/google/android/filament/NioUtils$a;

    new-instance v0, Lcom/google/android/filament/NioUtils$a;

    const-string v1, "CHAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/NioUtils$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$a;->CHAR:Lcom/google/android/filament/NioUtils$a;

    new-instance v0, Lcom/google/android/filament/NioUtils$a;

    const-string v1, "SHORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/NioUtils$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$a;->SHORT:Lcom/google/android/filament/NioUtils$a;

    new-instance v0, Lcom/google/android/filament/NioUtils$a;

    const-string v1, "INT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/NioUtils$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$a;->INT:Lcom/google/android/filament/NioUtils$a;

    new-instance v0, Lcom/google/android/filament/NioUtils$a;

    const-string v1, "LONG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/NioUtils$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$a;->LONG:Lcom/google/android/filament/NioUtils$a;

    new-instance v0, Lcom/google/android/filament/NioUtils$a;

    const-string v1, "FLOAT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/NioUtils$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$a;->FLOAT:Lcom/google/android/filament/NioUtils$a;

    new-instance v0, Lcom/google/android/filament/NioUtils$a;

    const-string v1, "DOUBLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/NioUtils$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/NioUtils$a;->DOUBLE:Lcom/google/android/filament/NioUtils$a;

    invoke-static {}, Lcom/google/android/filament/NioUtils$a;->a()[Lcom/google/android/filament/NioUtils$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/NioUtils$a;->$VALUES:[Lcom/google/android/filament/NioUtils$a;

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

.method public static synthetic a()[Lcom/google/android/filament/NioUtils$a;
    .locals 7

    sget-object v0, Lcom/google/android/filament/NioUtils$a;->BYTE:Lcom/google/android/filament/NioUtils$a;

    sget-object v1, Lcom/google/android/filament/NioUtils$a;->CHAR:Lcom/google/android/filament/NioUtils$a;

    sget-object v2, Lcom/google/android/filament/NioUtils$a;->SHORT:Lcom/google/android/filament/NioUtils$a;

    sget-object v3, Lcom/google/android/filament/NioUtils$a;->INT:Lcom/google/android/filament/NioUtils$a;

    sget-object v4, Lcom/google/android/filament/NioUtils$a;->LONG:Lcom/google/android/filament/NioUtils$a;

    sget-object v5, Lcom/google/android/filament/NioUtils$a;->FLOAT:Lcom/google/android/filament/NioUtils$a;

    sget-object v6, Lcom/google/android/filament/NioUtils$a;->DOUBLE:Lcom/google/android/filament/NioUtils$a;

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/filament/NioUtils$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/NioUtils$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/NioUtils$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/NioUtils$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/NioUtils$a;
    .locals 1

    sget-object v0, Lcom/google/android/filament/NioUtils$a;->$VALUES:[Lcom/google/android/filament/NioUtils$a;

    invoke-virtual {v0}, [Lcom/google/android/filament/NioUtils$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/NioUtils$a;

    return-object v0
.end method
