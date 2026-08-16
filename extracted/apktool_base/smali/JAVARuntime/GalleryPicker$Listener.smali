.class public interface abstract LJAVARuntime/GalleryPicker$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/GalleryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCancel()V
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Called when the user cancels the gallery picker."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Chamado quando o usu\u00e1rio cancela o seletor da galeria."
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;)V
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Called when the gallery picker fails."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Chamado quando o seletor da galeria falha."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/io/File;)V
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Called when the gallery picker finishes successfully."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Chamado quando o seletor da galeria conclui com sucesso."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageName",
            "imageFile"
        }
    .end annotation
.end method
