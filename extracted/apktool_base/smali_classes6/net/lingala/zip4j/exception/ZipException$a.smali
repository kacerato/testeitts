.class public final enum Lnet/lingala/zip4j/exception/ZipException$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/exception/ZipException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/exception/ZipException$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/exception/ZipException$a;

.field public static final enum CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$a;

.field public static final enum FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$a;

.field public static final enum TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$a;

.field public static final enum UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$a;

.field public static final enum UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$a;

.field public static final enum UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$a;

.field public static final enum WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnet/lingala/zip4j/exception/ZipException$a;

    const-string v1, "WRONG_PASSWORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$a;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$a;

    new-instance v1, Lnet/lingala/zip4j/exception/ZipException$a;

    const-string v2, "TASK_CANCELLED_EXCEPTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/lingala/zip4j/exception/ZipException$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/lingala/zip4j/exception/ZipException$a;->TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$a;

    new-instance v2, Lnet/lingala/zip4j/exception/ZipException$a;

    const-string v3, "CHECKSUM_MISMATCH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/lingala/zip4j/exception/ZipException$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/lingala/zip4j/exception/ZipException$a;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$a;

    new-instance v3, Lnet/lingala/zip4j/exception/ZipException$a;

    const-string v4, "UNKNOWN_COMPRESSION_METHOD"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/exception/ZipException$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/lingala/zip4j/exception/ZipException$a;->UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$a;

    new-instance v4, Lnet/lingala/zip4j/exception/ZipException$a;

    const-string v5, "FILE_NOT_FOUND"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/lingala/zip4j/exception/ZipException$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/lingala/zip4j/exception/ZipException$a;->FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$a;

    new-instance v5, Lnet/lingala/zip4j/exception/ZipException$a;

    const-string v6, "UNSUPPORTED_ENCRYPTION"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/lingala/zip4j/exception/ZipException$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/lingala/zip4j/exception/ZipException$a;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$a;

    new-instance v6, Lnet/lingala/zip4j/exception/ZipException$a;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lnet/lingala/zip4j/exception/ZipException$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/lingala/zip4j/exception/ZipException$a;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$a;

    filled-new-array/range {v0 .. v6}, [Lnet/lingala/zip4j/exception/ZipException$a;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$a;->$VALUES:[Lnet/lingala/zip4j/exception/ZipException$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/exception/ZipException$a;
    .locals 1

    const-class v0, Lnet/lingala/zip4j/exception/ZipException$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/exception/ZipException$a;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/exception/ZipException$a;
    .locals 1

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$a;->$VALUES:[Lnet/lingala/zip4j/exception/ZipException$a;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/exception/ZipException$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/exception/ZipException$a;

    return-object v0
.end method
