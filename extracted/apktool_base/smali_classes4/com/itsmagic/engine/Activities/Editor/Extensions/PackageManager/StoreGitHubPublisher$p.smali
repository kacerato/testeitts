.class public final enum Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

.field public static final enum Authenticating:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

.field public static final enum CreatingRepository:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

.field public static final enum ForkingManifestRepository:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

.field public static final enum OpeningPullRequest:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

.field public static final enum UploadingManifestFiles:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

.field public static final enum UploadingProjectFiles:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    const-string v1, "Authenticating"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->Authenticating:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    const-string v1, "CreatingRepository"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->CreatingRepository:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    const-string v1, "UploadingProjectFiles"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->UploadingProjectFiles:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    const-string v1, "ForkingManifestRepository"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->ForkingManifestRepository:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    const-string v1, "UploadingManifestFiles"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->UploadingManifestFiles:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    const-string v1, "OpeningPullRequest"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->OpeningPullRequest:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

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

.method public static synthetic a()[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;
    .locals 6

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->Authenticating:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->CreatingRepository:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->UploadingProjectFiles:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->ForkingManifestRepository:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->UploadingManifestFiles:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->OpeningPullRequest:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    filled-new-array/range {v0 .. v5}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->$VALUES:[Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$p;

    return-object v0
.end method
