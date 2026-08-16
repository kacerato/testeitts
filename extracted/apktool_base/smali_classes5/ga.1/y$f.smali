.class public Lga/y$f;
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
        "Laa/d;",
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

    check-cast p1, Laa/d;

    invoke-virtual {p0, p1}, Lga/y$f;->b(Laa/d;)V

    return-void
.end method

.method public b(Laa/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p1, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method
