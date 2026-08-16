.class public Ld7/a$i$c$a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$i$c$a$f;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq7/a;

.field public final synthetic b:Ld7/a$i$c$a$f;


# direct methods
.method public constructor <init>(Ld7/a$i$c$a$f;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$a$f$a;->b:Ld7/a$i$c$a$f;

    iput-object p2, p0, Ld7/a$i$c$a$f$a;->a:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->q0()V

    invoke-static {}, LVb/a;->M()V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Ld7/a$i$c$a$f$a$a;

    invoke-direct {v0, p0}, Ld7/a$i$c$a$f$a$a;-><init>(Ld7/a$i$c$a$f$a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    return-void
.end method
