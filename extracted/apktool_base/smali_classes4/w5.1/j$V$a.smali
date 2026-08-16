.class public Lw5/j$V$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$V;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lw5/j$V;


# direct methods
.method public constructor <init>(Lw5/j$V;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$V$a;->b:Lw5/j$V;

    iput-object p2, p0, Lw5/j$V$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    iget-object v1, p0, Lw5/j$V$a;->a:Ljava/io/File;

    new-instance v2, Lw5/j$V$a$a;

    invoke-direct {v2, p0, v0}, Lw5/j$V$a$a;-><init>(Lw5/j$V$a;Lq7/a;)V

    invoke-static {v1, p1, v2}, LK3/e;->e(Ljava/io/File;Ljava/lang/String;LK3/a;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
