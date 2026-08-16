.class public Lnk/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnk/c;->c(Lnk/a;Ljk/i;)Ljk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnk/a;

.field public final synthetic b:Ljk/i;


# direct methods
.method public constructor <init>(Lnk/a;Ljk/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnk/c$a;->a:Lnk/a;

    iput-object p2, p0, Lnk/c$a;->b:Ljk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljk/q;)Ljk/q;
    .locals 2

    instance-of v0, p1, Lnk/b;

    if-eqz v0, :cond_0

    check-cast p1, Lnk/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lnk/c$a;->a:Lnk/a;

    invoke-virtual {p0, p1, v0}, Lnk/c$a;->b(Lnk/b;Lnk/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lnk/c$a;->a:Lnk/a;

    invoke-interface {p1}, Lnk/a;->c()Ljk/j;

    move-result-object p1

    iget-object v0, p0, Lnk/c$a;->b:Ljk/i;

    invoke-interface {p1, v0}, Ljk/j;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    new-instance v0, Lnk/b;

    invoke-direct {v0}, Lnk/b;-><init>()V

    iget-object v1, p0, Lnk/c$a;->a:Lnk/a;

    invoke-virtual {v0, v1}, Lnk/b;->c(Lnk/a;)V

    invoke-virtual {v0, p1}, Lnk/b;->d(Ljk/i;)V

    return-object v0
.end method

.method public final b(Lnk/b;Lnk/a;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnk/b;->a()Lnk/a;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Lnk/b;->b()Ljk/i;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
