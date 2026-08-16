.class public final enum LCg/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LCg/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LCg/c;

.field public static final enum FAST:LCg/c;

.field public static final enum FASTER:LCg/c;

.field public static final enum FASTEST:LCg/c;

.field public static final enum HIGHER:LCg/c;

.field public static final enum MAXIMUM:LCg/c;

.field public static final enum MEDIUM_FAST:LCg/c;

.field public static final enum NORMAL:LCg/c;

.field public static final enum NO_COMPRESSION:LCg/c;

.field public static final enum PRE_ULTRA:LCg/c;

.field public static final enum ULTRA:LCg/c;


# instance fields
.field private final level:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, LCg/c;

    const-string v1, "NO_COMPRESSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LCg/c;->NO_COMPRESSION:LCg/c;

    new-instance v1, LCg/c;

    const-string v2, "FASTEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, LCg/c;->FASTEST:LCg/c;

    new-instance v2, LCg/c;

    const-string v3, "FASTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v2, LCg/c;->FASTER:LCg/c;

    new-instance v3, LCg/c;

    const-string v4, "FAST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, LCg/c;->FAST:LCg/c;

    new-instance v4, LCg/c;

    const-string v5, "MEDIUM_FAST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v4, LCg/c;->MEDIUM_FAST:LCg/c;

    new-instance v5, LCg/c;

    const-string v6, "NORMAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, LCg/c;->NORMAL:LCg/c;

    new-instance v6, LCg/c;

    const-string v7, "HIGHER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v6, LCg/c;->HIGHER:LCg/c;

    new-instance v7, LCg/c;

    const-string v8, "MAXIMUM"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v7, LCg/c;->MAXIMUM:LCg/c;

    new-instance v8, LCg/c;

    const-string v9, "PRE_ULTRA"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v8, LCg/c;->PRE_ULTRA:LCg/c;

    new-instance v9, LCg/c;

    const-string v10, "ULTRA"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, LCg/c;-><init>(Ljava/lang/String;II)V

    sput-object v9, LCg/c;->ULTRA:LCg/c;

    filled-new-array/range {v0 .. v9}, [LCg/c;

    move-result-object v0

    sput-object v0, LCg/c;->$VALUES:[LCg/c;

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

    iput p3, p0, LCg/c;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCg/c;
    .locals 1

    const-class v0, LCg/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LCg/c;

    return-object p0
.end method

.method public static values()[LCg/c;
    .locals 1

    sget-object v0, LCg/c;->$VALUES:[LCg/c;

    invoke-virtual {v0}, [LCg/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCg/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LCg/c;->level:I

    return v0
.end method
