.class public final enum LAb/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LAb/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LAb/b;

.field public static final enum Automatic:LAb/b;

.field public static final enum GridByCellCount:LAb/b;

.field public static final enum GridByCellSize:LAb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LAb/b;

    const-string v1, "Automatic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LAb/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAb/b;->Automatic:LAb/b;

    new-instance v0, LAb/b;

    const-string v1, "GridByCellSize"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LAb/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAb/b;->GridByCellSize:LAb/b;

    new-instance v0, LAb/b;

    const-string v1, "GridByCellCount"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LAb/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAb/b;->GridByCellCount:LAb/b;

    invoke-static {}, LAb/b;->a()[LAb/b;

    move-result-object v0

    sput-object v0, LAb/b;->$VALUES:[LAb/b;

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

.method public static synthetic a()[LAb/b;
    .locals 3

    sget-object v0, LAb/b;->Automatic:LAb/b;

    sget-object v1, LAb/b;->GridByCellSize:LAb/b;

    sget-object v2, LAb/b;->GridByCellCount:LAb/b;

    filled-new-array {v0, v1, v2}, [LAb/b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LAb/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LAb/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LAb/b;

    return-object p0
.end method

.method public static values()[LAb/b;
    .locals 1

    sget-object v0, LAb/b;->$VALUES:[LAb/b;

    invoke-virtual {v0}, [LAb/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAb/b;

    return-object v0
.end method
