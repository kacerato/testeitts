.class public Lw6/b$c$a;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$c;->click(Landroid/view/View;)V
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
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lw6/b$c;


# direct methods
.method public constructor <init>(Lw6/b$c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$projectName"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$c$a;->c:Lw6/b$c;

    iput-object p2, p0, Lw6/b$c$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance p2, Lw6/b$c$a$a;

    invoke-direct {p2, p0}, Lw6/b$c$a$a;-><init>(Lw6/b$c$a;)V

    const v0, 0x7f070097

    const-string v1, "Delete project"

    invoke-direct {p1, v0, v1, p2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, Lw6/b$c$a$b;

    invoke-direct {p2, p0}, Lw6/b$c$a$b;-><init>(Lw6/b$c$a;)V

    const v0, 0x7f07022a

    const-string v1, "Delete vulkan cache"

    invoke-direct {p1, v0, v1, p2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, Lw6/b$c$a$c;

    invoke-direct {p2, p0}, Lw6/b$c$a$c;-><init>(Lw6/b$c$a;)V

    const v0, 0x7f0700b6

    const-string v1, "Delete textures cache"

    invoke-direct {p1, v0, v1, p2}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
