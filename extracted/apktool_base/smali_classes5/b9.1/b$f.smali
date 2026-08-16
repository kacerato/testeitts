.class public Lb9/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/luaj/vm2/Globals;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/luaj/vm2/Globals;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "globals"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb9/b$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lb9/b$f;->b:Lorg/luaj/vm2/Globals;

    return-void
.end method

.method public static synthetic a(Lb9/b$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb9/b$f;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/b$f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-object v0, p0, Lb9/b$f;->b:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lb9/b$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lb9/b$f;->a:Ljava/lang/String;

    return-void
.end method

.method public e(Lorg/luaj/vm2/LuaValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    iget-object v0, p0, Lb9/b$f;->b:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lb9/b$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method
