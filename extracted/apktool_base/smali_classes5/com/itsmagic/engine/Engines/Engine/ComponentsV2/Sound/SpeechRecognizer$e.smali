.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->destroyRecognizer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
