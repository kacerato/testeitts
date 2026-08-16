.class public La2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/j;-><init>(La2/j$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La2/j;


# direct methods
.method public constructor <init>(La2/j;)V
    .locals 0

    iput-object p1, p0, La2/j$a;->a:La2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La2/q;Landroid/graphics/Matrix;I)V
    .locals 3
    .param p1    # La2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, La2/j$a;->a:La2/j;

    invoke-static {v0}, La2/j;->b(La2/j;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, La2/q;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, La2/j$a;->a:La2/j;

    invoke-static {v0}, La2/j;->d(La2/j;)[La2/q$i;

    move-result-object v0

    invoke-virtual {p1, p2}, La2/q;->f(Landroid/graphics/Matrix;)La2/q$i;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(La2/q;Landroid/graphics/Matrix;I)V
    .locals 2
    .param p1    # La2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, La2/j$a;->a:La2/j;

    invoke-static {v0}, La2/j;->b(La2/j;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, La2/q;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, La2/j$a;->a:La2/j;

    invoke-static {v0}, La2/j;->c(La2/j;)[La2/q$i;

    move-result-object v0

    invoke-virtual {p1, p2}, La2/q;->f(Landroid/graphics/Matrix;)La2/q$i;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
