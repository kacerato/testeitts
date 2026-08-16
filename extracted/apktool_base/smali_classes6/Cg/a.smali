.class public final enum LCg/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LCg/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LCg/a;

.field public static final enum KEY_STRENGTH_128:LCg/a;

.field public static final enum KEY_STRENGTH_192:LCg/a;

.field public static final enum KEY_STRENGTH_256:LCg/a;


# instance fields
.field private keyLength:I

.field private macLength:I

.field private rawCode:I

.field private saltLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v7, LCg/a;

    const/16 v5, 0x10

    const/16 v6, 0x10

    const-string v1, "KEY_STRENGTH_128"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LCg/a;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, LCg/a;->KEY_STRENGTH_128:LCg/a;

    new-instance v0, LCg/a;

    const/16 v13, 0x18

    const/16 v14, 0x18

    const-string v9, "KEY_STRENGTH_192"

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/16 v12, 0xc

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, LCg/a;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, LCg/a;->KEY_STRENGTH_192:LCg/a;

    new-instance v1, LCg/a;

    const/16 v20, 0x20

    const/16 v21, 0x20

    const-string v16, "KEY_STRENGTH_256"

    const/16 v17, 0x2

    const/16 v18, 0x3

    const/16 v19, 0x10

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, LCg/a;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, LCg/a;->KEY_STRENGTH_256:LCg/a;

    filled-new-array {v7, v0, v1}, [LCg/a;

    move-result-object v0

    sput-object v0, LCg/a;->$VALUES:[LCg/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LCg/a;->rawCode:I

    iput p4, p0, LCg/a;->saltLength:I

    iput p5, p0, LCg/a;->macLength:I

    iput p6, p0, LCg/a;->keyLength:I

    return-void
.end method

.method public static a(I)LCg/a;
    .locals 5

    invoke-static {}, LCg/a;->values()[LCg/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, LCg/a;->d()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LCg/a;
    .locals 1

    const-class v0, LCg/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LCg/a;

    return-object p0
.end method

.method public static values()[LCg/a;
    .locals 1

    sget-object v0, LCg/a;->$VALUES:[LCg/a;

    invoke-virtual {v0}, [LCg/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCg/a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, LCg/a;->keyLength:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LCg/a;->macLength:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LCg/a;->rawCode:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LCg/a;->saltLength:I

    return v0
.end method
