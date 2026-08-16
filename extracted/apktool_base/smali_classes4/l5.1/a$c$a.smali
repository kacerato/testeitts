.class public Ll5/a$c$a;
.super LZ6/l$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/a$c;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/c;

.field public final synthetic b:Ll5/a$c;


# direct methods
.method public constructor <init>(Ll5/a$c;LM7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tbButton"
        }
    .end annotation

    iput-object p1, p0, Ll5/a$c$a;->b:Ll5/a$c;

    iput-object p2, p0, Ll5/a$c$a;->a:LM7/c;

    invoke-direct {p0}, LZ6/l$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LZ6/l$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, LZ6/l$h;->b(LZ6/l$g;)V

    sget-object p1, LW7/b;->i:La8/a;

    iget-object p1, p1, La8/a;->a:La8/b;

    iget-object p1, p1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v0, Ll5/a$c$a$a;

    invoke-direct {v0, p0, p1}, Ll5/a$c$a$a;-><init>(Ll5/a$c$a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    sget-object p1, LW7/b;->h:Lb8/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Ll5/a$c$a;->a:LM7/c;

    invoke-virtual {p1}, LM7/g;->g()V

    return-void
.end method
