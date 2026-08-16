.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;->a(Landroid/view/View;Landroid/content/Context;LM7/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$entry",
            "val$ap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$c;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-static {p1, v0}, Lu4/a;->d(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;)V

    :cond_0
    return-void
.end method
