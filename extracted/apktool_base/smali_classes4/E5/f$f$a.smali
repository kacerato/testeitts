.class public LE5/f$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/f$f;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/text/Editable;

.field public final synthetic c:LE5/f$f;


# direct methods
.method public constructor <init>(LE5/f$f;Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/f$f$a;->c:LE5/f$f;

    iput-object p2, p0, LE5/f$f$a;->b:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, LE5/f$f$a;->b:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, LE5/f$f$a;->c:LE5/f$f;

    iget-object v1, v1, LE5/f$f;->e:LE5/f$i;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, LE5/f$i;->a(F)F

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LE5/f$f$a;->c:LE5/f$f;

    iget-object v1, v1, LE5/f$f;->d:LC5/b;

    iget-object v1, v1, LC5/b;->b:LD5/h;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v3, "temp"

    invoke-direct {v2, v3, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    invoke-interface {v1, v2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    iget-object v1, p0, LE5/f$f$a;->c:LE5/f$f;

    iget-object v1, v1, LE5/f$f;->e:LE5/f$i;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, LE5/f$i;->b(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
