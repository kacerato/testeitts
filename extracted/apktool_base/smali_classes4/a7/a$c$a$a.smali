.class public La7/a$c$a$a;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/a$c$a;->click(Landroid/view/View;)V
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
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:La7/a$c$a;


# direct methods
.method public constructor <init>(La7/a$c$a;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$view"
        }
    .end annotation

    iput-object p1, p0, La7/a$c$a$a;->c:La7/a$c$a;

    iput-object p2, p0, La7/a$c$a$a;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance p2, La7/a$c$a$a$a;

    invoke-direct {p2, p0}, La7/a$c$a$a$a;-><init>(La7/a$c$a$a;)V

    const-string v0, "Delete"

    invoke-direct {p1, v0, p2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, La7/a$c$a$a$b;

    invoke-direct {p2, p0}, La7/a$c$a$a$b;-><init>(La7/a$c$a$a;)V

    const-string v0, "Revert"

    invoke-direct {p1, v0, p2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
