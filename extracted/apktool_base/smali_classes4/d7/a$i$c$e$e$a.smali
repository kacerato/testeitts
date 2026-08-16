.class public Ld7/a$i$c$e$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$i$c$e$e;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$i$c$e$e;


# direct methods
.method public constructor <init>(Ld7/a$i$c$e$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$e$e$a;->a:Ld7/a$i$c$e$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ld7/a$i$c$e$e$a$a;

    invoke-direct {v0, p0, p1}, Ld7/a$i$c$e$e$a$a;-><init>(Ld7/a$i$c$e$e$a;I)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
