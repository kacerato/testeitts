.class public LLk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-static {}, LLk/a;->b()Loh/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LKk/a;->i:Lyk/f$b;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lyk/f;->z([Ljava/lang/Object;)Lyk/f$b;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lyk/f$b;->w(J)Lyk/f$b;

    move-result-object p1

    const-string v0, "extns"

    invoke-virtual {p1, v0}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object p1

    invoke-virtual {p1}, Lyk/f$b;->f()Lyk/c;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No forward definition for type id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()[Loh/g;
    .locals 1

    invoke-static {}, LLk/a;->a()[Loh/g;

    move-result-object v0

    return-object v0
.end method
