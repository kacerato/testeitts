.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$b;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->c(LG4/e;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    move-result-object v0

    iput-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$b;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V

    return-void
.end method
