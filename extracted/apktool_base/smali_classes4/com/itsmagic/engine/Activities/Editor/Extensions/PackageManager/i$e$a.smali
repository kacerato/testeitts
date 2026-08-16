.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->v1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;

    move-result-object v0

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;->onCancel()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    invoke-interface {p1}, LZ6/c$g;->dismiss()V

    return-void
.end method

.method public b(LZ6/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, LZ6/c$g;->dismiss()V

    return-void
.end method
