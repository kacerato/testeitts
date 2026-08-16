.class synthetic Lorg/google/googlejavaformat/java/DimensionHelpers$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/DimensionHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$openjdk$source$tree$Tree$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/openjdk/source/tree/Tree$Kind;->values()[Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/google/googlejavaformat/java/DimensionHelpers$1;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    :try_start_0
    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->ARRAY_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/google/googlejavaformat/java/DimensionHelpers$1;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
