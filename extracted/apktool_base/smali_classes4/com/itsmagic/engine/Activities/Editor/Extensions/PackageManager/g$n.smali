.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->G1(LJAVARuntime/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LJAVARuntime/Runnable;


# direct methods
.method public constructor <init>(LJAVARuntime/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$n;->b:LJAVARuntime/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->A1()LM7/b;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->A1()LM7/b;

    move-result-object v1

    invoke-virtual {v1}, LM7/b;->y()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LM7/b;->L(IZ)LM7/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$n;->b:LJAVARuntime/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LJAVARuntime/Runnable;->run()V

    :cond_0
    return-void
.end method
