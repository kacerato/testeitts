.class public LI3/a$u$a;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI3/a$u;
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
.field public final synthetic b:LI3/a$u;


# direct methods
.method public constructor <init>(LI3/a$u;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LI3/a$u$a;->b:LI3/a$u;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$a;

    invoke-direct {v0, p0}, LI3/a$u$a$a;-><init>(LI3/a$u$a;)V

    const-string v1, "Image"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$k;

    invoke-direct {v0, p0}, LI3/a$u$a$k;-><init>(LI3/a$u$a;)V

    const-string v1, "WebView"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$l;

    invoke-direct {v0, p0}, LI3/a$u$a$l;-><init>(LI3/a$u$a;)V

    const-string v1, "Rotate image"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$m;

    invoke-direct {v0, p0}, LI3/a$u$a$m;-><init>(LI3/a$u$a;)V

    const-string v1, "Sprite renderer"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$n;

    invoke-direct {v0, p0}, LI3/a$u$a$n;-><init>(LI3/a$u$a;)V

    const-string v1, "Shape"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$o;

    invoke-direct {v0, p0}, LI3/a$u$a$o;-><init>(LI3/a$u$a;)V

    const-string v1, "Text"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$p;

    invoke-direct {v0, p0}, LI3/a$u$a$p;-><init>(LI3/a$u$a;)V

    const-string v1, "Button"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$q;

    invoke-direct {v0, p0}, LI3/a$u$a$q;-><init>(LI3/a$u$a;)V

    const-string v1, "Check box"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$r;

    invoke-direct {v0, p0}, LI3/a$u$a$r;-><init>(LI3/a$u$a;)V

    const-string v1, "Radio group"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$b;

    invoke-direct {v0, p0}, LI3/a$u$a$b;-><init>(LI3/a$u$a;)V

    const-string v1, "Hover Button"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$c;

    invoke-direct {v0, p0}, LI3/a$u$a$c;-><init>(LI3/a$u$a;)V

    const-string v1, "Dynamic Joystick"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$d;

    invoke-direct {v0, p0}, LI3/a$u$a$d;-><init>(LI3/a$u$a;)V

    const-string v1, "Joystick"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$e;

    invoke-direct {v0, p0}, LI3/a$u$a$e;-><init>(LI3/a$u$a;)V

    const-string v1, "Driving wheel"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$f;

    invoke-direct {v0, p0}, LI3/a$u$a$f;-><init>(LI3/a$u$a;)V

    const-string v1, "SlideArea"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$g;

    invoke-direct {v0, p0}, LI3/a$u$a$g;-><init>(LI3/a$u$a;)V

    const-string v1, "Pinch detector"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$h;

    invoke-direct {v0, p0}, LI3/a$u$a$h;-><init>(LI3/a$u$a;)V

    const-string v1, "InputText"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$i;

    invoke-direct {v0, p0}, LI3/a$u$a$i;-><init>(LI3/a$u$a;)V

    const-string v1, "Progress bar"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a$j;

    invoke-direct {v0, p0}, LI3/a$u$a$j;-><init>(LI3/a$u$a;)V

    const-string v1, "Slide bar"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object v0, Ldd/b$b;->Tittle:Ldd/b$b;

    const-string v1, "More coming soon..."

    invoke-direct {p1, v0, v1}, Ldd/b;-><init>(Ldd/b$b;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
