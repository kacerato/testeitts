.class public LRk/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRk/g;->c(Lli/h;)LQk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lli/h;

.field public final synthetic b:LRk/g;


# direct methods
.method public constructor <init>(LRk/g;Lli/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LRk/g$a;->b:LRk/g;

    iput-object p2, p0, LRk/g$a;->a:Lli/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)LQk/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LRk/g$a;->b:LRk/g;

    iget-object v1, p0, LRk/g$a;->a:Lli/h;

    invoke-virtual {v1}, Lli/h;->m()Lhi/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, LRk/g;->f(Lhi/h0;)LXi/c;

    move-result-object v0

    iget-object v1, p0, LRk/g$a;->b:LRk/g;

    invoke-static {v1, p1, v0}, LRk/g;->a(LRk/g;Lhi/b;LXi/c;)LRk/u;

    move-result-object v0

    new-instance v1, LRk/g$c;

    invoke-direct {v1, p1, v0}, LRk/g$c;-><init>(Lhi/b;LRk/u;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception on setup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Lli/h;
    .locals 1

    iget-object v0, p0, LRk/g$a;->a:Lli/h;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
