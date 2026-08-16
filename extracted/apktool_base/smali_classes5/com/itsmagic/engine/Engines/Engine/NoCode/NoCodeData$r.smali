.class public abstract Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "r"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "listener"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public abstract b(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v1, ""

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;->a()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;->b(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$r;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;->a()V

    :cond_0
    return-void
.end method
