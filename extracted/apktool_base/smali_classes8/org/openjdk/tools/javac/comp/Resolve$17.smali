.class synthetic Lorg/openjdk/tools/javac/comp/Resolve$17;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$code$Kinds$KindName:[I

.field static final synthetic $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lorg/openjdk/tools/javac/code/Kinds$KindName;->values()[Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$KindName:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindName;->METHOD:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$KindName:[I

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->values()[Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    :try_start_2
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->REFERENCE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CONDEXPR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    invoke-static {}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->values()[Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    :try_start_5
    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTHS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
