.class public Lw6/b$b;
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

    iput-object p1, p0, Lw6/b$b;->b:Lw6/b;

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
            "view"
        }
    .end annotation

    iget-object p1, p0, Lw6/b$b;->b:Lw6/b;

    invoke-static {p1}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lw6/b$b;->b:Lw6/b;

    invoke-static {p1}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object v0

    iget-object v0, v0, Lx6/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lw6/b;->E1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
