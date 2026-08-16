.class public final enum Lcom/google/android/filament/RenderTarget$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/RenderTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/RenderTarget$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/RenderTarget$a;

.field public static final enum COLOR:Lcom/google/android/filament/RenderTarget$a;

.field public static final enum COLOR1:Lcom/google/android/filament/RenderTarget$a;

.field public static final enum COLOR2:Lcom/google/android/filament/RenderTarget$a;

.field public static final enum COLOR3:Lcom/google/android/filament/RenderTarget$a;

.field public static final enum COLOR4:Lcom/google/android/filament/RenderTarget$a;

.field public static final enum COLOR5:Lcom/google/android/filament/RenderTarget$a;

.field public static final enum COLOR6:Lcom/google/android/filament/RenderTarget$a;

.field public static final enum COLOR7:Lcom/google/android/filament/RenderTarget$a;

.field public static final enum DEPTH:Lcom/google/android/filament/RenderTarget$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/RenderTarget$a;

    const-string v1, "COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    new-instance v0, Lcom/google/android/filament/RenderTarget$a;

    const-string v1, "COLOR1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->COLOR1:Lcom/google/android/filament/RenderTarget$a;

    new-instance v0, Lcom/google/android/filament/RenderTarget$a;

    const-string v1, "COLOR2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->COLOR2:Lcom/google/android/filament/RenderTarget$a;

    new-instance v0, Lcom/google/android/filament/RenderTarget$a;

    const-string v1, "COLOR3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->COLOR3:Lcom/google/android/filament/RenderTarget$a;

    new-instance v0, Lcom/google/android/filament/RenderTarget$a;

    const-string v1, "COLOR4"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->COLOR4:Lcom/google/android/filament/RenderTarget$a;

    new-instance v0, Lcom/google/android/filament/RenderTarget$a;

    const-string v1, "COLOR5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->COLOR5:Lcom/google/android/filament/RenderTarget$a;

    new-instance v0, Lcom/google/android/filament/RenderTarget$a;

    const-string v1, "COLOR6"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->COLOR6:Lcom/google/android/filament/RenderTarget$a;

    new-instance v0, Lcom/google/android/filament/RenderTarget$a;

    const-string v1, "COLOR7"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->COLOR7:Lcom/google/android/filament/RenderTarget$a;

    new-instance v0, Lcom/google/android/filament/RenderTarget$a;

    const-string v1, "DEPTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderTarget$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->DEPTH:Lcom/google/android/filament/RenderTarget$a;

    invoke-static {}, Lcom/google/android/filament/RenderTarget$a;->a()[Lcom/google/android/filament/RenderTarget$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/RenderTarget$a;->$VALUES:[Lcom/google/android/filament/RenderTarget$a;

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

.method public static synthetic a()[Lcom/google/android/filament/RenderTarget$a;
    .locals 9

    sget-object v0, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    sget-object v1, Lcom/google/android/filament/RenderTarget$a;->COLOR1:Lcom/google/android/filament/RenderTarget$a;

    sget-object v2, Lcom/google/android/filament/RenderTarget$a;->COLOR2:Lcom/google/android/filament/RenderTarget$a;

    sget-object v3, Lcom/google/android/filament/RenderTarget$a;->COLOR3:Lcom/google/android/filament/RenderTarget$a;

    sget-object v4, Lcom/google/android/filament/RenderTarget$a;->COLOR4:Lcom/google/android/filament/RenderTarget$a;

    sget-object v5, Lcom/google/android/filament/RenderTarget$a;->COLOR5:Lcom/google/android/filament/RenderTarget$a;

    sget-object v6, Lcom/google/android/filament/RenderTarget$a;->COLOR6:Lcom/google/android/filament/RenderTarget$a;

    sget-object v7, Lcom/google/android/filament/RenderTarget$a;->COLOR7:Lcom/google/android/filament/RenderTarget$a;

    sget-object v8, Lcom/google/android/filament/RenderTarget$a;->DEPTH:Lcom/google/android/filament/RenderTarget$a;

    filled-new-array/range {v0 .. v8}, [Lcom/google/android/filament/RenderTarget$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/RenderTarget$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/RenderTarget$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/RenderTarget$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/RenderTarget$a;
    .locals 1

    sget-object v0, Lcom/google/android/filament/RenderTarget$a;->$VALUES:[Lcom/google/android/filament/RenderTarget$a;

    invoke-virtual {v0}, [Lcom/google/android/filament/RenderTarget$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/RenderTarget$a;

    return-object v0
.end method
