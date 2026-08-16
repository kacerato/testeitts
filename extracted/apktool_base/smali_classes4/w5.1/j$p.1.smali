.class public Lw5/j$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j;->g(Landroid/app/Activity;Landroid/content/Context;Ljd/b;Ljava/lang/String;Lw5/b;Ljava/lang/String;Landroid/view/View;IIZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lw5/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lw5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$inProjectDirectory",
            "val$callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$p;->a:Landroid/content/Context;

    iput-object p2, p0, Lw5/j$p;->b:Ljava/lang/String;

    iput-object p3, p0, Lw5/j$p;->c:Lw5/b;

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
            "view"
        }
    .end annotation

    iget-object p1, p0, Lw5/j$p;->a:Landroid/content/Context;

    iget-object v0, p0, Lw5/j$p;->b:Ljava/lang/String;

    new-instance v1, Lw5/j$p$a;

    invoke-direct {v1, p0}, Lw5/j$p$a;-><init>(Lw5/j$p;)V

    invoke-static {p1, v0, v1}, Lw5/c;->f(Landroid/content/Context;Ljava/lang/String;Lw5/l;)V

    return-void
.end method
