.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;->b:Lv4/b;

    iget-object v0, v0, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m$a;)V

    const-string v1, "Change keyframe time"

    invoke-static {v1, p1, v0}, LZ6/f;->x1(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V

    return-void
.end method
