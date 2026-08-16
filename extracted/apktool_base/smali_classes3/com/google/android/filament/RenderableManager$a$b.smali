.class public final enum Lcom/google/android/filament/RenderableManager$a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/RenderableManager$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/RenderableManager$a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/RenderableManager$a$b;

.field public static final enum DYNAMIC:Lcom/google/android/filament/RenderableManager$a$b;

.field public static final enum STATIC:Lcom/google/android/filament/RenderableManager$a$b;

.field public static final enum STATIC_BOUNDS:Lcom/google/android/filament/RenderableManager$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/RenderableManager$a$b;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderableManager$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderableManager$a$b;->DYNAMIC:Lcom/google/android/filament/RenderableManager$a$b;

    new-instance v0, Lcom/google/android/filament/RenderableManager$a$b;

    const-string v1, "STATIC_BOUNDS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderableManager$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderableManager$a$b;->STATIC_BOUNDS:Lcom/google/android/filament/RenderableManager$a$b;

    new-instance v0, Lcom/google/android/filament/RenderableManager$a$b;

    const-string v1, "STATIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderableManager$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/RenderableManager$a$b;->STATIC:Lcom/google/android/filament/RenderableManager$a$b;

    invoke-static {}, Lcom/google/android/filament/RenderableManager$a$b;->a()[Lcom/google/android/filament/RenderableManager$a$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/RenderableManager$a$b;->$VALUES:[Lcom/google/android/filament/RenderableManager$a$b;

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

.method public static synthetic a()[Lcom/google/android/filament/RenderableManager$a$b;
    .locals 3

    sget-object v0, Lcom/google/android/filament/RenderableManager$a$b;->DYNAMIC:Lcom/google/android/filament/RenderableManager$a$b;

    sget-object v1, Lcom/google/android/filament/RenderableManager$a$b;->STATIC_BOUNDS:Lcom/google/android/filament/RenderableManager$a$b;

    sget-object v2, Lcom/google/android/filament/RenderableManager$a$b;->STATIC:Lcom/google/android/filament/RenderableManager$a$b;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/filament/RenderableManager$a$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/RenderableManager$a$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/RenderableManager$a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/RenderableManager$a$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/RenderableManager$a$b;
    .locals 1

    sget-object v0, Lcom/google/android/filament/RenderableManager$a$b;->$VALUES:[Lcom/google/android/filament/RenderableManager$a$b;

    invoke-virtual {v0}, [Lcom/google/android/filament/RenderableManager$a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/RenderableManager$a$b;

    return-object v0
.end method
