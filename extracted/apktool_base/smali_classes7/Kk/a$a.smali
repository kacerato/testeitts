.class public LKk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Lyk/c;

.field public final b:Lyk/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LKk/a;->e:Lyk/f$b;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lyk/f$b;->f()Lyk/c;

    move-result-object v0

    iput-object v0, p0, LKk/a$a;->a:Lyk/c;

    sget-object v0, LKk/a;->g:Lyk/f$b;

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lyk/f$b;->f()Lyk/c;

    move-result-object v0

    iput-object v0, p0, LKk/a$a;->b:Lyk/c;

    return-void
.end method


# virtual methods
.method public a(Lyk/l;)Lyk/c;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyk/l;->a(I)Loh/g;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    sget-object v0, LKk/a;->a:Loh/s;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LKk/a$a;->a:Lyk/c;

    return-object p1

    :cond_0
    sget-object v0, LKk/a;->b:Loh/s;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, LKk/a$a;->b:Lyk/c;

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown extension type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()[Loh/g;
    .locals 1

    invoke-static {}, LKk/a;->a()[Loh/g;

    move-result-object v0

    return-object v0
.end method
