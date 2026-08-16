.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v0, "Pixel"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Linear"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$900(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v5, "Filter"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;)V

    const-string v2, "Mipmaps"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;)V

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    const-string v3, "Mipmap levels"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;)V

    const-string v3, "Quality"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
