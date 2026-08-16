.class public LP8/f$j;
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
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:LP8/p;

.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Class;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;ILP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V
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
            "val$finalX",
            "val$listener",
            "val$field",
            "val$instance",
            "val$classAddress",
            "val$o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP8/f$j;->a:Ljava/util/List;

    iput p2, p0, LP8/f$j;->b:I

    iput-object p3, p0, LP8/f$j;->c:LP8/p;

    iput-object p4, p0, LP8/f$j;->d:Ljava/lang/reflect/Field;

    iput-object p5, p0, LP8/f$j;->e:Ljava/lang/Object;

    iput-object p6, p0, LP8/f$j;->f:Ljava/lang/Class;

    iput-object p7, p0, LP8/f$j;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, LP8/f$j;->g:Ljava/lang/Object;

    invoke-static {v0}, LP8/f;->h(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

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

    if-eqz p1, :cond_0

    iget-object v0, p0, LP8/f$j;->a:Ljava/util/List;

    iget v1, p0, LP8/f$j;->b:I

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LP8/f$j;->c:LP8/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, LP8/f$j;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, LP8/f$j;->e:Ljava/lang/Object;

    iget-object v2, p0, LP8/f$j;->f:Ljava/lang/Class;

    invoke-interface {p1, v0, v1, v2}, LP8/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
