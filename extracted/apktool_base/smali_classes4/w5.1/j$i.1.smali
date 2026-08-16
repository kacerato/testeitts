.class public Lw5/j$i;
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

.field public final synthetic b:Ljd/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$i;->a:Landroid/content/Context;

    iput-object p2, p0, Lw5/j$i;->b:Ljd/b;

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

    iget-object p1, p0, Lw5/j$i;->a:Landroid/content/Context;

    iget-object v0, p0, Lw5/j$i;->b:Ljd/b;

    iget-object v0, v0, Ljd/b;->a:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lw5/c;->a0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
