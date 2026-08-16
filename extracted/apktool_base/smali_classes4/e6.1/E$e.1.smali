.class public Le6/E$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/E;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

.field public final synthetic b:Le6/E;


# direct methods
.method public constructor <init>(Le6/E;Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$raw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le6/E$e;->b:Le6/E;

    iput-object p2, p0, Le6/E$e;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Le6/E$e;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;->value:F

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v0
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

    iget-object v0, p0, Le6/E$e;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawNumberNode;->value:F

    iget-object p1, p0, Le6/E$e;->b:Le6/E;

    invoke-static {p1}, Le6/E;->v(Le6/E;)Le6/X;

    move-result-object p1

    invoke-virtual {p1}, Le6/X;->i0()V

    :cond_0
    return-void
.end method
