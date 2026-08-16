.class public Lw5/j$M$b$e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$M$b$e$d;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$M$b$e$d;


# direct methods
.method public constructor <init>(Lw5/j$M$b$e$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$M$b$e$d$a;->a:Lw5/j$M$b$e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    iget-object p1, p0, Lw5/j$M$b$e$d$a;->a:Lw5/j$M$b$e$d;

    iget-object p1, p1, Lw5/j$M$b$e$d;->a:Lw5/j$M$b$e;

    iget-object p1, p1, Lw5/j$M$b$e;->b:Lw5/j$M$b;

    iget-object p1, p1, Lw5/j$M$b;->b:Lw5/j$M;

    iget-object p1, p1, Lw5/j$M;->d:Lw5/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lw5/b;->a()V

    :cond_0
    return-void
.end method
