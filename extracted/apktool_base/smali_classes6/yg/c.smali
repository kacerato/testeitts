.class public final enum Lyg/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyg/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyg/c;

.field public static final enum AES_EXTRA_DATA_RECORD:Lyg/c;

.field public static final enum ARCEXTDATREC:Lyg/c;

.field public static final enum CENTRAL_DIRECTORY:Lyg/c;

.field public static final enum DIGITAL_SIGNATURE:Lyg/c;

.field public static final enum END_OF_CENTRAL_DIRECTORY:Lyg/c;

.field public static final enum EXTRA_DATA_RECORD:Lyg/c;

.field public static final enum LOCAL_FILE_HEADER:Lyg/c;

.field public static final enum SPLIT_ZIP:Lyg/c;

.field public static final enum TEMPORARY_SPANNING_MARKER:Lyg/c;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lyg/c;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lyg/c;

.field public static final enum ZIP64_EXTRA_FIELD_SIGNATURE:Lyg/c;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lyg/c;

    const/4 v1, 0x0

    const-wide/32 v2, 0x4034b50

    const-string v4, "LOCAL_FILE_HEADER"

    invoke-direct {v0, v4, v1, v2, v3}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lyg/c;->LOCAL_FILE_HEADER:Lyg/c;

    new-instance v1, Lyg/c;

    const-string v2, "EXTRA_DATA_RECORD"

    const/4 v3, 0x1

    const-wide/32 v4, 0x8074b50

    invoke-direct {v1, v2, v3, v4, v5}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lyg/c;->EXTRA_DATA_RECORD:Lyg/c;

    new-instance v2, Lyg/c;

    const/4 v3, 0x2

    const-wide/32 v6, 0x2014b50    # 1.6619997E-316

    const-string v8, "CENTRAL_DIRECTORY"

    invoke-direct {v2, v8, v3, v6, v7}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lyg/c;->CENTRAL_DIRECTORY:Lyg/c;

    new-instance v3, Lyg/c;

    const/4 v6, 0x3

    const-wide/32 v7, 0x6054b50

    const-string v9, "END_OF_CENTRAL_DIRECTORY"

    invoke-direct {v3, v9, v6, v7, v8}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lyg/c;->END_OF_CENTRAL_DIRECTORY:Lyg/c;

    new-instance v6, Lyg/c;

    const/4 v7, 0x4

    const-wide/32 v8, 0x30304b50

    const-string v10, "TEMPORARY_SPANNING_MARKER"

    invoke-direct {v6, v10, v7, v8, v9}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v6, Lyg/c;->TEMPORARY_SPANNING_MARKER:Lyg/c;

    new-instance v7, Lyg/c;

    const/4 v8, 0x5

    const-wide/32 v9, 0x5054b50

    const-string v11, "DIGITAL_SIGNATURE"

    invoke-direct {v7, v11, v8, v9, v10}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lyg/c;->DIGITAL_SIGNATURE:Lyg/c;

    new-instance v8, Lyg/c;

    const/4 v9, 0x6

    const-wide/32 v10, 0x8064b50

    const-string v12, "ARCEXTDATREC"

    invoke-direct {v8, v12, v9, v10, v11}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v8, Lyg/c;->ARCEXTDATREC:Lyg/c;

    new-instance v9, Lyg/c;

    const-string v10, "SPLIT_ZIP"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11, v4, v5}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Lyg/c;->SPLIT_ZIP:Lyg/c;

    new-instance v10, Lyg/c;

    const/16 v4, 0x8

    const-wide/32 v11, 0x7064b50

    const-string v5, "ZIP64_END_CENTRAL_DIRECTORY_LOCATOR"

    invoke-direct {v10, v5, v4, v11, v12}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lyg/c;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lyg/c;

    new-instance v11, Lyg/c;

    const/16 v4, 0x9

    const-wide/32 v12, 0x6064b50

    const-string v5, "ZIP64_END_CENTRAL_DIRECTORY_RECORD"

    invoke-direct {v11, v5, v4, v12, v13}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lyg/c;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lyg/c;

    new-instance v12, Lyg/c;

    const/16 v4, 0xa

    const-wide/16 v13, 0x1

    const-string v5, "ZIP64_EXTRA_FIELD_SIGNATURE"

    invoke-direct {v12, v5, v4, v13, v14}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v12, Lyg/c;->ZIP64_EXTRA_FIELD_SIGNATURE:Lyg/c;

    new-instance v13, Lyg/c;

    const/16 v4, 0xb

    const-wide/32 v14, 0x9901

    const-string v5, "AES_EXTRA_DATA_RECORD"

    invoke-direct {v13, v5, v4, v14, v15}, Lyg/c;-><init>(Ljava/lang/String;IJ)V

    sput-object v13, Lyg/c;->AES_EXTRA_DATA_RECORD:Lyg/c;

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    filled-new-array/range {v0 .. v11}, [Lyg/c;

    move-result-object v0

    sput-object v0, Lyg/c;->$VALUES:[Lyg/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lyg/c;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyg/c;
    .locals 1

    const-class v0, Lyg/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyg/c;

    return-object p0
.end method

.method public static values()[Lyg/c;
    .locals 1

    sget-object v0, Lyg/c;->$VALUES:[Lyg/c;

    invoke-virtual {v0}, [Lyg/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyg/c;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lyg/c;->value:J

    return-wide v0
.end method
