.class public Li5/a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/a$a;->a(IIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Li5/a$a;


# direct methods
.method public constructor <init>(Li5/a$a;IIFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$executed",
            "val$total",
            "val$progress",
            "val$tda"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Li5/a$a$b;->f:Li5/a$a;

    iput p2, p0, Li5/a$a$b;->b:I

    iput p3, p0, Li5/a$a$b;->c:I

    iput p4, p0, Li5/a$a$b;->d:F

    iput-object p5, p0, Li5/a$a$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Li5/a$a$b;->f:Li5/a$a;

    iget-object v0, v0, Li5/a$a;->a:Li5/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Li5/a$a$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Li5/a$a$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Li5/a;->r1(Li5/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Li5/a$a$b;->f:Li5/a$a;

    iget-object v0, v0, Li5/a$a;->a:Li5/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Li5/a$a$b;->d:F

    const/4 v3, 0x1

    invoke-static {v2, v3}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Li5/a;->s1(Li5/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Li5/a$a$b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li5/a$a$b;->f:Li5/a$a;

    iget-object v0, v0, Li5/a$a;->a:Li5/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li5/a$a$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Li5/a;->t1(Li5/a;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li5/a$a$b;->f:Li5/a$a;

    iget-object v0, v0, Li5/a$a;->a:Li5/a;

    const-string v1, ""

    invoke-static {v0, v1}, Li5/a;->t1(Li5/a;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Li5/a$a$b;->f:Li5/a$a;

    iget-object v0, v0, Li5/a$a;->a:Li5/a;

    invoke-static {v0}, Li5/a;->q1(Li5/a;)Lorg/ITsMagic/Atlas/e$c;

    move-result-object v0

    iget v1, p0, Li5/a$a$b;->b:I

    iget v2, p0, Li5/a$a$b;->c:I

    iget v3, p0, Li5/a$a$b;->d:F

    iget-object v4, p0, Li5/a$a$b;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/ITsMagic/Atlas/e$c;->a(IIFLjava/lang/String;)V

    return-void
.end method
