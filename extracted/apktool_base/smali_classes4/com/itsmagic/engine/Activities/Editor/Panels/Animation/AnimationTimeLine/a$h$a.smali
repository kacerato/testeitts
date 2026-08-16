.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$frame"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h$a;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h$a;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->N2(I)V

    return-void
.end method
