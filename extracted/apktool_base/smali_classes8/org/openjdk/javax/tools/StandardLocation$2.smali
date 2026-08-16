.class synthetic Lorg/openjdk/javax/tools/StandardLocation$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/tools/StandardLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javax$tools$StandardLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/openjdk/javax/tools/StandardLocation;->values()[Lorg/openjdk/javax/tools/StandardLocation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    :try_start_0
    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->NATIVE_HEADER_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->UPGRADE_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SYSTEM_MODULES:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation$2;->$SwitchMap$javax$tools$StandardLocation:[I

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
