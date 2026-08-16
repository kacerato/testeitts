.class public Ld6/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/b;->G1(Ld6/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld6/b;


# direct methods
.method public constructor <init>(Ld6/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tittle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld6/b$a;->b:Ld6/b;

    iput-object p2, p0, Ld6/b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    iget-object v0, p0, Ld6/b$a;->b:Ld6/b;

    iget-object v1, p0, Ld6/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld6/b;->K1(Ljava/lang/String;)V

    invoke-static {}, Ld8/j;->v0()V

    iget-object v0, p0, Ld6/b$a;->b:Ld6/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ld6/b$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Ld6/b$a;->b:Ld6/b;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    iget-object v4, p0, Ld6/b$a;->b:Ld6/b;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, LD8/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld6/b$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ld6/b;->x1(Ld6/b;Ljava/io/File;)V

    iget-object v0, p0, Ld6/b$a;->b:Ld6/b;

    invoke-static {v0}, Ld6/b;->y1(Ld6/b;)V

    return-void
.end method
