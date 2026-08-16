.class public Lw5/j$M$b$e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/j$M$b$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$M$b$e;


# direct methods
.method public constructor <init>(Lw5/j$M$b$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$M$b$e$d;->a:Lw5/j$M$b$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lw5/j$M$b$e$d;->a:Lw5/j$M$b$e;

    iget-object p1, p1, Lw5/j$M$b$e;->b:Lw5/j$M$b;

    iget-object p1, p1, Lw5/j$M$b;->b:Lw5/j$M;

    iget-object v0, p1, Lw5/j$M;->b:Landroid/content/Context;

    iget-object v1, p1, Lw5/j$M;->c:Ljava/lang/String;

    new-instance v2, Lw5/j$M$b$e$d$a;

    invoke-direct {v2, p0}, Lw5/j$M$b$e$d$a;-><init>(Lw5/j$M$b$e$d;)V

    const-string v4, "SceneCrackVFX"

    const-string v5, "Scene crack example"

    const-string v3, "vfx_crack_template.txt"

    invoke-static/range {v0 .. v5}, Lw5/c;->W(Landroid/content/Context;Ljava/lang/String;Lw5/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
