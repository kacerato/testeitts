.class public final enum Lnn/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnn/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnn/n;

.field public static final enum EDGE_CLIMB_DOWN:Lnn/n;

.field public static final enum EDGE_JUMP:Lnn/n;

.field public static final enum EDGE_JUMP_OVER:Lnn/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnn/n;

    const-string v1, "EDGE_JUMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnn/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnn/n;->EDGE_JUMP:Lnn/n;

    new-instance v0, Lnn/n;

    const-string v1, "EDGE_CLIMB_DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnn/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnn/n;->EDGE_CLIMB_DOWN:Lnn/n;

    new-instance v0, Lnn/n;

    const-string v1, "EDGE_JUMP_OVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnn/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnn/n;->EDGE_JUMP_OVER:Lnn/n;

    invoke-static {}, Lnn/n;->a()[Lnn/n;

    move-result-object v0

    sput-object v0, Lnn/n;->$VALUES:[Lnn/n;

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

.method public static synthetic a()[Lnn/n;
    .locals 3

    sget-object v0, Lnn/n;->EDGE_JUMP:Lnn/n;

    sget-object v1, Lnn/n;->EDGE_CLIMB_DOWN:Lnn/n;

    sget-object v2, Lnn/n;->EDGE_JUMP_OVER:Lnn/n;

    filled-new-array {v0, v1, v2}, [Lnn/n;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnn/n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lnn/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnn/n;

    return-object p0
.end method

.method public static values()[Lnn/n;
    .locals 1

    sget-object v0, Lnn/n;->$VALUES:[Lnn/n;

    invoke-virtual {v0}, [Lnn/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnn/n;

    return-object v0
.end method
