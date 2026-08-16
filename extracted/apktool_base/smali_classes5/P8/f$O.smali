.class public LP8/f$O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Field;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LP8/p;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Landroid/content/Context;LP8/p;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$field",
            "val$context",
            "val$listener",
            "val$instance",
            "val$classAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$O;->a:Ljava/lang/reflect/Field;

    iput-object p2, p0, LP8/f$O;->b:Landroid/content/Context;

    iput-object p3, p0, LP8/f$O;->c:LP8/p;

    iput-object p4, p0, LP8/f$O;->d:Ljava/lang/Object;

    iput-object p5, p0, LP8/f$O;->e:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, LP8/f$O;->a:Ljava/lang/reflect/Field;

    iget-object v2, p0, LP8/f$O;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, "0"

    invoke-direct {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, LP8/f$O;->a:Ljava/lang/reflect/Field;

    const-class v1, LJAVARuntime/ReadOnly;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, LP8/f$O;->b:Landroid/content/Context;

    const-string v0, "Field is read only!"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, LP8/f$O;->c:LP8/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, LP8/f$O;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$O;->d:Ljava/lang/Object;

    iget-object v2, p0, LP8/f$O;->e:Ljava/lang/Class;

    invoke-interface {p1, v0, v1, v2}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Float;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    iget-object p1, p0, LP8/f$O;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$O;->d:Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object p1, p0, LP8/f$O;->c:LP8/p;

    if-eqz p1, :cond_2

    iget-object v0, p0, LP8/f$O;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$O;->d:Ljava/lang/Object;

    iget-object v2, p0, LP8/f$O;->e:Ljava/lang/Class;

    invoke-interface {p1, v0, v1, v2}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_2
    return-void
.end method
