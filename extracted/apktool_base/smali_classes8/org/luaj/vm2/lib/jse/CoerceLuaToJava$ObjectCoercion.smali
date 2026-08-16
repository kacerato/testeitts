.class final Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectCoercion"
.end annotation


# instance fields
.field final targetType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public coerce(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    :cond_6
    return-object v1
.end method

.method public score(Lorg/luaj/vm2/LuaValue;)I
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$String:Ljava/lang/Class;

    :cond_2
    invoke-static {p1, v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_3
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isint()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez p1, :cond_5

    const-string p1, "java.lang.Integer"

    invoke-static {p1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Integer:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    sget-object p1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Double:Ljava/lang/Class;

    if-nez p1, :cond_5

    const-string p1, "java.lang.Double"

    invoke-static {p1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Double:Ljava/lang/Class;

    :cond_5
    :goto_1
    invoke-static {v0, p1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_7
    invoke-static {p1, v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    return p1

    :cond_8
    sget p1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_NULL_VALUE:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ObjectCoercion("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;->targetType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
