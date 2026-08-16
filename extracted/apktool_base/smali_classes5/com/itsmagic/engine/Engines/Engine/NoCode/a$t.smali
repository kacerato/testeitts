.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->j(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$value",
            "val$data",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowSelect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/d;->A(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method

.method public getExtraTittle()Ljava/lang/String;
    .locals 1

    const-string v0, " (Object)"

    return-object v0
.end method

.method public getParent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$t;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->a(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    return-void
.end method
