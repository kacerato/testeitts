.class public LJAVARuntime/SpeechRecognizer;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Sound"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/SpeechRecognizer;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/SpeechRecognizer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/SpeechRecognizer;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the speech recognition language tag."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a tag de idioma do reconhecimento de fala."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpeechRecognizer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartialResults()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the partial speech recognition results accumulated for the current frame."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna os resultados parciais do reconhecimento de fala acumulados no frame atual."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpeechRecognizer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->getPartialResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResults()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the final speech recognition results accumulated for the current frame."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna os resultados finais do reconhecimento de fala acumulados no frame atual."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpeechRecognizer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->getResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableRecognition()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether speech recognition is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o reconhecimento de fala est\u00e1 habilitado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpeechRecognizer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->isEnableRecognition()Z

    move-result v0

    return v0
.end method

.method public setEnableRecognition(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets whether speech recognition is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o reconhecimento de fala est\u00e1 habilitado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpeechRecognizer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->setEnableRecognition(Z)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the speech recognition language tag."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a tag de idioma do reconhecimento de fala."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpeechRecognizer;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SpeechRecognizer;->setLanguage(Ljava/lang/String;)V

    return-void
.end method
