.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

.field public final synthetic c:Lga/H;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lga/H;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$value",
            "val$data",
            "val$type",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->c:Lga/H;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowSelect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LJAVARuntime/Component;

    if-eqz v1, :cond_0

    check-cast v0, LJAVARuntime/Component;

    invoke-virtual {v0}, LJAVARuntime/Component;->getEngineComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllowObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraTittle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTittle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->c:Lga/H;

    invoke-static {v0}, Lga/a;->d(Lga/H;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public match(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->c:Lga/H;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p1

    invoke-static {v0, p1}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$a;->d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->a(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    return-void
.end method
