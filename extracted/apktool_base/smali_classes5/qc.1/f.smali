.class public final enum Lqc/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqc/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqc/f;

.field public static final enum POSITION:Lqc/f;

.field public static final enum SCALE:Lqc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lqc/f;

    const-string v1, "POSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqc/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqc/f;->POSITION:Lqc/f;

    new-instance v0, Lqc/f;

    const-string v1, "SCALE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lqc/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqc/f;->SCALE:Lqc/f;

    invoke-static {}, Lqc/f;->a()[Lqc/f;

    move-result-object v0

    sput-object v0, Lqc/f;->$VALUES:[Lqc/f;

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

.method public static synthetic a()[Lqc/f;
    .locals 2

    sget-object v0, Lqc/f;->POSITION:Lqc/f;

    sget-object v1, Lqc/f;->SCALE:Lqc/f;

    filled-new-array {v0, v1}, [Lqc/f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lqc/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lqc/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqc/f;

    return-object p0
.end method

.method public static values()[Lqc/f;
    .locals 1

    sget-object v0, Lqc/f;->$VALUES:[Lqc/f;

    invoke-virtual {v0}, [Lqc/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqc/f;

    return-object v0
.end method
