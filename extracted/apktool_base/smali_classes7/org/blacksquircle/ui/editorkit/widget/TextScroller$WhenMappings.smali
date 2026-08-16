.class public final synthetic Lorg/blacksquircle/ui/editorkit/widget/TextScroller$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/blacksquircle/ui/editorkit/widget/TextScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->values()[Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->HIDDEN:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->VISIBLE:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->DRAGGING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->EXITING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
