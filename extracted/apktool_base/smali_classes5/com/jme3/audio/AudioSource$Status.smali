.class public final enum Lcom/jme3/audio/AudioSource$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/audio/AudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/audio/AudioSource$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/audio/AudioSource$Status;

.field public static final enum Paused:Lcom/jme3/audio/AudioSource$Status;

.field public static final enum Playing:Lcom/jme3/audio/AudioSource$Status;

.field public static final enum Stopped:Lcom/jme3/audio/AudioSource$Status;


# direct methods
.method private static synthetic $values()[Lcom/jme3/audio/AudioSource$Status;
    .locals 3

    sget-object v0, Lcom/jme3/audio/AudioSource$Status;->Playing:Lcom/jme3/audio/AudioSource$Status;

    sget-object v1, Lcom/jme3/audio/AudioSource$Status;->Paused:Lcom/jme3/audio/AudioSource$Status;

    sget-object v2, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/audio/AudioSource$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/audio/AudioSource$Status;

    const-string v1, "Playing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioSource$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioSource$Status;->Playing:Lcom/jme3/audio/AudioSource$Status;

    new-instance v0, Lcom/jme3/audio/AudioSource$Status;

    const-string v1, "Paused"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioSource$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioSource$Status;->Paused:Lcom/jme3/audio/AudioSource$Status;

    new-instance v0, Lcom/jme3/audio/AudioSource$Status;

    const-string v1, "Stopped"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioSource$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    invoke-static {}, Lcom/jme3/audio/AudioSource$Status;->$values()[Lcom/jme3/audio/AudioSource$Status;

    move-result-object v0

    sput-object v0, Lcom/jme3/audio/AudioSource$Status;->$VALUES:[Lcom/jme3/audio/AudioSource$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/audio/AudioSource$Status;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/audio/AudioSource$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/audio/AudioSource$Status;

    return-object p0
.end method

.method public static values()[Lcom/jme3/audio/AudioSource$Status;
    .locals 1

    sget-object v0, Lcom/jme3/audio/AudioSource$Status;->$VALUES:[Lcom/jme3/audio/AudioSource$Status;

    invoke-virtual {v0}, [Lcom/jme3/audio/AudioSource$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/audio/AudioSource$Status;

    return-object v0
.end method
