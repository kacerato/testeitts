.class public Lh7/e$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/e$c$a;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh7/e$c$a;


# direct methods
.method public constructor <init>(Lh7/e$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lh7/e$c$a$a;->b:Lh7/e$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lh7/e$c$a$a;->b:Lh7/e$c$a;

    iget-object v0, v0, Lh7/e$c$a;->a:Lh7/e$c;

    iget-object v0, v0, Lh7/e$c;->e:Lh7/e;

    invoke-static {v0}, Lh7/e;->a(Lh7/e;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh7/e$c$a$a;->b:Lh7/e$c$a;

    iget-object v0, v0, Lh7/e$c$a;->a:Lh7/e$c;

    iget-object v0, v0, Lh7/e$c;->e:Lh7/e;

    invoke-static {v0}, Lh7/e;->a(Lh7/e;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    instance-of v1, v0, Lj7/f;

    if-eqz v1, :cond_0

    check-cast v0, Lj7/f;

    iget-object v1, p0, Lh7/e$c$a$a;->b:Lh7/e$c$a;

    iget-object v1, v1, Lh7/e$c$a;->a:Lh7/e$c;

    iget-object v2, v1, Lh7/e$c;->e:Lh7/e;

    iget-object v2, v2, Lh7/e;->d:Ln7/f;

    iget-object v1, v1, Lh7/e$c;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v1, v1

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lh7/e$c$a$a;->b:Lh7/e$c$a;

    iget-object v4, v4, Lh7/e$c$a;->a:Lh7/e$c;

    iget-object v4, v4, Lh7/e$c;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int v4, v4

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    sub-int/2addr v4, v3

    invoke-interface {v2, v0, v1, v4}, Ln7/f;->e(Lj7/b;II)V

    :cond_0
    return-void
.end method
