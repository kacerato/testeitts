.class public LF5/c$l$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c$l;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LF5/c$l;


# direct methods
.method public constructor <init>(LF5/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LF5/c$l$a;->b:LF5/c$l;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LF5/c$l$a;->b:LF5/c$l;

    iget-boolean v0, p1, LF5/c$l;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, LF5/c$l;->c:Z

    invoke-static {p1}, LF5/c$l;->c(LF5/c$l;)V

    iget-object p1, p0, LF5/c$l$a;->b:LF5/c$l;

    iget-boolean v0, p1, LF5/c$l;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, LF5/c$l;->e:LF5/c$o0;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v0, v1}, LF5/c$o0;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, LF5/c$l;->d:Ljava/util/List;

    :cond_0
    iget-object p1, p0, LF5/c$l$a;->b:LF5/c$l;

    invoke-virtual {p1}, LF5/c$l;->d()V

    return-void
.end method
