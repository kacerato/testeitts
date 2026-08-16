.class public Ld7/a$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG4/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$v;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ld7/a$v;


# direct methods
.method public constructor <init>(Ld7/a$v;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$aec",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$v$a;->c:Ld7/a$v;

    iput-object p2, p0, Ld7/a$v$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iput-object p3, p0, Ld7/a$v$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LG4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p1, LG4/e;->b0:Z

    iget-object v0, p0, Ld7/a$v$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget-object v1, p0, Ld7/a$v$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method

.method public c(LG4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    iget-object v0, p0, Ld7/a$v$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget-object v1, p0, Ld7/a$v$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(LG4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    iget-object v0, p0, Ld7/a$v$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    iget-object v1, p0, Ld7/a$v$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, LG4/e;->v1(Ljava/util/List;)V

    return-void
.end method
