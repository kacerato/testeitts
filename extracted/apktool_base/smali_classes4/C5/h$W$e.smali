.class public LC5/h$W$e;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/h$W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LC5/h$W;


# direct methods
.method public constructor <init>(LC5/h$W;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC5/h$W$e;->b:LC5/h$W;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$d;

    invoke-direct {v0, p0}, LC5/h$W$e$d;-><init>(LC5/h$W$e;)V

    const-string v1, "Cube Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$e;

    invoke-direct {v0, p0}, LC5/h$W$e$e;-><init>(LC5/h$W$e;)V

    const-string v1, "Sphere Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$f;

    invoke-direct {v0, p0}, LC5/h$W$e$f;-><init>(LC5/h$W$e;)V

    const-string v1, "Sphere LowPoly Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$g;

    invoke-direct {v0, p0}, LC5/h$W$e$g;-><init>(LC5/h$W$e;)V

    const-string v1, "Cone Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$h;

    invoke-direct {v0, p0}, LC5/h$W$e$h;-><init>(LC5/h$W$e;)V

    const-string v1, "Cylinder Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$i;

    invoke-direct {v0, p0}, LC5/h$W$e$i;-><init>(LC5/h$W$e;)V

    const-string v1, "Circle Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$j;

    invoke-direct {v0, p0}, LC5/h$W$e$j;-><init>(LC5/h$W$e;)V

    const-string v1, "Torus Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$k;

    invoke-direct {v0, p0}, LC5/h$W$e$k;-><init>(LC5/h$W$e;)V

    const-string v1, "Square Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$l;

    invoke-direct {v0, p0}, LC5/h$W$e$l;-><init>(LC5/h$W$e;)V

    const-string v1, "Square90 Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$a;

    invoke-direct {v0, p0}, LC5/h$W$e$a;-><init>(LC5/h$W$e;)V

    const-string v1, "Capsule Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$b;

    invoke-direct {v0, p0}, LC5/h$W$e$b;-><init>(LC5/h$W$e;)V

    const-string v1, "HalfCapsule Primitive"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$W$e$c;

    invoke-direct {v0, p0}, LC5/h$W$e$c;-><init>(LC5/h$W$e;)V

    const-string v1, "Render target"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
