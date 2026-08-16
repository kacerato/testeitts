.class public interface abstract LJAVARuntime/FilePicker$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/FilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCancel()V
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Called when the user cancels the picker."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Chamado quando o usu\u00e1rio cancela o seletor."
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;)V
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Called when the picker fails."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Chamado quando o seletor falha."
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

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Called when the picker finishes successfully."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Chamado quando o seletor conclui com sucesso."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "files"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJAVARuntime/FilePicker$DFile;",
            ">;)V"
        }
    .end annotation
.end method
