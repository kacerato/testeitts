.class public Lb9/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb9/b;->b(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Landroid/content/Context;Lorg/luaj/vm2/Globals;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/luaj/vm2/Globals;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lb9/b$f;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/Globals;Ljava/lang/String;Lb9/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$globals",
            "val$name",
            "val$attribute"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb9/b$a;->a:Lorg/luaj/vm2/Globals;

    iput-object p2, p0, Lb9/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lb9/b$a;->c:Lb9/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, Lb9/b$a;->c:Lb9/b$f;

    invoke-virtual {v0}, Lb9/b$f;->c()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lb9/b$a$a;

    invoke-direct {v0, p0, p1}, Lb9/b$a$a;-><init>(Lb9/b$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
