.class public Laa/e$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laa/e;->z(Laa/c;Z)Laa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Laa/a;

.field public final synthetic c:Laa/c;

.field public final synthetic d:Laa/e;


# direct methods
.method public constructor <init>(Laa/e;Laa/a;Laa/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$hit",
            "val$ray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Laa/e$i;->d:Laa/e;

    iput-object p2, p0, Laa/e$i;->b:Laa/a;

    iput-object p3, p0, Laa/e$i;->c:Laa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, LJAVARuntime/GizmoPath;

    invoke-direct {v0}, LJAVARuntime/GizmoPath;-><init>()V

    iget-object v1, p0, Laa/e$i;->b:Laa/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laa/e$i;->d:Laa/e;

    invoke-static {v1}, Laa/e;->d(Laa/e;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laa/e$i;->d:Laa/e;

    invoke-static {v1}, Laa/e;->e(Laa/e;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    :goto_0
    iget-object v1, p0, Laa/e$i;->b:Laa/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Laa/e$i;->c:Laa/c;

    iget-object v1, v1, Laa/c;->b:Laa/d;

    iget-object v1, v1, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v1

    iget-object v2, p0, Laa/e$i;->b:Laa/a;

    invoke-virtual {v2}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Laa/e;->f()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Laa/e$i;->c:Laa/c;

    iget-object v2, v2, Laa/c;->b:Laa/d;

    iget-object v2, v2, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Laa/e$i;->c:Laa/c;

    iget v2, v2, Laa/c;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v3, p0, Laa/e$i;->c:Laa/c;

    iget-object v3, v3, Laa/c;->b:Laa/d;

    iget-object v3, v3, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Laa/e$i;->c:Laa/c;

    iget v3, v3, Laa/c;->c:F

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Laa/e$i;->c:Laa/c;

    iget-object v1, v1, Laa/c;->b:Laa/d;

    iget-object v1, v1, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v3, p0, Laa/e$i;->c:Laa/c;

    iget-object v3, v3, Laa/c;->b:Laa/d;

    iget-object v3, v3, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v3, 0x497423f0    # 999999.0f

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Laa/e$i;->c:Laa/c;

    iget-object v1, v1, Laa/c;->b:Laa/d;

    iget-object v1, v1, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    :goto_2
    invoke-virtual {v0}, LJAVARuntime/GizmoPath;->apply()V

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method
