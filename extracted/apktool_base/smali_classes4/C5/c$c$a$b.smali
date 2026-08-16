.class public LC5/c$c$a$b;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/c$c$a;
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
.field public final synthetic b:LC5/c$c$a;


# direct methods
.method public constructor <init>(LC5/c$c$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LC5/c$c$a$b;->b:LC5/c$c$a;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LM7/c;

    new-instance v1, LC5/c$c$a$b$a;

    invoke-direct {v1, p0}, LC5/c$c$a$b$a;-><init>(LC5/c$c$a$b;)V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    iget-object v3, p1, LC5/c$c$a;->b:Landroid/app/Activity;

    const v4, 0x7f0700c0

    invoke-direct {v0, v4, v1, v2, v3}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v1, LC5/c;->e:LAc/b;

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    sget-object v2, LC5/c;->f:LAc/b;

    invoke-virtual {v0, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-virtual {v0, v3}, LM7/c;->d0(LAc/b;)LM7/c;

    move-result-object v0

    iget-object v4, p1, LC5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060232

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    iget-object v4, p1, LC5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060231

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, LM7/c;->Y(I)LM7/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/k;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v4

    invoke-direct {v0, v4}, LM7/k;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, LM7/c;

    new-instance v4, LC5/c$c$a$b$b;

    invoke-direct {v4, p0}, LC5/c$c$a$b$b;-><init>(LC5/c$c$a$b;)V

    sget-object v7, LM7/c$b;->Right:LM7/c$b;

    iget-object v8, p1, LC5/c$c$a;->b:Landroid/app/Activity;

    const v9, 0x7f07009b

    invoke-direct {v0, v9, v4, v7, v8}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v2}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {v0, v3}, LM7/c;->d0(LAc/b;)LM7/c;

    move-result-object v0

    iget-object v1, p1, LC5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    iget-object p1, p1, LC5/c$c$a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, LM7/c;->Y(I)LM7/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
