.class public Lw6/b$e$a$a;
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

    iput-object p1, p0, Lw6/b$e$a$a;->a:Lw6/b$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lw6/b$e$a$a;->a:Lw6/b$e$a;

    iget-object p1, p1, Lw6/b$e$a;->b:Lw6/b$e;

    iget-object p1, p1, Lw6/b$e;->b:Lw6/b;

    invoke-static {p1}, Lw6/b;->v1(Lw6/b;)V

    return-void
.end method
