.class public enum Lorg/openjdk/tools/javac/jvm/Profile;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/jvm/Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/jvm/Profile;

.field public static final enum COMPACT1:Lorg/openjdk/tools/javac/jvm/Profile;

.field public static final enum COMPACT2:Lorg/openjdk/tools/javac/jvm/Profile;

.field public static final enum COMPACT3:Lorg/openjdk/tools/javac/jvm/Profile;

.field public static final enum DEFAULT:Lorg/openjdk/tools/javac/jvm/Profile;

.field private static final profileKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/jvm/Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;

.field final targets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/jvm/Target;",
            ">;"
        }
    .end annotation
.end field

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v7, Lorg/openjdk/tools/javac/jvm/Profile;

    sget-object v8, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_8:Lorg/openjdk/tools/javac/jvm/Target;

    sget-object v9, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_9:Lorg/openjdk/tools/javac/jvm/Target;

    filled-new-array {v9}, [Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v6

    const-string v1, "COMPACT1"

    const/4 v2, 0x0

    const-string v3, "compact1"

    const/4 v4, 0x1

    move-object v0, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/jvm/Profile;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/openjdk/tools/javac/jvm/Target;[Lorg/openjdk/tools/javac/jvm/Target;)V

    sput-object v7, Lorg/openjdk/tools/javac/jvm/Profile;->COMPACT1:Lorg/openjdk/tools/javac/jvm/Profile;

    new-instance v10, Lorg/openjdk/tools/javac/jvm/Profile;

    const/4 v4, 0x2

    filled-new-array {v9}, [Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v6

    const-string v1, "COMPACT2"

    const/4 v2, 0x1

    const-string v3, "compact2"

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/jvm/Profile;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/openjdk/tools/javac/jvm/Target;[Lorg/openjdk/tools/javac/jvm/Target;)V

    sput-object v10, Lorg/openjdk/tools/javac/jvm/Profile;->COMPACT2:Lorg/openjdk/tools/javac/jvm/Profile;

    new-instance v11, Lorg/openjdk/tools/javac/jvm/Profile;

    const/4 v4, 0x3

    filled-new-array {v9}, [Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v6

    const-string v1, "COMPACT3"

    const/4 v2, 0x2

    const-string v3, "compact3"

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/jvm/Profile;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/openjdk/tools/javac/jvm/Target;[Lorg/openjdk/tools/javac/jvm/Target;)V

    sput-object v11, Lorg/openjdk/tools/javac/jvm/Profile;->COMPACT3:Lorg/openjdk/tools/javac/jvm/Profile;

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Profile$1;

    const-string v1, "DEFAULT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Profile$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/Profile;->DEFAULT:Lorg/openjdk/tools/javac/jvm/Profile;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/openjdk/tools/javac/jvm/Profile;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v11, v1, v3

    aput-object v0, v1, v2

    sput-object v1, Lorg/openjdk/tools/javac/jvm/Profile;->$VALUES:[Lorg/openjdk/tools/javac/jvm/Profile;

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/Profile;->profileKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Profile;->name:Ljava/lang/String;

    const p2, 0x7fffffff

    .line 4
    iput p2, p0, Lorg/openjdk/tools/javac/jvm/Profile;->value:I

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Profile;->targets:Ljava/util/Set;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILorg/openjdk/tools/javac/jvm/Target;[Lorg/openjdk/tools/javac/jvm/Target;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/openjdk/tools/javac/jvm/Target;",
            "[",
            "Lorg/openjdk/tools/javac/jvm/Target;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Profile;->name:Ljava/lang/String;

    .line 8
    iput p4, p0, Lorg/openjdk/tools/javac/jvm/Profile;->value:I

    .line 9
    invoke-static {p5, p6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Profile;->targets:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/jvm/Profile$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Profile;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Profile;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Profile;->profileKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/jvm/Profile;

    if-nez v1, :cond_2

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->PROFILE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/Profile;->lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Profile;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/jvm/Profile;->DEFAULT:Lorg/openjdk/tools/javac/jvm/Profile;

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public static lookup(I)Lorg/openjdk/tools/javac/jvm/Profile;
    .locals 5

    .line 3
    invoke-static {}, Lorg/openjdk/tools/javac/jvm/Profile;->values()[Lorg/openjdk/tools/javac/jvm/Profile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    iget v4, v3, Lorg/openjdk/tools/javac/jvm/Profile;->value:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Profile;
    .locals 5

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/jvm/Profile;->values()[Lorg/openjdk/tools/javac/jvm/Profile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lorg/openjdk/tools/javac/jvm/Profile;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Profile;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/jvm/Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/jvm/Profile;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/jvm/Profile;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Profile;->$VALUES:[Lorg/openjdk/tools/javac/jvm/Profile;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/jvm/Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/jvm/Profile;

    return-object v0
.end method


# virtual methods
.method public isValid(Lorg/openjdk/tools/javac/jvm/Target;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Profile;->targets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
