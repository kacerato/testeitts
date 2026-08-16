.class LJAVARuntime/GalleryPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/GalleryPicker;->open(LJAVARuntime/GalleryPicker$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:LJAVARuntime/GalleryPicker$Listener;


# direct methods
.method public constructor <init>(LJAVARuntime/GalleryPicker$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GalleryPicker$1;->val$listener:LJAVARuntime/GalleryPicker$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/GalleryPicker$1;->val$listener:LJAVARuntime/GalleryPicker$Listener;

    invoke-interface {v0}, LJAVARuntime/GalleryPicker$Listener;->onCancel()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/GalleryPicker$1;->val$listener:LJAVARuntime/GalleryPicker$Listener;

    invoke-interface {v0, p1}, LJAVARuntime/GalleryPicker$Listener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
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

    iget-object v0, p0, LJAVARuntime/GalleryPicker$1;->val$listener:LJAVARuntime/GalleryPicker$Listener;

    invoke-interface {v0, p1, p2}, LJAVARuntime/GalleryPicker$Listener;->onSuccess(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
