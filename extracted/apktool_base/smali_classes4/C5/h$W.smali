.class public LC5/h$W;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->d(Landroid/view/View;Landroid/content/Context;LC5/b;Landroid/widget/TextView;Ljava/lang/Runnable;)V
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
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:LC5/b;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;LC5/b;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$textView",
            "val$entry",
            "val$context",
            "val$updateText"
        }
    .end annotation

    iput-object p1, p0, LC5/h$W;->b:Landroid/widget/TextView;

    iput-object p2, p0, LC5/h$W;->c:LC5/b;

    iput-object p3, p0, LC5/h$W;->d:Landroid/content/Context;

    iput-object p4, p0, LC5/h$W;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance p3, LC5/h$W$a;

    invoke-direct {p3, p0}, LC5/h$W$a;-><init>(LC5/h$W;)V

    const-string p4, "Remove"

    invoke-direct {p1, p4, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p3, LC5/h$W$b;

    invoke-direct {p3, p0}, LC5/h$W$b;-><init>(LC5/h$W;)V

    const-string p4, "From Project"

    invoke-direct {p1, p4, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p3, LC5/h$W$c;

    invoke-direct {p3, p0}, LC5/h$W$c;-><init>(LC5/h$W;)V

    const-string p4, "Import from Android"

    invoke-direct {p1, p4, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p3, LC5/h$W$d;

    invoke-direct {p3, p0}, LC5/h$W$d;-><init>(LC5/h$W;)V

    const-string p4, "Show in files"

    invoke-direct {p1, p4, p3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, LC5/b;->o:Ljava/lang/String;

    const-string p2, ".mesh"

    invoke-static {p1, p2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LC5/h$W$e;

    invoke-direct {p1, p0}, LC5/h$W$e;-><init>(LC5/h$W;)V

    new-instance p2, Ldd/b;

    const-string p3, "Primitives"

    invoke-direct {p2, p3, p1}, Ldd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
