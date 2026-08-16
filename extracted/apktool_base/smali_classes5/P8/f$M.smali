.class public LP8/f$M;
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

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:LP8/p;

.field public final synthetic d:Ljava/lang/Class;

.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;LP8/p;Ljava/lang/Class;Ljava/util/Set;)V
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
            "val$instance",
            "val$listener",
            "val$classAddress",
            "val$conditionalFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$M;->a:Ljava/lang/reflect/Field;

    iput-object p2, p0, LP8/f$M;->b:Ljava/lang/Object;

    iput-object p3, p0, LP8/f$M;->c:LP8/p;

    iput-object p4, p0, LP8/f$M;->d:Ljava/lang/Class;

    iput-object p5, p0, LP8/f$M;->e:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    :try_start_0
    iget-object v0, p0, LP8/f$M;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object v0, p0, LP8/f$M;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$M;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, LP8/f$M;->c:LP8/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, LP8/f$M;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$M;->b:Ljava/lang/Object;

    iget-object v2, p0, LP8/f$M;->d:Ljava/lang/Class;

    invoke-interface {p1, v0, v1, v2}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object p1, p0, LP8/f$M;->e:Ljava/util/Set;

    iget-object v0, p0, LP8/f$M;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LP8/f$M;->c:LP8/p;

    invoke-interface {p1}, LP8/p;->b()V

    :cond_0
    return-void
.end method
