.class public final enum Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

.field public static final enum Accelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

.field public static final enum AccelerateDecelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

.field public static final enum Anticipate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

.field public static final enum AnticipateOvershoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

.field public static final enum Bounce:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

.field public static final enum Linear:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

.field public static final enum Overshoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Linear:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    const-string v1, "Bounce"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Bounce:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    const-string v1, "Accelerate"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Accelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    const-string v1, "Anticipate"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Anticipate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    const-string v1, "AccelerateDecelerate"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->AccelerateDecelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    const-string v1, "Overshoot"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Overshoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    const-string v1, "AnticipateOvershoot"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->AnticipateOvershoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->a()[Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;
    .locals 7

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Linear:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Bounce:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Accelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Anticipate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->AccelerateDecelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Overshoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->AnticipateOvershoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    filled-new-array/range {v0 .. v6}, [Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    return-object v0
.end method
