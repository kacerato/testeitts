.class public final enum Lz9/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz9/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lz9/g;

.field public static final enum High:Lz9/g;

.field public static final enum Insane:Lz9/g;

.field public static final enum Low:Lz9/g;

.field public static final enum Medium:Lz9/g;

.field public static final enum Ultra:Lz9/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz9/g;

    const-string v1, "Low"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz9/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/g;->Low:Lz9/g;

    new-instance v0, Lz9/g;

    const-string v1, "Medium"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz9/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/g;->Medium:Lz9/g;

    new-instance v0, Lz9/g;

    const-string v1, "High"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lz9/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/g;->High:Lz9/g;

    new-instance v0, Lz9/g;

    const-string v1, "Ultra"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lz9/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/g;->Ultra:Lz9/g;

    new-instance v0, Lz9/g;

    const-string v1, "Insane"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lz9/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/g;->Insane:Lz9/g;

    invoke-static {}, Lz9/g;->a()[Lz9/g;

    move-result-object v0

    sput-object v0, Lz9/g;->$VALUES:[Lz9/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lz9/g;
    .locals 5

    sget-object v0, Lz9/g;->Low:Lz9/g;

    sget-object v1, Lz9/g;->Medium:Lz9/g;

    sget-object v2, Lz9/g;->High:Lz9/g;

    sget-object v3, Lz9/g;->Ultra:Lz9/g;

    sget-object v4, Lz9/g;->Insane:Lz9/g;

    filled-new-array {v0, v1, v2, v3, v4}, [Lz9/g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lz9/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lz9/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz9/g;

    return-object p0
.end method

.method public static values()[Lz9/g;
    .locals 1

    sget-object v0, Lz9/g;->$VALUES:[Lz9/g;

    invoke-virtual {v0}, [Lz9/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz9/g;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x12c

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/16 v0, 0xfa

    return v0

    :cond_2
    const/16 v0, 0x80

    return v0

    :cond_3
    const/16 v0, 0x60

    return v0

    :cond_4
    const/16 v0, 0x46

    return v0
.end method

.method public c()F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    return v0

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_4
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method
