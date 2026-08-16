.class public Lb9/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb9/b;->b(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Landroid/content/Context;Lorg/luaj/vm2/Globals;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/luaj/vm2/LuaValue;

.field public final synthetic b:LP8/l;

.field public final synthetic c:Lb9/b$f;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/LuaValue;LP8/l;Lb9/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$value",
            "val$aClass",
            "val$attribute"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb9/b$d;->a:Lorg/luaj/vm2/LuaValue;

    iput-object p2, p0, Lb9/b$d;->b:LP8/l;

    iput-object p3, p0, Lb9/b$d;->c:Lb9/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb9/b$d;->a:Lorg/luaj/vm2/LuaValue;

    iget-object v1, p0, Lb9/b$d;->b:LP8/l;

    iget-object v1, v1, LP8/l;->a:LP8/m;

    invoke-interface {v1}, LP8/m;->getCls()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->coerce(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lb9/b$d;->c:Lb9/b$f;

    invoke-static {p1}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb9/b$f;->e(Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method
