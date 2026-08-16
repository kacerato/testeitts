.class public LJ6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ6/a;->A1(IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$xPixel",
            "val$yPixel",
            "val$text",
            "val$className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, LJ6/a$a;->b:I

    iput p2, p0, LJ6/a$a;->c:I

    iput-object p3, p0, LJ6/a$a;->d:Ljava/lang/String;

    iput-object p4, p0, LJ6/a$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0x226

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x190

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v1

    iget v2, p0, LJ6/a$a;->b:I

    invoke-static {v2}, LN7/c;->j(I)F

    move-result v2

    iget v3, p0, LJ6/a$a;->c:I

    invoke-static {v3}, LN7/c;->i(I)F

    move-result v3

    new-instance v4, LJ6/a;

    iget-object v5, p0, LJ6/a$a;->d:Ljava/lang/String;

    iget-object v6, p0, LJ6/a$a;->e:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, LJ6/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v2, v3, v0, v1}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-static {v4, v0}, LJ6/a;->p1(LJ6/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    return-void
.end method
