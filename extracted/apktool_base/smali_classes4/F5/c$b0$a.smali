.class public LF5/c$b0$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c$b0;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LF5/c$b0;


# direct methods
.method public constructor <init>(LF5/c$b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LF5/c$b0$a;->b:LF5/c$b0;

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

    iget-object p1, p0, LF5/c$b0$a;->b:LF5/c$b0;

    iget-object v0, p1, LF5/c$b0;->a:LF5/e;

    iget p1, p1, LF5/c$b0;->b:I

    invoke-interface {v0, p1}, LF5/e;->c(I)V

    iget-object p1, p0, LF5/c$b0$a;->b:LF5/c$b0;

    iget-object p1, p1, LF5/c$b0;->a:LF5/e;

    invoke-interface {p1}, LF5/e;->a()V

    return-void
.end method
