.class public Lga/y$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga/y$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lga/y$i<",
        "Laa/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Laa/c;

    invoke-virtual {p0, p1}, Lga/y$g;->b(Laa/c;)V

    return-void
.end method

.method public b(Laa/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p1, Laa/c;->b:Laa/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Laa/d;

    invoke-direct {v0}, Laa/d;-><init>()V

    iput-object v0, p1, Laa/c;->b:Laa/d;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p1, Laa/c;->b:Laa/d;

    iget-object v0, v0, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    iput v1, p1, Laa/c;->c:F

    const/4 v0, 0x0

    iput-object v0, p1, Laa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    return-void
.end method
