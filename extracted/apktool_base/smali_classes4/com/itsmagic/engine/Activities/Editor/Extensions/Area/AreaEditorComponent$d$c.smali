.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$c;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;

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

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$c;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->setBounceGIRange(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;)V

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->b()Ljava/lang/String;

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

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$c;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;)V

    return-void
.end method
