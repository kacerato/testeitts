.class public Ld7/a$i$c$b;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a$i$c;
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
.field public final synthetic b:Ld7/a$i$c;


# direct methods
.method public constructor <init>(Ld7/a$i$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$b;->b:Ld7/a$i$c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    const-string v0, "WORLD SETTINGS"

    invoke-direct {p1, v0}, Ldd/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$c;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$c;-><init>(Ld7/a$i$c$b;)V

    const v1, 0x7f070222

    const-string v2, "Physics"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$d;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$d;-><init>(Ld7/a$i$c$b;)V

    const-string v3, "More settings"

    invoke-direct {p1, v1, v3, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    const-string v0, "PROJECT SETTINGS"

    invoke-direct {p1, v0}, Ldd/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$e;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$e;-><init>(Ld7/a$i$c$b;)V

    const-string v4, "Graphics"

    invoke-direct {p1, v1, v4, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$f;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$f;-><init>(Ld7/a$i$c$b;)V

    const-string v5, "Decals"

    invoke-direct {p1, v1, v5, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$g;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$g;-><init>(Ld7/a$i$c$b;)V

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$h;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$h;-><init>(Ld7/a$i$c$b;)V

    invoke-direct {p1, v1, v3, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    const-string v0, "EDITOR SETTINGS"

    invoke-direct {p1, v0}, Ldd/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$i;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$i;-><init>(Ld7/a$i$c$b;)V

    invoke-direct {p1, v1, v4, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$j;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$j;-><init>(Ld7/a$i$c$b;)V

    const-string v2, "3D Editor"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$k;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$k;-><init>(Ld7/a$i$c$b;)V

    const-string v2, "Behaviours"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$a;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$a;-><init>(Ld7/a$i$c$b;)V

    const-string v2, "Theme"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Ld7/a$i$c$b$b;

    invoke-direct {v0, p0}, Ld7/a$i$c$b$b;-><init>(Ld7/a$i$c$b;)V

    invoke-direct {p1, v1, v3, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
