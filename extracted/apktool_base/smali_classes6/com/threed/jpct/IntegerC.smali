.class Lcom/threed/jpct/IntegerC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE:[Ljava/lang/Integer;

.field private static final offset:I = 0x7d0


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xfa0

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lcom/threed/jpct/IntegerC;->CACHE:[Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/threed/jpct/IntegerC;->CACHE:[Ljava/lang/Integer;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    add-int/lit16 v2, v0, -0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .locals 1

    const/16 v0, -0x7d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/threed/jpct/IntegerC;->CACHE:[Ljava/lang/Integer;

    add-int/lit16 p0, p0, 0x7d0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
