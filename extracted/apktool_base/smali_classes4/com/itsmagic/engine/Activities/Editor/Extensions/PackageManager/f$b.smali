.class public final enum Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

.field public static final enum Deleted:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

.field public static final enum FailedToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

.field public static final enum NoMoreToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    const-string v1, "FailedToDelete"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->FailedToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    const-string v1, "NoMoreToDelete"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->NoMoreToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    const-string v1, "Deleted"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->Deleted:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->FailedToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->NoMoreToDelete:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->Deleted:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f$b;

    return-object v0
.end method
