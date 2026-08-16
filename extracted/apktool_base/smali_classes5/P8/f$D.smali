.class public LP8/f$D;
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
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:LP8/p;

.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Class;

.field public final synthetic g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;LP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
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
            "val$finalListType",
            "val$list",
            "val$listener",
            "val$field",
            "val$instance",
            "val$classAddress",
            "val$gameObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$D;->a:Ljava/lang/Class;

    iput-object p2, p0, LP8/f$D;->b:Ljava/util/List;

    iput-object p3, p0, LP8/f$D;->c:LP8/p;

    iput-object p4, p0, LP8/f$D;->d:Ljava/lang/reflect/Field;

    iput-object p5, p0, LP8/f$D;->e:Ljava/lang/Object;

    iput-object p6, p0, LP8/f$D;->f:Ljava/lang/Class;

    iput-object p7, p0, LP8/f$D;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

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

    iget-object p1, p0, LP8/f$D;->a:Ljava/lang/Class;

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-wide/16 v0, 0x32

    if-eq p1, p2, :cond_c

    const-class p2, Ljava/lang/Float;

    if-ne p1, p2, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eq p1, p2, :cond_a

    const-class p2, Ljava/lang/Integer;

    if-ne p1, p2, :cond_1

    goto/16 :goto_5

    :cond_1
    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, LP8/f$D;->b:Ljava/util/List;

    new-instance p2, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LP8/f$D;->c:LP8/p;

    if-eqz p1, :cond_2

    iget-object p2, p0, LP8/f$D;->d:Ljava/lang/reflect/Field;

    iget-object v2, p0, LP8/f$D;->e:Ljava/lang/Object;

    iget-object v3, p0, LP8/f$D;->f:Ljava/lang/Class;

    invoke-interface {p1, p2, v2, v3}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$D$c;

    invoke-direct {p2, p0}, LP8/f$D$c;-><init>(LP8/f$D;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    :cond_3
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_8

    const-class p2, Ljava/lang/Boolean;

    if-ne p1, p2, :cond_4

    goto/16 :goto_4

    :cond_4
    const/4 p1, 0x0

    :try_start_0
    new-instance p2, LP8/q;

    iget-object v3, p0, LP8/f$D;->g:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p2, v3}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_6

    aget-object v7, v3, v5

    iget-object v8, v7, LP8/h;->a:LP8/i;

    iget-object v9, p0, LP8/f$D;->a:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p2}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v2, p0, LP8/f$D;->b:Ljava/util/List;

    iget-object v3, v7, LP8/h;->a:LP8/i;

    invoke-interface {v3, p2}, LP8/i;->newInstance(LP8/q;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-nez v2, :cond_7

    iget-object p2, p0, LP8/f$D;->a:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld8/j;->i0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object v2, p0, LP8/f$D;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    move v6, v2

    :goto_2
    if-nez v6, :cond_e

    :try_start_1
    iget-object p2, p0, LP8/f$D;->b:Ljava/util/List;

    iget-object v2, p0, LP8/f$D;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p2, p0, LP8/f$D;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p2, p0, LP8/f$D;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    :goto_4
    iget-object p1, p0, LP8/f$D;->b:Ljava/util/List;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LP8/f$D;->c:LP8/p;

    if-eqz p1, :cond_9

    iget-object p2, p0, LP8/f$D;->d:Ljava/lang/reflect/Field;

    iget-object v2, p0, LP8/f$D;->e:Ljava/lang/Object;

    iget-object v3, p0, LP8/f$D;->f:Ljava/lang/Class;

    invoke-interface {p1, p2, v2, v3}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$D$d;

    invoke-direct {p2, p0}, LP8/f$D$d;-><init>(LP8/f$D;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_a
    :goto_5
    iget-object p1, p0, LP8/f$D;->b:Ljava/util/List;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LP8/f$D;->c:LP8/p;

    if-eqz p1, :cond_b

    iget-object p2, p0, LP8/f$D;->d:Ljava/lang/reflect/Field;

    iget-object v2, p0, LP8/f$D;->e:Ljava/lang/Object;

    iget-object v3, p0, LP8/f$D;->f:Ljava/lang/Class;

    invoke-interface {p1, p2, v2, v3}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_b
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$D$b;

    invoke-direct {p2, p0}, LP8/f$D$b;-><init>(LP8/f$D;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_c
    :goto_6
    iget-object p1, p0, LP8/f$D;->b:Ljava/util/List;

    new-instance p2, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {p2, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LP8/f$D;->c:LP8/p;

    if-eqz p1, :cond_d

    iget-object p2, p0, LP8/f$D;->d:Ljava/lang/reflect/Field;

    iget-object v2, p0, LP8/f$D;->e:Ljava/lang/Object;

    iget-object v3, p0, LP8/f$D;->f:Ljava/lang/Class;

    invoke-interface {p1, p2, v2, v3}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_d
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$D$a;

    invoke-direct {p2, p0}, LP8/f$D$a;-><init>(LP8/f$D;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_7
    iget-object p1, p0, LP8/f$D;->c:LP8/p;

    if-eqz p1, :cond_f

    iget-object p2, p0, LP8/f$D;->d:Ljava/lang/reflect/Field;

    iget-object v2, p0, LP8/f$D;->e:Ljava/lang/Object;

    iget-object v3, p0, LP8/f$D;->f:Ljava/lang/Class;

    invoke-interface {p1, p2, v2, v3}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_f
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LP8/f$D$e;

    invoke-direct {p2, p0}, LP8/f$D$e;-><init>(LP8/f$D;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
