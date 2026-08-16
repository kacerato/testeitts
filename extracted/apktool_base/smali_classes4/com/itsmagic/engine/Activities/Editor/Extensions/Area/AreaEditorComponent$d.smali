.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

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
    .locals 5
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

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Enabled"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;)V

    const-string v3, "Quality"

    sget-object v4, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v0, v1, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->access$700(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;)V

    const-string v3, "Reach"

    const-class v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    invoke-static {v3, v4, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;)V

    const-string v3, "Intensity"

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v0, v1, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;)V

    const-string v3, "Ray visibility"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
