.class public Lgb/e$a$d$g;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e$a$d;
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
.field public final synthetic b:Lgb/e$a$d;


# direct methods
.method public constructor <init>(Lgb/e$a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$d$g;->b:Lgb/e$a$d;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, Lgb/e$a$d$g$a;

    invoke-direct {v0, p0}, Lgb/e$a$d$g$a;-><init>(Lgb/e$a$d$g;)V

    const-string v1, "Change shader"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lgb/e$a$d$g$b;

    invoke-direct {v0, p0}, Lgb/e$a$d$g$b;-><init>(Lgb/e$a$d$g;)V

    const-string v1, "Change blending mode"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lgb/e$a$d$g$c;

    invoke-direct {v0, p0}, Lgb/e$a$d$g$c;-><init>(Lgb/e$a$d$g;)V

    const-string v1, "Change UV to world"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lgb/e$a$d$g$d;

    invoke-direct {v0, p0}, Lgb/e$a$d$g$d;-><init>(Lgb/e$a$d$g;)V

    const-string v1, "Change UV to vertex"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lgb/e$a$d$g$e;

    invoke-direct {v0, p0}, Lgb/e$a$d$g$e;-><init>(Lgb/e$a$d$g;)V

    const-string v1, "Enable double sided"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lgb/e$a$d$g$f;

    invoke-direct {v0, p0}, Lgb/e$a$d$g$f;-><init>(Lgb/e$a$d$g;)V

    const-string v1, "Disable double sided"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lgb/e$a$d$g$g;

    invoke-direct {v0, p0}, Lgb/e$a$d$g$g;-><init>(Lgb/e$a$d$g;)V

    const-string v1, "Change custom roughness value"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lgb/e$a$d$g$h;

    invoke-direct {v0, p0}, Lgb/e$a$d$g$h;-><init>(Lgb/e$a$d$g;)V

    const-string v1, "Change custom metallic value"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lgb/e$a$d$g$i;

    invoke-direct {v0, p0}, Lgb/e$a$d$g$i;-><init>(Lgb/e$a$d$g;)V

    const-string v1, "Change wind effect value"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
