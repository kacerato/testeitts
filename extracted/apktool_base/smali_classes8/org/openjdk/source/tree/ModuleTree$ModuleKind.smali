.class public final enum Lorg/openjdk/source/tree/ModuleTree$ModuleKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/source/tree/ModuleTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModuleKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/source/tree/ModuleTree$ModuleKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

.field public static final enum OPEN:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

.field public static final enum STRONG:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->OPEN:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    new-instance v1, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    const-string v2, "STRONG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->STRONG:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    filled-new-array {v0, v1}, [Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->$VALUES:[Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/source/tree/ModuleTree$ModuleKind;
    .locals 1

    const-class v0, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/source/tree/ModuleTree$ModuleKind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->$VALUES:[Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    invoke-virtual {v0}, [Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    return-object v0
.end method
