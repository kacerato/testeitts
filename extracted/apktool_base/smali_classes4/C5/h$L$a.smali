.class public LC5/h$L$a;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h$L;->onLongClick(Landroid/view/View;)Z
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
.field public final synthetic b:LC5/h$L;


# direct methods
.method public constructor <init>(LC5/h$L;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC5/h$L$a;->b:LC5/h$L;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Ldd/b;

    iget-object v1, p1, LC5/h$L;->b:LC5/b;

    iget-object v1, v1, LC5/b;->n:LC5/b$a;

    sget-object v2, LC5/b$a;->UIStyle:LC5/b$a;

    if-ne v1, v2, :cond_0

    const-string v1, "Select style"

    goto :goto_0

    :cond_0
    const-string v1, "Select texture"

    :goto_0
    new-instance v3, LC5/h$L$a$a;

    invoke-direct {v3, p0}, LC5/h$L$a$a;-><init>(LC5/h$L$a;)V

    invoke-direct {v0, v1, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, LC5/h$L;->b:LC5/b;

    iget-object v0, v0, LC5/b;->n:LC5/b$a;

    sget-object v1, LC5/b$a;->UITexture:LC5/b$a;

    if-ne v0, v1, :cond_1

    new-instance v0, Ldd/b;

    new-instance v1, LC5/h$L$a$b;

    invoke-direct {v1, p0}, LC5/h$L$a$b;-><init>(LC5/h$L$a;)V

    const-string v3, "Select from gallery"

    invoke-direct {v0, v3, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p1, LC5/h$L;->b:LC5/b;

    iget-object v0, v0, LC5/b;->n:LC5/b$a;

    if-eq v0, v2, :cond_2

    new-instance v0, Ldd/b;

    new-instance v1, LC5/h$L$a$c;

    invoke-direct {v1, p0}, LC5/h$L$a$c;-><init>(LC5/h$L$a;)V

    const-string v3, "Import from Android"

    invoke-direct {v0, v3, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    invoke-direct {v0}, Ldd/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p1, LC5/h$L;->e:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v1, "Remove texture"

    const-string v3, "Remove style"

    const-string v4, "Show texture in files"

    const-string v5, "Show style in files"

    const-string v6, "Open texture settings"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, LC5/h$L;->b:LC5/b;

    iget-object v0, v0, LC5/b;->n:LC5/b$a;

    if-eq v0, v2, :cond_3

    new-instance v0, Ldd/b;

    new-instance v7, LC5/h$L$a$d;

    invoke-direct {v7, p0}, LC5/h$L$a$d;-><init>(LC5/h$L$a;)V

    invoke-direct {v0, v6, v7}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Ldd/b;

    new-instance v6, LC5/h$L$a$e;

    invoke-direct {v6, p0}, LC5/h$L$a$e;-><init>(LC5/h$L$a;)V

    const-string v7, "Open style settings"

    invoke-direct {v0, v7, v6}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Ldd/b;

    iget-object v6, p1, LC5/h$L;->b:LC5/b;

    iget-object v6, v6, LC5/b;->n:LC5/b$a;

    if-ne v6, v2, :cond_4

    move-object v4, v5

    :cond_4
    new-instance v5, LC5/h$L$a$f;

    invoke-direct {v5, p0}, LC5/h$L$a$f;-><init>(LC5/h$L$a;)V

    invoke-direct {v0, v4, v5}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    iget-object p1, p1, LC5/h$L;->b:LC5/b;

    iget-object p1, p1, LC5/b;->n:LC5/b$a;

    if-ne p1, v2, :cond_5

    move-object v1, v3

    :cond_5
    new-instance p1, LC5/h$L$a$g;

    invoke-direct {p1, p0}, LC5/h$L$a$g;-><init>(LC5/h$L$a;)V

    invoke-direct {v0, v1, p1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v0, Ldd/b;

    iget-object v7, p1, LC5/h$L;->b:LC5/b;

    iget-object v7, v7, LC5/b;->n:LC5/b$a;

    if-ne v7, v2, :cond_7

    move-object v4, v5

    :cond_7
    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, LC5/h$L;->b:LC5/b;

    iget-object v0, v0, LC5/b;->n:LC5/b$a;

    if-eq v0, v2, :cond_8

    new-instance v0, Ldd/b;

    invoke-direct {v0, v6, v5}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v0, Ldd/b;

    iget-object p1, p1, LC5/h$L;->b:LC5/b;

    iget-object p1, p1, LC5/b;->n:LC5/b$a;

    if-ne p1, v2, :cond_9

    move-object v1, v3

    :cond_9
    invoke-direct {v0, v1, v5}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method
