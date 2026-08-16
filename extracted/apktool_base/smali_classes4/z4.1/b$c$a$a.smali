.class public Lz4/b$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/b$c$a;->a(IILandroid/content/Intent;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lz4/b$c$a;


# direct methods
.method public constructor <init>(Lz4/b$c$a;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz4/b$c$a$a;->b:Lz4/b$c$a;

    iput-object p2, p0, Lz4/b$c$a$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loading"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lz4/b$c$a$a$a;

    invoke-direct {v1, p0, p1}, Lz4/b$c$a$a$a;-><init>(Lz4/b$c$a$a;Lq7/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
