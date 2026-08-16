.class public final enum LNg/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LNg/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LNg/a;

.field public static final enum CANCEL:LNg/a;

.field public static final enum COMPRESSION_ERROR:LNg/a;

.field public static final enum CONNECT_ERROR:LNg/a;

.field public static final enum ENHANCE_YOUR_CALM:LNg/a;

.field public static final enum FLOW_CONTROL_ERROR:LNg/a;

.field public static final enum HTTP_1_1_REQUIRED:LNg/a;

.field public static final enum INADEQUATE_SECURITY:LNg/a;

.field public static final enum INTERNAL_ERROR:LNg/a;

.field public static final enum NO_ERROR:LNg/a;

.field public static final enum PROTOCOL_ERROR:LNg/a;

.field public static final enum REFUSED_STREAM:LNg/a;


# instance fields
.field public final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, LNg/a;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LNg/a;->NO_ERROR:LNg/a;

    new-instance v1, LNg/a;

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, LNg/a;->PROTOCOL_ERROR:LNg/a;

    new-instance v2, LNg/a;

    const-string v3, "INTERNAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v2, LNg/a;->INTERNAL_ERROR:LNg/a;

    new-instance v3, LNg/a;

    const-string v4, "FLOW_CONTROL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, LNg/a;->FLOW_CONTROL_ERROR:LNg/a;

    new-instance v4, LNg/a;

    const-string v5, "REFUSED_STREAM"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v4, v5, v6, v7}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v4, LNg/a;->REFUSED_STREAM:LNg/a;

    new-instance v5, LNg/a;

    const-string v6, "CANCEL"

    const/4 v8, 0x5

    const/16 v9, 0x8

    invoke-direct {v5, v6, v8, v9}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, LNg/a;->CANCEL:LNg/a;

    new-instance v6, LNg/a;

    const-string v8, "COMPRESSION_ERROR"

    const/4 v10, 0x6

    const/16 v11, 0x9

    invoke-direct {v6, v8, v10, v11}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v6, LNg/a;->COMPRESSION_ERROR:LNg/a;

    new-instance v8, LNg/a;

    const-string v10, "CONNECT_ERROR"

    const/16 v12, 0xa

    invoke-direct {v8, v10, v7, v12}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v8, LNg/a;->CONNECT_ERROR:LNg/a;

    new-instance v10, LNg/a;

    const-string v7, "ENHANCE_YOUR_CALM"

    const/16 v13, 0xb

    invoke-direct {v10, v7, v9, v13}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v10, LNg/a;->ENHANCE_YOUR_CALM:LNg/a;

    new-instance v9, LNg/a;

    const-string v7, "INADEQUATE_SECURITY"

    const/16 v13, 0xc

    invoke-direct {v9, v7, v11, v13}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v9, LNg/a;->INADEQUATE_SECURITY:LNg/a;

    new-instance v11, LNg/a;

    const-string v7, "HTTP_1_1_REQUIRED"

    const/16 v13, 0xd

    invoke-direct {v11, v7, v12, v13}, LNg/a;-><init>(Ljava/lang/String;II)V

    sput-object v11, LNg/a;->HTTP_1_1_REQUIRED:LNg/a;

    move-object v7, v8

    move-object v8, v10

    move-object v10, v11

    filled-new-array/range {v0 .. v10}, [LNg/a;

    move-result-object v0

    sput-object v0, LNg/a;->$VALUES:[LNg/a;

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

    iput p3, p0, LNg/a;->httpCode:I

    return-void
.end method

.method public static a(I)LNg/a;
    .locals 5

    invoke-static {}, LNg/a;->values()[LNg/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, LNg/a;->httpCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LNg/a;
    .locals 1

    const-class v0, LNg/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LNg/a;

    return-object p0
.end method

.method public static values()[LNg/a;
    .locals 1

    sget-object v0, LNg/a;->$VALUES:[LNg/a;

    invoke-virtual {v0}, [LNg/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LNg/a;

    return-object v0
.end method
