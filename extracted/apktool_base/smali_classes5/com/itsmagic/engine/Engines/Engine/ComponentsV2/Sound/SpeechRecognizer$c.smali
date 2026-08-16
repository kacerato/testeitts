.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->startListening()V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lc8/b;->k()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Z)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Z)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, LJ4/d;->E1()V

    const-string v1, "Failed to start speech recognition, recognition service is not available."

    invoke-static {v1}, LJ4/d;->b2(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Z)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Z)Z

    return-void

    :cond_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$h;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$a;)V

    invoke-virtual {v1, v3}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;Z)Z

    invoke-static {}, LJ4/d;->E1()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start speech recognition: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ4/d;->b2(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
