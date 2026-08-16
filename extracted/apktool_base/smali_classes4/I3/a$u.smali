.class public LI3/a$u;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI3/a;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$parent"
        }
    .end annotation

    iput-object p1, p0, LI3/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$a;

    invoke-direct {v0, p0}, LI3/a$u$a;-><init>(LI3/a$u;)V

    const-string v1, "Widgets"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$b;

    invoke-direct {v0, p0}, LI3/a$u$b;-><init>(LI3/a$u;)V

    const-string v1, "Scroll view"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$c;

    invoke-direct {v0, p0}, LI3/a$u$c;-><init>(LI3/a$u;)V

    const-string v1, "Layouts"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$d;

    invoke-direct {v0, p0}, LI3/a$u$d;-><init>(LI3/a$u;)V

    const-string v1, "Controller"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LI3/a$u$e;

    invoke-direct {v0, p0}, LI3/a$u$e;-><init>(LI3/a$u;)V

    const-string v1, "3D UI"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    sget-object v0, Ldd/b$b;->Tittle:Ldd/b$b;

    const-string v1, "More coming soon..."

    invoke-direct {p1, v0, v1}, Ldd/b;-><init>(Ldd/b$b;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
