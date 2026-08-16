.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e$e;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e$e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e$e;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e$e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->setAmbientOcclusionQuality(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)V

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e$e;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)V

    return-void
.end method
