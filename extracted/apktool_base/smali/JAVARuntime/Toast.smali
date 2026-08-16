.class public final LJAVARuntime/Toast;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static showText(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Shows a toast message on the screen with the given text and duration (use Toast.LENGTH_SHORT or Toast.LENGTH_LONG for length)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Exibe uma mensagem toast na tela com o texto e dura\u00e7\u00e3o informados (use Toast.LENGTH_SHORT ou Toast.LENGTH_LONG para o length)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "length"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Toast$1;

    invoke-direct {v0, p0, p1}, LJAVARuntime/Toast$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
