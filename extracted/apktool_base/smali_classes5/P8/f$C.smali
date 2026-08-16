.class public LP8/f$C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:LP8/p;

.field public final synthetic c:Ljava/lang/reflect/Field;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Class;

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;LP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$list",
            "val$listener",
            "val$field",
            "val$instance",
            "val$classAddress",
            "val$gameObject",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$C;->a:Ljava/util/List;

    iput-object p2, p0, LP8/f$C;->b:LP8/p;

    iput-object p3, p0, LP8/f$C;->c:Ljava/lang/reflect/Field;

    iput-object p4, p0, LP8/f$C;->d:Ljava/lang/Object;

    iput-object p5, p0, LP8/f$C;->e:Ljava/lang/Class;

    iput-object p6, p0, LP8/f$C;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p7, p0, LP8/f$C;->g:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "adapterPosition"
        }
    .end annotation

    iget-object p1, p0, LP8/f$C;->a:Ljava/util/List;

    invoke-static {p1}, LP8/f;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x32

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_3

    iget-object p1, p0, LP8/f$C;->a:Ljava/util/List;

    new-instance p2, Ljava/lang/String;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LP8/f$C;->b:LP8/p;

    if-eqz p1, :cond_2

    iget-object p2, p0, LP8/f$C;->c:Ljava/lang/reflect/Field;

    iget-object v0, p0, LP8/f$C;->d:Ljava/lang/Object;

    iget-object v1, p0, LP8/f$C;->e:Ljava/lang/Class;

    invoke-interface {p1, p2, v0, v1}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$C$c;

    invoke-direct {p2, p0}, LP8/f$C$c;-><init>(LP8/f$C;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    new-instance v0, LP8/q;

    iget-object v1, p0, LP8/f$C;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0, v1}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v1

    array-length v4, v1

    move v5, p2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_6

    aget-object v7, v1, v5

    iget-object v8, v7, LP8/h;->a:LP8/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v0}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object p2, p0, LP8/f$C;->a:Ljava/util/List;

    iget-object v1, v7, LP8/h;->a:LP8/i;

    invoke-interface {v1, v0}, LP8/i;->newInstance(LP8/q;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-nez p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->i0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object p2, p0, LP8/f$C;->a:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move v6, p2

    :goto_2
    if-nez v6, :cond_8

    :try_start_0
    iget-object p2, p0, LP8/f$C;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, LP8/f$C;->a:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    iget-object p1, p0, LP8/f$C;->b:LP8/p;

    if-eqz p1, :cond_9

    invoke-interface {p1}, LP8/p;->b()V

    :cond_9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$C$e;

    invoke-direct {p2, p0}, LP8/f$C$e;-><init>(LP8/f$C;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    :cond_a
    :goto_4
    iget-object p1, p0, LP8/f$C;->a:Ljava/util/List;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LP8/f$C;->b:LP8/p;

    if-eqz p1, :cond_b

    iget-object p2, p0, LP8/f$C;->c:Ljava/lang/reflect/Field;

    iget-object v0, p0, LP8/f$C;->d:Ljava/lang/Object;

    iget-object v1, p0, LP8/f$C;->e:Ljava/lang/Class;

    invoke-interface {p1, p2, v0, v1}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_b
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$C$d;

    invoke-direct {p2, p0}, LP8/f$C$d;-><init>(LP8/f$C;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_c
    :goto_5
    iget-object p1, p0, LP8/f$C;->a:Ljava/util/List;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LP8/f$C;->b:LP8/p;

    if-eqz p1, :cond_d

    iget-object p2, p0, LP8/f$C;->c:Ljava/lang/reflect/Field;

    iget-object v0, p0, LP8/f$C;->d:Ljava/lang/Object;

    iget-object v1, p0, LP8/f$C;->e:Ljava/lang/Class;

    invoke-interface {p1, p2, v0, v1}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_d
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$C$b;

    invoke-direct {p2, p0}, LP8/f$C$b;-><init>(LP8/f$C;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_e
    :goto_6
    iget-object p1, p0, LP8/f$C;->a:Ljava/util/List;

    new-instance p2, Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LP8/f$C;->b:LP8/p;

    if-eqz p1, :cond_f

    iget-object p2, p0, LP8/f$C;->c:Ljava/lang/reflect/Field;

    iget-object v0, p0, LP8/f$C;->d:Ljava/lang/Object;

    iget-object v1, p0, LP8/f$C;->e:Ljava/lang/Class;

    invoke-interface {p1, p2, v0, v1}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_f
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$C$a;

    invoke-direct {p2, p0}, LP8/f$C$a;-><init>(LP8/f$C;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_10
    iget-object p1, p0, LP8/f$C;->g:Landroid/content/Context;

    const-string v0, "Failed to determine class type"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_7
    return-void
.end method
