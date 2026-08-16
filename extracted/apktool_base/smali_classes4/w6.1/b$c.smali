.class public Lw6/b$c;
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

    iput-object p1, p0, Lw6/b$c;->b:Lw6/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lw6/b$c;->b:Lw6/b;

    invoke-static {v0}, Lw6/b;->t1(Lw6/b;)Lx6/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lx6/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lw6/b$c$a;

    invoke-direct {v1, p0, v0}, Lw6/b$c$a;-><init>(Lw6/b$c;Ljava/lang/String;)V

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v0, v1}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
