.class public final enum Lz9/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz9/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lz9/c;

.field public static final enum High:Lz9/c;

.field public static final enum Low:Lz9/c;

.field public static final enum Medium:Lz9/c;

.field public static final enum Off:Lz9/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz9/c;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz9/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/c;->Off:Lz9/c;

    new-instance v0, Lz9/c;

    const-string v1, "Low"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz9/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/c;->Low:Lz9/c;

    new-instance v0, Lz9/c;

    const-string v1, "Medium"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lz9/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/c;->Medium:Lz9/c;

    new-instance v0, Lz9/c;

    const-string v1, "High"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lz9/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz9/c;->High:Lz9/c;

    invoke-static {}, Lz9/c;->a()[Lz9/c;

    move-result-object v0

    sput-object v0, Lz9/c;->$VALUES:[Lz9/c;

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

.method public static synthetic a()[Lz9/c;
    .locals 4

    sget-object v0, Lz9/c;->Off:Lz9/c;

    sget-object v1, Lz9/c;->Low:Lz9/c;

    sget-object v2, Lz9/c;->Medium:Lz9/c;

    sget-object v3, Lz9/c;->High:Lz9/c;

    filled-new-array {v0, v1, v2, v3}, [Lz9/c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lz9/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lz9/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz9/c;

    return-object p0
.end method

.method public static values()[Lz9/c;
    .locals 1

    sget-object v0, Lz9/c;->$VALUES:[Lz9/c;

    invoke-virtual {v0}, [Lz9/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz9/c;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x4

    return v0

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
