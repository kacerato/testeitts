.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p1, v0}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;->b:Lv4/b;

    iget-object v0, v0, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->x(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;->b:Lv4/b;

    iget-object p1, p1, Lv4/b;->d:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->m()V

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->W2()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Invalid keyframe Time"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
