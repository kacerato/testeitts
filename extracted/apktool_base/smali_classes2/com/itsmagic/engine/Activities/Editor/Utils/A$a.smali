.class public Lcom/itsmagic/engine/Activities/Editor/Utils/A$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/A;->b(Landroid/content/Context;Landroid/view/View;LG8/a;Lcom/itsmagic/engine/Activities/Editor/Utils/B;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/B;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/A$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v2, 0x43e10000    # 450.0f

    const-string v3, "https://itsmagic.com.br/index.html"

    invoke-static {v3, p1, v0, v1, v2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/A$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/B;

    if-eqz p1, :cond_1

    const-string v0, "Node graph"

    invoke-interface {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/B;->onSelected(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
