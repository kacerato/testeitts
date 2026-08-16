.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f$a;
.super Lw5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->v(Ljava/io/File;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;

    invoke-direct {p0}, Lw5/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;->y:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Lh7/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh7/d;->o(Ljava/lang/String;)V

    return-void
.end method
