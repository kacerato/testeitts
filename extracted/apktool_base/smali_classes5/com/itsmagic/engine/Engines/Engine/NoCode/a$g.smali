.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->p(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;


# direct methods
.method public constructor <init>(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$component",
            "val$vector",
            "val$data",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->a:I

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->a:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    :goto_0
    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->a:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/a$g;->d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/a;->a(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)V

    :cond_2
    return-void
.end method
