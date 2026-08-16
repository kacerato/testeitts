.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->genMipmaps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->genMipmaps:Z

    :cond_0
    return-void
.end method
