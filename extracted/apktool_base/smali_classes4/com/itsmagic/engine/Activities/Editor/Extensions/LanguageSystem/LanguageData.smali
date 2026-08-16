.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/q;
.end annotation


# instance fields
.field private final entries:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "LAc/b;",
            "LAc/b;",
            ">;"
        }
    .end annotation
.end field

.field private fileName:Ljava/lang/String;

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->fileName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b(LAc/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->entries:Ljava/util/HashMap;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public e(LAc/b;)LAc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAc/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->entries:Ljava/util/HashMap;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData$b;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public i(LAc/b;LAc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance p1, LAc/b;

    invoke-direct {p1, p2}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->i(LAc/b;LAc/b;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->fileName:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->name:Ljava/lang/String;

    return-void
.end method

.method public m(LAc/b;)LAc/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/LanguageData;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LAc/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
