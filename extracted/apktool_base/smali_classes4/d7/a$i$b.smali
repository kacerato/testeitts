.class public Ld7/a$i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$i;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ld7/a$i;


# direct methods
.method public constructor <init>(Ld7/a$i;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$b;->b:Ld7/a$i;

    iput-object p2, p0, Ld7/a$i$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Ld7/a$i$b;->a:Landroid/content/Context;

    new-instance v0, Ld7/a$i$b$a;

    invoke-direct {v0, p0}, Ld7/a$i$b$a;-><init>(Ld7/a$i$b;)V

    const-string v1, "Files/Worlds/"

    invoke-static {p1, v1, v0}, Lw5/c;->J(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    return-void
.end method
