.class public Lgb/e$a$a;
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
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$a;->b:Lgb/e$a;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LM7/c;

    new-instance v1, Lgb/e$a$a$a;

    invoke-direct {v1, p0}, Lgb/e$a$a$a;-><init>(Lgb/e$a$a;)V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    iget-object v3, p1, Lgb/e$a;->c:Landroid/app/Activity;

    const v4, 0x7f0701d3

    invoke-direct {v0, v4, v1, v2, v3}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v1, Lgb/e;->b:LAc/b;

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    sget-object v3, Lgb/e;->c:LAc/b;

    invoke-virtual {v0, v3}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    const v4, 0x7f050188

    invoke-virtual {v0, v4}, LM7/c;->b0(I)LM7/c;

    move-result-object v0

    iget-object v5, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060232

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    iget-object v5, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060231

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v5, Lgb/e$a$a$b;

    invoke-direct {v5, p0}, Lgb/e$a$a$b;-><init>(Lgb/e$a$a;)V

    iget-object v8, p1, Lgb/e$a;->c:Landroid/app/Activity;

    const v9, 0x7f070097

    invoke-direct {v0, v9, v5, v2, v8}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v3}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v4}, LM7/c;->b0(I)LM7/c;

    move-result-object v0

    iget-object v2, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    iget-object v2, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/k;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, LNc/b;->k0(F)I

    move-result v2

    invoke-direct {v0, v2}, LM7/k;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v2, Lgb/e$a$a$c;

    invoke-direct {v2, p0}, Lgb/e$a$a$c;-><init>(Lgb/e$a$a;)V

    sget-object v5, LM7/c$b;->Left:LM7/c$b;

    iget-object v8, p1, Lgb/e$a;->c:Landroid/app/Activity;

    const v9, 0x7f0701a5

    invoke-direct {v0, v9, v2, v5, v8}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v3}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v4}, LM7/c;->b0(I)LM7/c;

    move-result-object v0

    iget-object v2, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    iget-object v2, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v2, Lgb/e$a$a$d;

    invoke-direct {v2, p0}, Lgb/e$a$a$d;-><init>(Lgb/e$a$a;)V

    sget-object v5, LM7/c$b;->Right:LM7/c$b;

    iget-object v8, p1, Lgb/e$a;->c:Landroid/app/Activity;

    const v9, 0x7f0701a1

    invoke-direct {v0, v9, v2, v5, v8}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v3}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v4}, LM7/c;->b0(I)LM7/c;

    move-result-object v0

    iget-object v1, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    iget-object p1, p1, Lgb/e$a;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, LM7/c;->Y(I)LM7/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
