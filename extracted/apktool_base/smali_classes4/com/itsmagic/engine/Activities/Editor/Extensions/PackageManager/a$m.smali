.class public final enum Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

.field public static final enum Canceled:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

.field public static final enum Downloaded:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

.field public static final enum Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

.field public static final enum Error:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

.field public static final enum Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

.field public static final enum WaitingNetwork:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    const-string v1, "Waiting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    const-string v1, "Downloading"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    const-string v1, "Downloaded"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloaded:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    const-string v1, "Error"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Error:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    const-string v1, "Canceled"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Canceled:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    const-string v1, "WaitingNetwork"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->WaitingNetwork:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;
    .locals 6

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Waiting:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloading:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Downloaded:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Error:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->Canceled:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->WaitingNetwork:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    filled-new-array/range {v0 .. v5}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$m;

    return-object v0
.end method
