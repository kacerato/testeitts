.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    invoke-static {p1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a;Ljava/lang/String;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
