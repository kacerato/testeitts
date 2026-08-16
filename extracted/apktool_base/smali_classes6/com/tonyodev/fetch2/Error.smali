.class public final enum Lcom/tonyodev/fetch2/Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/Error$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tonyodev/fetch2/Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lcom/tonyodev/fetch2/Error;

.field public static final enum COMPLETED_NOT_ADDED_SUCCESSFULLY:Lcom/tonyodev/fetch2/Error;

.field public static final enum CONNECTION_TIMED_OUT:Lcom/tonyodev/fetch2/Error;

.field public static final Companion:Lcom/tonyodev/fetch2/Error$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DOWNLOAD_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

.field public static final enum EMPTY_RESPONSE_FROM_SERVER:Lcom/tonyodev/fetch2/Error;

.field public static final enum ENQUEUED_REQUESTS_ARE_NOT_DISTINCT:Lcom/tonyodev/fetch2/Error;

.field public static final enum ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

.field public static final enum FAILED_TO_ADD_COMPLETED_DOWNLOAD:Lcom/tonyodev/fetch2/Error;

.field public static final enum FAILED_TO_RENAME_FILE:Lcom/tonyodev/fetch2/Error;

.field public static final enum FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE:Lcom/tonyodev/fetch2/Error;

.field public static final enum FAILED_TO_UPDATE_REQUEST:Lcom/tonyodev/fetch2/Error;

.field public static final enum FETCH_DATABASE_ERROR:Lcom/tonyodev/fetch2/Error;

.field public static final enum FETCH_FILE_SERVER_INVALID_RESPONSE:Lcom/tonyodev/fetch2/Error;

.field public static final enum FETCH_FILE_SERVER_URL_INVALID:Lcom/tonyodev/fetch2/Error;

.field public static final enum FILE_ALLOCATION_FAILED:Lcom/tonyodev/fetch2/Error;

.field public static final enum FILE_NOT_CREATED:Lcom/tonyodev/fetch2/Error;

.field public static final enum FILE_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

.field public static final enum HTTP_CONNECTION_NOT_ALLOWED:Lcom/tonyodev/fetch2/Error;

.field public static final enum HTTP_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

.field public static final enum INVALID_CONTENT_HASH:Lcom/tonyodev/fetch2/Error;

.field public static final enum NONE:Lcom/tonyodev/fetch2/Error;

.field public static final enum NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

.field public static final enum NO_STORAGE_SPACE:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_WITH_FILE_PATH_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

.field public static final enum REQUEST_WITH_ID_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

.field public static final enum UNKNOWN:Lcom/tonyodev/fetch2/Error;

.field public static final enum UNKNOWN_HOST:Lcom/tonyodev/fetch2/Error;

.field public static final enum UNKNOWN_IO_ERROR:Lcom/tonyodev/fetch2/Error;

.field public static final enum WRITE_PERMISSION_DENIED:Lcom/tonyodev/fetch2/Error;


# instance fields
.field private httpResponse:Lcom/tonyodev/fetch2core/Downloader$Response;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private throwable:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/tonyodev/fetch2/Error;
    .locals 31

    sget-object v0, Lcom/tonyodev/fetch2/Error;->UNKNOWN:Lcom/tonyodev/fetch2/Error;

    sget-object v1, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    sget-object v2, Lcom/tonyodev/fetch2/Error;->FILE_NOT_CREATED:Lcom/tonyodev/fetch2/Error;

    sget-object v3, Lcom/tonyodev/fetch2/Error;->CONNECTION_TIMED_OUT:Lcom/tonyodev/fetch2/Error;

    sget-object v4, Lcom/tonyodev/fetch2/Error;->UNKNOWN_HOST:Lcom/tonyodev/fetch2/Error;

    sget-object v5, Lcom/tonyodev/fetch2/Error;->HTTP_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    sget-object v6, Lcom/tonyodev/fetch2/Error;->WRITE_PERMISSION_DENIED:Lcom/tonyodev/fetch2/Error;

    sget-object v7, Lcom/tonyodev/fetch2/Error;->NO_STORAGE_SPACE:Lcom/tonyodev/fetch2/Error;

    sget-object v8, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    sget-object v9, Lcom/tonyodev/fetch2/Error;->EMPTY_RESPONSE_FROM_SERVER:Lcom/tonyodev/fetch2/Error;

    sget-object v10, Lcom/tonyodev/fetch2/Error;->REQUEST_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    sget-object v11, Lcom/tonyodev/fetch2/Error;->DOWNLOAD_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    sget-object v12, Lcom/tonyodev/fetch2/Error;->FETCH_DATABASE_ERROR:Lcom/tonyodev/fetch2/Error;

    sget-object v13, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_ID_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    sget-object v14, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_FILE_PATH_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    sget-object v15, Lcom/tonyodev/fetch2/Error;->REQUEST_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    sget-object v16, Lcom/tonyodev/fetch2/Error;->UNKNOWN_IO_ERROR:Lcom/tonyodev/fetch2/Error;

    sget-object v17, Lcom/tonyodev/fetch2/Error;->FILE_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    sget-object v18, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_URL_INVALID:Lcom/tonyodev/fetch2/Error;

    sget-object v19, Lcom/tonyodev/fetch2/Error;->INVALID_CONTENT_HASH:Lcom/tonyodev/fetch2/Error;

    sget-object v20, Lcom/tonyodev/fetch2/Error;->FAILED_TO_UPDATE_REQUEST:Lcom/tonyodev/fetch2/Error;

    sget-object v21, Lcom/tonyodev/fetch2/Error;->FAILED_TO_ADD_COMPLETED_DOWNLOAD:Lcom/tonyodev/fetch2/Error;

    sget-object v22, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_INVALID_RESPONSE:Lcom/tonyodev/fetch2/Error;

    sget-object v23, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    sget-object v24, Lcom/tonyodev/fetch2/Error;->ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    sget-object v25, Lcom/tonyodev/fetch2/Error;->COMPLETED_NOT_ADDED_SUCCESSFULLY:Lcom/tonyodev/fetch2/Error;

    sget-object v26, Lcom/tonyodev/fetch2/Error;->ENQUEUED_REQUESTS_ARE_NOT_DISTINCT:Lcom/tonyodev/fetch2/Error;

    sget-object v27, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE:Lcom/tonyodev/fetch2/Error;

    sget-object v28, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_FILE:Lcom/tonyodev/fetch2/Error;

    sget-object v29, Lcom/tonyodev/fetch2/Error;->FILE_ALLOCATION_FAILED:Lcom/tonyodev/fetch2/Error;

    sget-object v30, Lcom/tonyodev/fetch2/Error;->HTTP_CONNECTION_NOT_ALLOWED:Lcom/tonyodev/fetch2/Error;

    filled-new-array/range {v0 .. v30}, [Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Lcom/tonyodev/fetch2/Error;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v8, Lcom/tonyodev/fetch2/Error;->UNKNOWN:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v10, "NONE"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->NONE:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v2, "FILE_NOT_CREATED"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FILE_NOT_CREATED:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "CONNECTION_TIMED_OUT"

    const/4 v11, 0x3

    const/4 v12, 0x2

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->CONNECTION_TIMED_OUT:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "UNKNOWN_HOST"

    const/4 v3, 0x4

    const/4 v4, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->UNKNOWN_HOST:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "HTTP_NOT_FOUND"

    const/4 v11, 0x5

    const/4 v12, 0x4

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->HTTP_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "WRITE_PERMISSION_DENIED"

    const/4 v3, 0x6

    const/4 v4, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->WRITE_PERMISSION_DENIED:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "NO_STORAGE_SPACE"

    const/4 v11, 0x7

    const/4 v12, 0x6

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->NO_STORAGE_SPACE:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "NO_NETWORK_CONNECTION"

    const/16 v3, 0x8

    const/4 v4, 0x7

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "EMPTY_RESPONSE_FROM_SERVER"

    const/16 v11, 0x9

    const/16 v12, 0x8

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->EMPTY_RESPONSE_FROM_SERVER:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "REQUEST_ALREADY_EXIST"

    const/16 v3, 0xa

    const/16 v4, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->REQUEST_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "DOWNLOAD_NOT_FOUND"

    const/16 v11, 0xb

    const/16 v12, 0xa

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->DOWNLOAD_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "FETCH_DATABASE_ERROR"

    const/16 v3, 0xc

    const/16 v4, 0xb

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FETCH_DATABASE_ERROR:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "REQUEST_WITH_ID_ALREADY_EXIST"

    const/16 v11, 0xd

    const/16 v12, 0xd

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_ID_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "REQUEST_WITH_FILE_PATH_ALREADY_EXIST"

    const/16 v3, 0xe

    const/16 v4, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_FILE_PATH_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "REQUEST_NOT_SUCCESSFUL"

    const/16 v11, 0xf

    const/16 v12, 0xf

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->REQUEST_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "UNKNOWN_IO_ERROR"

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->UNKNOWN_IO_ERROR:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "FILE_NOT_FOUND"

    const/16 v11, 0x11

    const/16 v12, 0x11

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FILE_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "FETCH_FILE_SERVER_URL_INVALID"

    const/16 v3, 0x12

    const/16 v4, 0x13

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_URL_INVALID:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "INVALID_CONTENT_HASH"

    const/16 v11, 0x13

    const/16 v12, 0x14

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->INVALID_CONTENT_HASH:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "FAILED_TO_UPDATE_REQUEST"

    const/16 v3, 0x14

    const/16 v4, 0x15

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FAILED_TO_UPDATE_REQUEST:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "FAILED_TO_ADD_COMPLETED_DOWNLOAD"

    const/16 v11, 0x15

    const/16 v12, 0x16

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FAILED_TO_ADD_COMPLETED_DOWNLOAD:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "FETCH_FILE_SERVER_INVALID_RESPONSE"

    const/16 v3, 0x16

    const/16 v4, 0x17

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_INVALID_RESPONSE:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "REQUEST_DOES_NOT_EXIST"

    const/16 v11, 0x17

    const/16 v12, 0x18

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "ENQUEUE_NOT_SUCCESSFUL"

    const/16 v3, 0x18

    const/16 v4, 0x19

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "COMPLETED_NOT_ADDED_SUCCESSFULLY"

    const/16 v11, 0x19

    const/16 v12, 0x1a

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->COMPLETED_NOT_ADDED_SUCCESSFULLY:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "ENQUEUED_REQUESTS_ARE_NOT_DISTINCT"

    const/16 v3, 0x1a

    const/16 v4, 0x1b

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->ENQUEUED_REQUESTS_ARE_NOT_DISTINCT:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE"

    const/16 v11, 0x1b

    const/16 v12, 0x1c

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "FAILED_TO_RENAME_FILE"

    const/16 v3, 0x1c

    const/16 v4, 0x1d

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_FILE:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v10, "FILE_ALLOCATION_FAILED"

    const/16 v11, 0x1d

    const/16 v12, 0x1e

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->FILE_ALLOCATION_FAILED:Lcom/tonyodev/fetch2/Error;

    new-instance v0, Lcom/tonyodev/fetch2/Error;

    const-string v2, "HTTP_CONNECTION_NOT_ALLOWED"

    const/16 v3, 0x1e

    const/16 v4, 0x1f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->HTTP_CONNECTION_NOT_ALLOWED:Lcom/tonyodev/fetch2/Error;

    invoke-static {}, Lcom/tonyodev/fetch2/Error;->$values()[Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/Error;->$VALUES:[Lcom/tonyodev/fetch2/Error;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lcom/tonyodev/fetch2/Error;->$ENTRIES:LCf/a;

    new-instance v0, Lcom/tonyodev/fetch2/Error$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/Error$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/tonyodev/fetch2/Error;->Companion:Lcom/tonyodev/fetch2/Error$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Throwable;",
            "Lcom/tonyodev/fetch2core/Downloader$Response;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tonyodev/fetch2/Error;->value:I

    .line 3
    iput-object p4, p0, Lcom/tonyodev/fetch2/Error;->throwable:Ljava/lang/Throwable;

    .line 4
    iput-object p5, p0, Lcom/tonyodev/fetch2/Error;->httpResponse:Lcom/tonyodev/fetch2core/Downloader$Response;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;ILkotlin/jvm/internal/x;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x4

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/tonyodev/fetch2/Error;-><init>(Ljava/lang/String;IILjava/lang/Throwable;Lcom/tonyodev/fetch2core/Downloader$Response;)V

    return-void
.end method

.method public static getEntries()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lcom/tonyodev/fetch2/Error;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/tonyodev/fetch2/Error;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static final valueOf(I)Lcom/tonyodev/fetch2/Error;
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/tonyodev/fetch2/Error;->Companion:Lcom/tonyodev/fetch2/Error$Companion;

    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/Error$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Error;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;
    .locals 1

    .line 2
    const-class v0, Lcom/tonyodev/fetch2/Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tonyodev/fetch2/Error;

    return-object p0
.end method

.method public static values()[Lcom/tonyodev/fetch2/Error;
    .locals 1

    sget-object v0, Lcom/tonyodev/fetch2/Error;->$VALUES:[Lcom/tonyodev/fetch2/Error;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tonyodev/fetch2/Error;

    return-object v0
.end method


# virtual methods
.method public final getHttpResponse()Lcom/tonyodev/fetch2core/Downloader$Response;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/Error;->httpResponse:Lcom/tonyodev/fetch2core/Downloader$Response;

    return-object v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tonyodev/fetch2/Error;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/tonyodev/fetch2/Error;->value:I

    return v0
.end method

.method public final setHttpResponse(Lcom/tonyodev/fetch2core/Downloader$Response;)V
    .locals 0
    .param p1    # Lcom/tonyodev/fetch2core/Downloader$Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tonyodev/fetch2/Error;->httpResponse:Lcom/tonyodev/fetch2core/Downloader$Response;

    return-void
.end method

.method public final setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tonyodev/fetch2/Error;->throwable:Ljava/lang/Throwable;

    return-void
.end method
