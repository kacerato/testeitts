.class public final enum Lcom/android/tools/r8/naming/MapVersion;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/C40;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/naming/MapVersion;",
        ">;",
        "Lcom/android/tools/r8/internal/C40<",
        "Lcom/android/tools/r8/naming/MapVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MAP_VERSION_1_0:Lcom/android/tools/r8/naming/MapVersion;

.field public static final enum MAP_VERSION_2_0:Lcom/android/tools/r8/naming/MapVersion;

.field public static final enum MAP_VERSION_2_1:Lcom/android/tools/r8/naming/MapVersion;

.field public static final enum MAP_VERSION_2_2:Lcom/android/tools/r8/naming/MapVersion;

.field public static final enum MAP_VERSION_EXPERIMENTAL:Lcom/android/tools/r8/naming/MapVersion;

.field public static final enum MAP_VERSION_NONE:Lcom/android/tools/r8/naming/MapVersion;

.field public static final enum MAP_VERSION_UNKNOWN:Lcom/android/tools/r8/naming/MapVersion;

.field public static final STABLE:Lcom/android/tools/r8/naming/MapVersion;

.field private static final synthetic c:[Lcom/android/tools/r8/naming/MapVersion;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/tools/r8/naming/MapVersion;

    const-string v1, "MAP_VERSION_UNKNOWN"

    const-string v2, "unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/naming/MapVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_UNKNOWN:Lcom/android/tools/r8/naming/MapVersion;

    new-instance v1, Lcom/android/tools/r8/naming/MapVersion;

    const-string v2, "MAP_VERSION_NONE"

    const-string v3, "none"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/tools/r8/naming/MapVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_NONE:Lcom/android/tools/r8/naming/MapVersion;

    new-instance v2, Lcom/android/tools/r8/naming/MapVersion;

    const-string v3, "MAP_VERSION_1_0"

    const-string v4, "1.0"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lcom/android/tools/r8/naming/MapVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_1_0:Lcom/android/tools/r8/naming/MapVersion;

    new-instance v3, Lcom/android/tools/r8/naming/MapVersion;

    const-string v4, "MAP_VERSION_2_0"

    const-string v5, "2.0"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lcom/android/tools/r8/naming/MapVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_2_0:Lcom/android/tools/r8/naming/MapVersion;

    new-instance v4, Lcom/android/tools/r8/naming/MapVersion;

    const-string v5, "MAP_VERSION_2_1"

    const-string v6, "2.1"

    const/4 v7, 0x4

    invoke-direct {v4, v7, v5, v6}, Lcom/android/tools/r8/naming/MapVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_2_1:Lcom/android/tools/r8/naming/MapVersion;

    new-instance v7, Lcom/android/tools/r8/naming/MapVersion;

    const-string v5, "MAP_VERSION_2_2"

    const-string v6, "2.2"

    const/4 v8, 0x5

    invoke-direct {v7, v8, v5, v6}, Lcom/android/tools/r8/naming/MapVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_2_2:Lcom/android/tools/r8/naming/MapVersion;

    new-instance v6, Lcom/android/tools/r8/naming/MapVersion;

    const-string v5, "MAP_VERSION_EXPERIMENTAL"

    const-string v8, "experimental"

    const/4 v9, 0x6

    invoke-direct {v6, v9, v5, v8}, Lcom/android/tools/r8/naming/MapVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_EXPERIMENTAL:Lcom/android/tools/r8/naming/MapVersion;

    move-object v5, v7

    filled-new-array/range {v0 .. v6}, [Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/naming/MapVersion;->c:[Lcom/android/tools/r8/naming/MapVersion;

    sput-object v7, Lcom/android/tools/r8/naming/MapVersion;->STABLE:Lcom/android/tools/r8/naming/MapVersion;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/tools/r8/naming/MapVersion;->b:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/android/tools/r8/naming/MapVersion;
    .locals 5

    invoke-static {}, Lcom/android/tools/r8/naming/MapVersion;->values()[Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/tools/r8/naming/MapVersion;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/r8/naming/MapVersion;
    .locals 1

    const-class v0, Lcom/android/tools/r8/naming/MapVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/naming/MapVersion;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/naming/MapVersion;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->c:[Lcom/android/tools/r8/naming/MapVersion;

    invoke-virtual {v0}, [Lcom/android/tools/r8/naming/MapVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/naming/MapVersion;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Lcom/android/tools/r8/internal/C40;)I
    .locals 0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/MapVersion;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic isEqualTo(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/C40;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/C40;->a(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    return p1
.end method

.method public isUnknown()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_UNKNOWN:Lcom/android/tools/r8/naming/MapVersion;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toMapVersionMappingInformation()Lcom/android/tools/r8/naming/mappinginformation/b;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/b;

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/MapVersion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/naming/mappinginformation/b;-><init>(Lcom/android/tools/r8/naming/MapVersion;Ljava/lang/String;)V

    return-object v0
.end method
