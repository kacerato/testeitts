.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->d(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lga/b;->c:Lga/b;

    invoke-virtual {v1}, Lga/b;->h()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->double_value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;

    invoke-static {p1}, Lga/m;->M(Ljava/lang/Object;)Lga/b;

    move-result-object p1

    invoke-virtual {p1}, Lga/b;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->text:Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$q;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->a(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    return-void
.end method
