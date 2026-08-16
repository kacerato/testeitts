.class synthetic Lorg/openjdk/tools/javac/model/JavacElements$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/model/JavacElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

.field static final synthetic $SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->values()[Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/tools/javac/model/JavacElements$1;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/openjdk/tools/javac/model/JavacElements$1;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->values()[Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/openjdk/tools/javac/model/JavacElements$1;->$SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind:[I

    :try_start_2
    sget-object v3, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->REQUIRES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/openjdk/tools/javac/model/JavacElements$1;->$SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind:[I

    sget-object v2, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->EXPORTS:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/openjdk/tools/javac/model/JavacElements$1;->$SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind:[I

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->OPENS:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
