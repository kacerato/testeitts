.class public Ljk/B$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljk/B;->c(Ljk/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Ljk/B$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljk/q;)Ljk/q;
    .locals 3

    instance-of v0, p1, Ljk/A;

    if-eqz v0, :cond_0

    check-cast p1, Ljk/A;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljk/A;->b()I

    move-result v1

    iget v2, p0, Ljk/B$a;->a:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljk/A;->l(I)V

    return-object p1

    :cond_1
    new-instance v1, Ljk/A;

    invoke-direct {v1}, Ljk/A;-><init>()V

    invoke-virtual {v1, v0}, Ljk/A;->l(I)V

    iget v0, p0, Ljk/B$a;->a:I

    invoke-virtual {v1, v0}, Ljk/A;->i(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljk/A;->c()[Ljk/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljk/A;->j([Ljk/i;)V

    invoke-virtual {p1}, Ljk/A;->d()[Ljk/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljk/A;->k([Ljk/i;)V

    invoke-virtual {p1}, Ljk/A;->f()Ljk/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljk/A;->m(Ljk/i;)V

    invoke-virtual {p1}, Ljk/A;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljk/A;->n(I)V

    :cond_2
    return-object v1
.end method
