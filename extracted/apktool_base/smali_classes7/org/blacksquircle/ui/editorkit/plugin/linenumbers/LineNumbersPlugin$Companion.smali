.class public final Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDp(Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;->getDp(I)I

    move-result p0

    return p0
.end method

.method private final getDp(I)I
    .locals 1

    int-to-float p1, p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
