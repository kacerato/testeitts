.class public Lj5/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/a$a;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj5/a$a;


# direct methods
.method public constructor <init>(Lj5/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lj5/a$a$a;->b:Lj5/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lj5/a$a$a;->b:Lj5/a$a;

    iget-object v0, v0, Lj5/a$a;->a:Lj5/a;

    invoke-static {v0}, Lj5/a;->I(Lj5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj5/a$a$a;->b:Lj5/a$a;

    iget-object v0, v0, Lj5/a$a;->a:Lj5/a;

    invoke-static {v0}, Lj5/a;->I(Lj5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lj5/a$a$a;->b:Lj5/a$a;

    iget-object v1, v1, Lj5/a$a;->a:Lj5/a;

    invoke-static {v1}, Lj5/a;->I(Lj5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->y1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NO HPOP"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
