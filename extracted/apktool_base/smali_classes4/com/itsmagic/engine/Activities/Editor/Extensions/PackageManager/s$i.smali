.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;
.super Ls7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$s;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/StoreGitHubPublisher$s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ls7/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->e:Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$i;->g:Ljava/util/List;

    return-void
.end method
