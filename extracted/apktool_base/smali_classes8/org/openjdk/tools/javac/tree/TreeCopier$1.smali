.class synthetic Lorg/openjdk/tools/javac/tree/TreeCopier$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/TreeCopier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->values()[Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/tools/javac/tree/TreeCopier$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    :try_start_0
    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LETEXPR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
