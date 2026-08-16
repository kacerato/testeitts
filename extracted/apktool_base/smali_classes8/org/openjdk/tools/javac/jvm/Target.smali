.class public final enum Lorg/openjdk/tools/javac/jvm/Target;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/jvm/Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/jvm/Target;

.field public static final DEFAULT:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final enum JDK1_1:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final enum JDK1_2:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final enum JDK1_3:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final enum JDK1_4:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final enum JDK1_5:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final enum JDK1_6:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final enum JDK1_7:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final enum JDK1_8:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final enum JDK1_9:Lorg/openjdk/tools/javac/jvm/Target;

.field private static final MAX:Lorg/openjdk/tools/javac/jvm/Target;

.field public static final MIN:Lorg/openjdk/tools/javac/jvm/Target;

.field private static final tab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/jvm/Target;",
            ">;"
        }
    .end annotation
.end field

.field private static final targetKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/jvm/Target;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final majorVersion:I

.field public final minorVersion:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v6, Lorg/openjdk/tools/javac/jvm/Target;

    const/16 v4, 0x2d

    const/4 v5, 0x3

    const-string v1, "JDK1_1"

    const/4 v2, 0x0

    const-string v3, "1.1"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_1:Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/Target;

    const/16 v11, 0x2e

    const/4 v12, 0x0

    const-string v8, "JDK1_2"

    const/4 v9, 0x1

    const-string v10, "1.2"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/openjdk/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_2:Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/Target;

    const/16 v17, 0x2f

    const/16 v18, 0x0

    const-string v14, "JDK1_3"

    const/4 v15, 0x2

    const-string v16, "1.3"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lorg/openjdk/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_3:Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v3, Lorg/openjdk/tools/javac/jvm/Target;

    const/16 v11, 0x30

    const-string v8, "JDK1_4"

    const/4 v9, 0x3

    const-string v10, "1.4"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/openjdk/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_4:Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v4, Lorg/openjdk/tools/javac/jvm/Target;

    const/16 v17, 0x31

    const-string v14, "JDK1_5"

    const/4 v15, 0x4

    const-string v16, "1.5"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lorg/openjdk/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v4, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_5:Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v13, Lorg/openjdk/tools/javac/jvm/Target;

    const/16 v11, 0x32

    const-string v8, "JDK1_6"

    const/4 v9, 0x5

    const-string v10, "1.6"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lorg/openjdk/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v13, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_6:Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v7, Lorg/openjdk/tools/javac/jvm/Target;

    const/16 v18, 0x33

    const/16 v19, 0x0

    const-string v15, "JDK1_7"

    const/16 v16, 0x6

    const-string v17, "1.7"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lorg/openjdk/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v7, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_7:Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v8, Lorg/openjdk/tools/javac/jvm/Target;

    const/16 v24, 0x34

    const/16 v25, 0x0

    const-string v21, "JDK1_8"

    const/16 v22, 0x7

    const-string v23, "1.8"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lorg/openjdk/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v8, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_8:Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v9, Lorg/openjdk/tools/javac/jvm/Target;

    const/16 v18, 0x35

    const-string v15, "JDK1_9"

    const/16 v16, 0x8

    const-string v17, "1.9"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lorg/openjdk/tools/javac/jvm/Target;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v9, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_9:Lorg/openjdk/tools/javac/jvm/Target;

    move-object v5, v13

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    filled-new-array/range {v0 .. v8}, [Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/jvm/Target;->$VALUES:[Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/Target;->targetKey:Lorg/openjdk/tools/javac/util/Context$Key;

    sput-object v13, Lorg/openjdk/tools/javac/jvm/Target;->MIN:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/Target;->values()[Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/Target;->values()[Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sput-object v0, Lorg/openjdk/tools/javac/jvm/Target;->MAX:Lorg/openjdk/tools/javac/jvm/Target;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/Target;->values()[Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/openjdk/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    iget-object v5, v3, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    const-string v1, "5"

    sget-object v2, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_5:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "6"

    sget-object v2, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_6:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "7"

    sget-object v2, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_7:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_8:Lorg/openjdk/tools/javac/jvm/Target;

    const-string v2, "8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "9"

    sget-object v3, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_9:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lorg/openjdk/tools/javac/jvm/Target;->DEFAULT:Lorg/openjdk/tools/javac/jvm/Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    iput p4, p0, Lorg/openjdk/tools/javac/jvm/Target;->majorVersion:I

    iput p5, p0, Lorg/openjdk/tools/javac/jvm/Target;->minorVersion:I

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->targetKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/jvm/Target;

    if-nez v1, :cond_2

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->TARGET:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/Target;->lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/jvm/Target;->DEFAULT:Lorg/openjdk/tools/javac/jvm/Target;

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public static lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Target;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->tab:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/jvm/Target;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Target;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/jvm/Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/jvm/Target;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/jvm/Target;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->$VALUES:[Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/jvm/Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/jvm/Target;

    return-object v0
.end method


# virtual methods
.method public hasInvokedynamic()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_7:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMethodHandles()Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Target;->hasInvokedynamic()Z

    move-result v0

    return v0
.end method

.method public hasObjects()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_7:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStringConcatFactory()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_9:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiReleaseValue()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_1:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syntheticNameChar()C
    .locals 1

    const/16 v0, 0x24

    return v0
.end method
