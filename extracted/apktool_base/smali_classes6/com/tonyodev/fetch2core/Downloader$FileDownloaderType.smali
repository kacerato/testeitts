.class public final enum Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileDownloaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

.field public static final enum PARALLEL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

.field public static final enum SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const-string v1, "SEQUENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->SEQUENTIAL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    new-instance v1, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    const-string v2, "PARALLEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->PARALLEL:Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    filled-new-array {v0, v1}, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->$VALUES:[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
    .locals 1

    const-class v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->$VALUES:[Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    invoke-virtual {v0}, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tonyodev/fetch2core/Downloader$FileDownloaderType;

    return-object v0
.end method
