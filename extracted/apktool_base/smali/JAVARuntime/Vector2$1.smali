.class LJAVARuntime/Vector2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Vector2;->genericInterface()LP8/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$thisClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$thisClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Vector2$1;->val$thisClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCls()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vector2$1;->val$thisClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Vector2$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInspector(Landroid/content/Context;LP8/k;Ljava/lang/String;LP8/q;)LC5/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "constructor",
            "tittle",
            "userPointer"
        }
    .end annotation

    invoke-interface {p2}, LP8/k;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJAVARuntime/Vector2;

    if-eqz p1, :cond_0

    new-instance p2, LC5/b;

    sget-object p4, LC5/b$a;->Vector:LC5/b$a;

    const/4 v0, 0x2

    new-array v0, v0, [LC5/b;

    invoke-direct {p2, p3, p4, v0}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object p3, p2, LC5/b;->p:[LC5/b;

    new-instance p4, LC5/b;

    new-instance v0, LJAVARuntime/Vector2$1$1;

    invoke-direct {v0, p0, p1}, LJAVARuntime/Vector2$1$1;-><init>(LJAVARuntime/Vector2$1;LJAVARuntime/Vector2;)V

    sget-object v1, LC5/b$a;->Float:LC5/b$a;

    const-string v2, "x"

    invoke-direct {p4, v0, v2, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 v0, 0x0

    aput-object p4, p3, v0

    iget-object p3, p2, LC5/b;->p:[LC5/b;

    new-instance p4, LC5/b;

    new-instance v0, LJAVARuntime/Vector2$1$2;

    invoke-direct {v0, p0, p1}, LJAVARuntime/Vector2$1$2;-><init>(LJAVARuntime/Vector2$1;LJAVARuntime/Vector2;)V

    const-string p1, "y"

    invoke-direct {p4, v0, p1, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const/4 p1, 0x1

    aput-object p4, p3, p1

    return-object p2

    :cond_0
    new-instance p1, LC5/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (null)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc

    invoke-direct {p1, p2, p3}, LC5/b;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method public isRestorable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(LP8/q;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    new-instance p1, LJAVARuntime/Vector2;

    invoke-direct {p1}, LJAVARuntime/Vector2;-><init>()V

    return-object p1
.end method

.method public restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variable",
            "userPointer"
        }
    .end annotation

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Vector2:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector2_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz p1, :cond_0

    new-instance p2, LJAVARuntime/Vector2;

    invoke-direct {p2, p1}, LJAVARuntime/Vector2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value",
            "userPointer"
        }
    .end annotation

    check-cast p2, LJAVARuntime/Vector2;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object p2, p2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p3, p1, p2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object p3

    :cond_0
    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    sget-object p3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Vector2:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object p2
.end method
