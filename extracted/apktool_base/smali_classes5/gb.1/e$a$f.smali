.class public Lgb/e$a$f;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "LM7/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lgb/e$a;


# direct methods
.method public constructor <init>(Lgb/e$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$f;->b:Lgb/e$a;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LM7/c;

    new-instance v1, Lgb/e$a$f$a;

    invoke-direct {v1, p0}, Lgb/e$a$f$a;-><init>(Lgb/e$a$f;)V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    iget-object v3, p1, Lgb/e$a;->c:Landroid/app/Activity;

    const v4, 0x7f0701c6

    invoke-direct {v0, v4, v1, v2, v3}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v1, Lgb/e;->b:LAc/b;

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    sget-object v2, Lgb/e;->c:LAc/b;

    invoke-virtual {v0, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    iget-object v3, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    iget-object v3, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060231

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    iget-object v3, p1, Lgb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->objectsPanelColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v3, :cond_0

    :goto_0
    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v6, 0xff

    invoke-direct {v3, v6, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    goto :goto_0

    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, LM7/c;->c0(IZ)LM7/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v3, Lgb/e$a$f$b;

    invoke-direct {v3, p0}, Lgb/e$a$f$b;-><init>(Lgb/e$a$f;)V

    sget-object v6, LM7/c$b;->Right:LM7/c$b;

    iget-object v7, p1, Lgb/e$a;->c:Landroid/app/Activity;

    const v8, 0x7f07009b

    invoke-direct {v0, v8, v3, v6, v7}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    const v1, 0x7f050188

    invoke-virtual {v0, v1}, LM7/c;->b0(I)LM7/c;

    move-result-object v0

    iget-object v1, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    iget-object p1, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, LM7/c;->Y(I)LM7/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
