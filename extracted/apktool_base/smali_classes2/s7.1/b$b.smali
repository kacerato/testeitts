.class public Ls7/b$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ls7/b;


# direct methods
.method public constructor <init>(Ls7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ls7/b$b;->b:Ls7/b;

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

    iget-object p1, p0, Ls7/b$b;->b:Ls7/b;

    invoke-static {p1}, Ls7/b;->r1(Ls7/b;)Ls7/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ls7/b$b;->b:Ls7/b;

    invoke-static {p1}, Ls7/b;->r1(Ls7/b;)Ls7/c;

    move-result-object p1

    invoke-virtual {p1}, Ls7/c;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ls7/b$b;->b:Ls7/b;

    invoke-static {p1}, Ls7/b;->r1(Ls7/b;)Ls7/c;

    move-result-object p1

    invoke-virtual {p1}, Ls7/c;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ls7/b$b;->b:Ls7/b;

    invoke-static {p1}, Ls7/b;->r1(Ls7/b;)Ls7/c;

    move-result-object p1

    invoke-virtual {p1}, Ls7/c;->d()Ls7/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ls7/b$b;->b:Ls7/b;

    invoke-static {v0, p1}, Ls7/b;->s1(Ls7/b;Ls7/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ls7/b$b;->b:Ls7/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_1
    :goto_0
    return-void
.end method
