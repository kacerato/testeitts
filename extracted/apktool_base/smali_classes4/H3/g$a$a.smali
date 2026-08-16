.class public LH3/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH3/g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH3/g$a;


# direct methods
.method public constructor <init>(LH3/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH3/g$a$a;->b:LH3/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LH3/g$a$a;->b:LH3/g$a;

    iget-object v0, v0, LH3/g$a;->c:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    const/16 v0, 0x118

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    iget-object v2, p0, LH3/g$a$a;->b:LH3/g$a;

    iget-object v3, v2, LH3/g$a;->d:Landroid/view/View;

    iget-object v4, v2, LH3/g$a;->b:LH3/g;

    iget-object v2, v2, LH3/g$a;->e:Lr4/a$e;

    invoke-static {v3, v4, v2, v0, v1}, Lr4/a;->h(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)V

    return-void
.end method
