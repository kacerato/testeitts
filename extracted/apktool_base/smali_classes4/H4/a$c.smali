.class public LH4/a$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH4/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH4/a;


# direct methods
.method public constructor <init>(LH4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH4/a$c;->b:LH4/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LH4/a$c;->b:LH4/a;

    invoke-static {p1}, LH4/a;->p1(LH4/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, LH4/a$c;->b:LH4/a;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->A()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object v0

    invoke-static {p1, v0}, LH4/a;->q1(LH4/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    :cond_0
    iget-object p1, p0, LH4/a$c;->b:LH4/a;

    invoke-static {p1}, LH4/a;->p1(LH4/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, LH4/a$c;->b:LH4/a;

    invoke-static {p1}, LH4/a;->p1(LH4/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->y()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    iget-object p1, p0, LH4/a$c;->b:LH4/a;

    invoke-static {p1}, LH4/a;->p1(LH4/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->J()V

    iget-object p1, p0, LH4/a$c;->b:LH4/a;

    invoke-static {p1}, LH4/a;->r1(LH4/a;)V

    return-void
.end method
