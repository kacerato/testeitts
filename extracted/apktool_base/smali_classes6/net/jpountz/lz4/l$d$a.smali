.class public final enum Lnet/jpountz/lz4/l$d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/l$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/jpountz/lz4/l$d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/jpountz/lz4/l$d$a;

.field public static final enum BLOCK_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

.field public static final enum BLOCK_INDEPENDENCE:Lnet/jpountz/lz4/l$d$a;

.field public static final enum CONTENT_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

.field public static final enum CONTENT_SIZE:Lnet/jpountz/lz4/l$d$a;

.field public static final enum RESERVED_0:Lnet/jpountz/lz4/l$d$a;

.field public static final enum RESERVED_1:Lnet/jpountz/lz4/l$d$a;


# instance fields
.field private final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/jpountz/lz4/l$d$a;

    const-string v1, "RESERVED_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/jpountz/lz4/l$d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/jpountz/lz4/l$d$a;->RESERVED_0:Lnet/jpountz/lz4/l$d$a;

    new-instance v1, Lnet/jpountz/lz4/l$d$a;

    const-string v2, "RESERVED_1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/jpountz/lz4/l$d$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/jpountz/lz4/l$d$a;->RESERVED_1:Lnet/jpountz/lz4/l$d$a;

    new-instance v2, Lnet/jpountz/lz4/l$d$a;

    const-string v3, "CONTENT_CHECKSUM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lnet/jpountz/lz4/l$d$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/jpountz/lz4/l$d$a;->CONTENT_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

    new-instance v3, Lnet/jpountz/lz4/l$d$a;

    const-string v4, "CONTENT_SIZE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lnet/jpountz/lz4/l$d$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/jpountz/lz4/l$d$a;->CONTENT_SIZE:Lnet/jpountz/lz4/l$d$a;

    new-instance v4, Lnet/jpountz/lz4/l$d$a;

    const-string v5, "BLOCK_CHECKSUM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lnet/jpountz/lz4/l$d$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/jpountz/lz4/l$d$a;->BLOCK_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

    new-instance v5, Lnet/jpountz/lz4/l$d$a;

    const-string v6, "BLOCK_INDEPENDENCE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lnet/jpountz/lz4/l$d$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/jpountz/lz4/l$d$a;->BLOCK_INDEPENDENCE:Lnet/jpountz/lz4/l$d$a;

    filled-new-array/range {v0 .. v5}, [Lnet/jpountz/lz4/l$d$a;

    move-result-object v0

    sput-object v0, Lnet/jpountz/lz4/l$d$a;->$VALUES:[Lnet/jpountz/lz4/l$d$a;

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

    iput p3, p0, Lnet/jpountz/lz4/l$d$a;->position:I

    return-void
.end method

.method public static synthetic a(Lnet/jpountz/lz4/l$d$a;)I
    .locals 0

    iget p0, p0, Lnet/jpountz/lz4/l$d$a;->position:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/jpountz/lz4/l$d$a;
    .locals 1

    const-class v0, Lnet/jpountz/lz4/l$d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/jpountz/lz4/l$d$a;

    return-object p0
.end method

.method public static values()[Lnet/jpountz/lz4/l$d$a;
    .locals 1

    sget-object v0, Lnet/jpountz/lz4/l$d$a;->$VALUES:[Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v0}, [Lnet/jpountz/lz4/l$d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/jpountz/lz4/l$d$a;

    return-object v0
.end method
