.class synthetic Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;->values()[Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField:[I

    :try_start_0
    sget-object v1, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;->LOCAL_SCALE:Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField:[I

    sget-object v1, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;->LOCAL_TRANSLATION:Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField:[I

    sget-object v1, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;->WORLD_SCALE:Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$interpolation$Vector3InterpolationController$UpdateField:[I

    sget-object v1, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;->WORLD_TRANSLATION:Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController$UpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
