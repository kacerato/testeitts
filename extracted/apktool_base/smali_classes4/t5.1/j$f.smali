.class public Lt5/j$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/j;->D1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt5/j;


# direct methods
.method public constructor <init>(Lt5/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lt5/j$f;->b:Lt5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt5/j$f;->b:Lt5/j;

    invoke-static {v0}, Lt5/j;->v1(Lt5/j;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v0

    iget-object v1, p0, Lt5/j$f;->b:Lt5/j;

    invoke-static {v1}, Lt5/j;->z1(Lt5/j;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->v(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lt5/j$f;->b:Lt5/j;

    new-instance v1, Lt5/j$f$a;

    invoke-direct {v1, p0}, Lt5/j$f$a;-><init>(Lt5/j$f;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U0(Ljava/lang/Runnable;)V

    return-void
.end method
