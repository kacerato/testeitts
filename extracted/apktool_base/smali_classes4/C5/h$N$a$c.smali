.class public LC5/h$N$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/h$N$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$N$a;


# direct methods
.method public constructor <init>(LC5/h$N$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/h$N$a$c;->a:LC5/h$N$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LC5/h$N$a$c;->a:LC5/h$N$a;

    iget-object p1, p1, LC5/h$N$a;->b:LC5/h$N;

    iget-object p1, p1, LC5/h$N;->e:Lcom/itsmagic/engine/Engines/Utils/Variable;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, Lw5/k;

    iget-object v1, p0, LC5/h$N$a$c;->a:LC5/h$N$a;

    iget-object v1, v1, LC5/h$N$a;->b:LC5/h$N;

    iget-object v1, v1, LC5/h$N;->e:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lw5/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    :cond_0
    return-void
.end method
