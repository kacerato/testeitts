.class public final enum Lcom/jme3/profile/SpStep;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/profile/SpStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/profile/SpStep;

.field public static final enum ProcPostFrame:Lcom/jme3/profile/SpStep;

.field public static final enum ProcPostQueue:Lcom/jme3/profile/SpStep;

.field public static final enum ProcPreFrame:Lcom/jme3/profile/SpStep;


# direct methods
.method private static synthetic $values()[Lcom/jme3/profile/SpStep;
    .locals 3

    sget-object v0, Lcom/jme3/profile/SpStep;->ProcPreFrame:Lcom/jme3/profile/SpStep;

    sget-object v1, Lcom/jme3/profile/SpStep;->ProcPostQueue:Lcom/jme3/profile/SpStep;

    sget-object v2, Lcom/jme3/profile/SpStep;->ProcPostFrame:Lcom/jme3/profile/SpStep;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/profile/SpStep;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/profile/SpStep;

    const-string v1, "ProcPreFrame"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/SpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/SpStep;->ProcPreFrame:Lcom/jme3/profile/SpStep;

    new-instance v0, Lcom/jme3/profile/SpStep;

    const-string v1, "ProcPostQueue"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/SpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/SpStep;->ProcPostQueue:Lcom/jme3/profile/SpStep;

    new-instance v0, Lcom/jme3/profile/SpStep;

    const-string v1, "ProcPostFrame"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/profile/SpStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/profile/SpStep;->ProcPostFrame:Lcom/jme3/profile/SpStep;

    invoke-static {}, Lcom/jme3/profile/SpStep;->$values()[Lcom/jme3/profile/SpStep;

    move-result-object v0

    sput-object v0, Lcom/jme3/profile/SpStep;->$VALUES:[Lcom/jme3/profile/SpStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/profile/SpStep;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/profile/SpStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/profile/SpStep;

    return-object p0
.end method

.method public static values()[Lcom/jme3/profile/SpStep;
    .locals 1

    sget-object v0, Lcom/jme3/profile/SpStep;->$VALUES:[Lcom/jme3/profile/SpStep;

    invoke-virtual {v0}, [Lcom/jme3/profile/SpStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/profile/SpStep;

    return-object v0
.end method
