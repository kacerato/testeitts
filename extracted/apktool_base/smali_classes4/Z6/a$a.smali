.class public LZ6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/a;->v1(Ljava/lang/String;Ljava/lang/String;LZ6/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:LZ6/a$d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFLZ6/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$tittle",
            "val$finalDescription",
            "val$w",
            "val$h",
            "val$showListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ6/a$a;->a:Ljava/lang/String;

    iput-object p2, p0, LZ6/a$a;->b:Ljava/lang/String;

    iput p3, p0, LZ6/a$a;->c:F

    iput p4, p0, LZ6/a$a;->d:F

    iput-object p5, p0, LZ6/a$a;->e:LZ6/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v0, LZ6/a;

    iget-object v1, p0, LZ6/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, LZ6/a$a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LZ6/a;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/a$a;)V

    invoke-static {v0, p1}, LZ6/a;->p1(LZ6/a;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget p1, p0, LZ6/a$a;->c:F

    iget v1, p0, LZ6/a$a;->d:F

    invoke-static {v0, p1, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-static {v0, p1}, LZ6/a;->q1(LZ6/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget-object v1, p0, LZ6/a$a;->e:LZ6/a$d;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, LZ6/a$d;->a(LZ6/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_0
    return-void
.end method
