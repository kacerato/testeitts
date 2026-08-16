.class public Lw6/b$e$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6/b$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw6/b$e$a;


# direct methods
.method public constructor <init>(Lw6/b$e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$e$a$d;->a:Lw6/b$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lw6/b$e$a$d;->a:Lw6/b$e$a;

    iget-object p1, p1, Lw6/b$e$a;->b:Lw6/b$e;

    iget-object p1, p1, Lw6/b$e;->b:Lw6/b;

    invoke-static {p1}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object p1

    iget-object p1, p1, Lx6/c;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw6/b$e$a$d;->a:Lw6/b$e$a;

    iget-object v0, v0, Lw6/b$e$a;->b:Lw6/b$e;

    iget-object v0, v0, Lw6/b$e;->b:Lw6/b;

    invoke-static {v0}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object v0

    iget-object v0, v0, Lx6/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lw6/b$e$a$d;->a:Lw6/b$e$a;

    iget-object v1, v1, Lw6/b$e$a;->b:Lw6/b$e;

    iget-object v1, v1, Lw6/b$e;->b:Lw6/b;

    invoke-static {v1}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object v1

    iget-object v1, v1, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->f(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V

    return-void
.end method
