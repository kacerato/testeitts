.class LJAVARuntime/Matcap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Matcap;->genericInterface()LP8/l;
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

    iput-object p1, p0, LJAVARuntime/Matcap$1;->val$thisClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCls()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Matcap$1;->val$thisClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Matcap$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInspector(Landroid/content/Context;LP8/k;Ljava/lang/String;LP8/q;)LC5/b;
    .locals 1
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

    check-cast p1, LJAVARuntime/Matcap;

    new-instance p4, LC5/b;

    new-instance v0, LJAVARuntime/Matcap$1$1;

    invoke-direct {v0, p0, p3, p1, p2}, LJAVARuntime/Matcap$1$1;-><init>(LJAVARuntime/Matcap$1;Ljava/lang/String;LJAVARuntime/Matcap;LP8/k;)V

    const p1, 0x7f0c00fb

    const/4 p2, 0x0

    invoke-direct {p4, v0, p1, p2}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    return-object p4
.end method

.method public isRestorable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(LP8/q;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    new-instance p1, LJAVARuntime/Matcap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LJAVARuntime/Matcap;-><init>(LK8/a;)V

    return-object p1
.end method

.method public restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;
    .locals 2
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

    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Matcap:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {p1}, LJAVARuntime/Matcap;->fromJson(Ljava/lang/String;)LJAVARuntime/Matcap;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1
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

    check-cast p2, LJAVARuntime/Matcap;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {p2}, LJAVARuntime/Matcap;->toJson()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Matcap:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {p3, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object p3

    :cond_0
    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string p3, ""

    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Matcap:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {p2, p1, p3, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object p2
.end method
