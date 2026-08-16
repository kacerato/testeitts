.class public Lw6/b$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw6/b;


# direct methods
.method public constructor <init>(Lw6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$d;->b:Lw6/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lw6/b$d;->b:Lw6/b;

    invoke-static {p1}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lw6/b$d;->b:Lw6/b;

    invoke-static {p1}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object p1

    iget-object p1, p1, Lx6/c;->a:Ljava/lang/String;

    new-instance v0, Lw6/b$d$a;

    invoke-direct {v0, p0}, Lw6/b$d$a;-><init>(Lw6/b$d;)V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->g0(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/ProjectController/a$f;)V

    return-void
.end method
