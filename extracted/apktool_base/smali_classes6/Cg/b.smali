.class public final enum LCg/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LCg/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LCg/b;

.field public static final enum ONE:LCg/b;

.field public static final enum TWO:LCg/b;


# instance fields
.field private versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LCg/b;

    const-string v1, "ONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LCg/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LCg/b;->ONE:LCg/b;

    new-instance v1, LCg/b;

    const-string v2, "TWO"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, LCg/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, LCg/b;->TWO:LCg/b;

    filled-new-array {v0, v1}, [LCg/b;

    move-result-object v0

    sput-object v0, LCg/b;->$VALUES:[LCg/b;

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

    iput p3, p0, LCg/b;->versionNumber:I

    return-void
.end method

.method public static a(I)LCg/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {}, LCg/b;->values()[LCg/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, LCg/b;->versionNumber:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Unsupported Aes version"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)LCg/b;
    .locals 1

    const-class v0, LCg/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LCg/b;

    return-object p0
.end method

.method public static values()[LCg/b;
    .locals 1

    sget-object v0, LCg/b;->$VALUES:[LCg/b;

    invoke-virtual {v0}, [LCg/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCg/b;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, LCg/b;->versionNumber:I

    return v0
.end method
