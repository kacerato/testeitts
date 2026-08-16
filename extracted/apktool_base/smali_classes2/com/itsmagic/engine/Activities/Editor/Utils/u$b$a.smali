.class public Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->a:Ld6/c;

    const/16 v1, 0x64

    const-string v2, "Done"

    invoke-virtual {v0, v1, v2}, Ld6/c;->p1(ILjava/lang/String;)V

    const-string v0, "WelcomeProject"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u;->l(Ljava/lang/String;)V

    invoke-static {}, Ld8/j;->v0()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v0, Lob/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;)V

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lob/b;-><init>(Lob/b$a;I)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void
.end method
