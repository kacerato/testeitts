.class public final enum LCg/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LCg/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LCg/d;

.field public static final enum AES_INTERNAL_ONLY:LCg/d;

.field public static final enum DEFLATE:LCg/d;

.field public static final enum STORE:LCg/d;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LCg/d;

    const-string v1, "STORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LCg/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, LCg/d;->STORE:LCg/d;

    new-instance v1, LCg/d;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const-string v4, "DEFLATE"

    invoke-direct {v1, v4, v2, v3}, LCg/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, LCg/d;->DEFLATE:LCg/d;

    new-instance v2, LCg/d;

    const/4 v3, 0x2

    const/16 v4, 0x63

    const-string v5, "AES_INTERNAL_ONLY"

    invoke-direct {v2, v5, v3, v4}, LCg/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, LCg/d;->AES_INTERNAL_ONLY:LCg/d;

    filled-new-array {v0, v1, v2}, [LCg/d;

    move-result-object v0

    sput-object v0, LCg/d;->$VALUES:[LCg/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LCg/d;->code:I

    return-void
.end method

.method public static b(I)LCg/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {}, LCg/d;->values()[LCg/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, LCg/d;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Unknown compression method"

    sget-object v1, Lnet/lingala/zip4j/exception/ZipException$a;->UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$a;

    invoke-direct {p0, v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$a;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)LCg/d;
    .locals 1

    const-class v0, LCg/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LCg/d;

    return-object p0
.end method

.method public static values()[LCg/d;
    .locals 1

    sget-object v0, LCg/d;->$VALUES:[LCg/d;

    invoke-virtual {v0}, [LCg/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCg/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LCg/d;->code:I

    return v0
.end method
