.class public Ljk/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljk/i;->u(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Ljk/i;


# direct methods
.method public constructor <init>(Ljk/i;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ljk/i$a;->c:Ljk/i;

    iput-boolean p2, p0, Ljk/i$a;->a:Z

    iput-boolean p3, p0, Ljk/i$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljk/q;)Ljk/q;
    .locals 1

    instance-of v0, p1, Ljk/y;

    if-eqz v0, :cond_0

    check-cast p1, Ljk/y;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Ljk/y;

    invoke-direct {p1}, Ljk/y;-><init>()V

    :cond_1
    invoke-virtual {p1}, Ljk/y;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljk/y;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ljk/i$a;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Ljk/i$a;->c:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->D()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljk/y;->e()V

    return-object p1

    :cond_3
    invoke-virtual {p1}, Ljk/y;->d()V

    :cond_4
    iget-boolean v0, p0, Ljk/i$a;->b:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljk/y;->c()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ljk/i$a;->c:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->E()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljk/y;->e()V

    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljk/y;->f()V

    :cond_6
    return-object p1
.end method
