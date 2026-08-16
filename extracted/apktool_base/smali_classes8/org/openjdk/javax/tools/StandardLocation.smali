.class public final enum Lorg/openjdk/javax/tools/StandardLocation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileManager$Location;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/tools/StandardLocation;",
        ">;",
        "Lorg/openjdk/javax/tools/JavaFileManager$Location;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum ANNOTATION_PROCESSOR_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum ANNOTATION_PROCESSOR_PATH:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum NATIVE_HEADER_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum SYSTEM_MODULES:Lorg/openjdk/javax/tools/StandardLocation;

.field public static final enum UPGRADE_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

.field private static final locations:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v1, "CLASS_OUTPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v1, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v2, "SOURCE_OUTPUT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v2, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v3, "CLASS_PATH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v3, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v4, "SOURCE_PATH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v4, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v5, "ANNOTATION_PROCESSOR_PATH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v5, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v6, "ANNOTATION_PROCESSOR_MODULE_PATH"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v6, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v7, "PLATFORM_CLASS_PATH"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v7, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v8, "NATIVE_HEADER_OUTPUT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/openjdk/javax/tools/StandardLocation;->NATIVE_HEADER_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v8, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v9, "MODULE_SOURCE_PATH"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v9, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v10, "UPGRADE_MODULE_PATH"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/openjdk/javax/tools/StandardLocation;->UPGRADE_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v10, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v11, "SYSTEM_MODULES"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/openjdk/javax/tools/StandardLocation;->SYSTEM_MODULES:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v11, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v12, "MODULE_PATH"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v12, Lorg/openjdk/javax/tools/StandardLocation;

    const-string v13, "PATCH_MODULE_PATH"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lorg/openjdk/javax/tools/StandardLocation;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/openjdk/javax/tools/StandardLocation;->PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    filled-new-array/range {v0 .. v12}, [Lorg/openjdk/javax/tools/StandardLocation;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/tools/StandardLocation;->$VALUES:[Lorg/openjdk/javax/tools/StandardLocation;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/openjdk/javax/tools/StandardLocation;->locations:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static locationFor(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 6

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->locations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/openjdk/javax/tools/StandardLocation;->values()[Lorg/openjdk/javax/tools/StandardLocation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->locations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->locations:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lorg/openjdk/javax/tools/StandardLocation$1;

    invoke-direct {v1, p0}, Lorg/openjdk/javax/tools/StandardLocation$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/tools/JavaFileManager$Location;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/tools/StandardLocation;
    .locals 1

    const-class v0, Lorg/openjdk/javax/tools/StandardLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/tools/StandardLocation;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/tools/StandardLocation;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->$VALUES:[Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v0}, [Lorg/openjdk/javax/tools/StandardLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/tools/StandardLocation;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isModuleOrientedLocation()Z
    .locals 2

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isOutputLocation()Z
    .locals 3

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
