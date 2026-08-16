.class public LJAVARuntime/GalleryPicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Files"
    }
.end annotation

.annotation runtime LJAVARuntime/JRDoc_EN;
    value = "Opens the gallery picker and returns the selected image name and File through the listener callbacks."
.end annotation

.annotation runtime LJAVARuntime/JRDoc_PT;
    value = "Abre o seletor da galeria e retorna o nome da imagem selecionada e o File por meio dos callbacks do listener."
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/GalleryPicker$Listener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static open(LJAVARuntime/GalleryPicker$Listener;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Opens the gallery picker and reports the result through the listener."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Abre o seletor da galeria e reporta o resultado pelo listener."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, LJAVARuntime/GalleryPicker$1;

    invoke-direct {v0, p0}, LJAVARuntime/GalleryPicker$1;-><init>(LJAVARuntime/GalleryPicker$Listener;)V

    invoke-static {v0}, Lw3/f;->e(Lw3/f$c;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
