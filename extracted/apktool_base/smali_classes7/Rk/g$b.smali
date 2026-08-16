.class public LRk/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRk/g;->b(LXi/c;)LQk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LXi/c;

.field public final synthetic b:LRk/g;


# direct methods
.method public constructor <init>(LRk/g;LXi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LRk/g$b;->b:LRk/g;

    iput-object p2, p0, LRk/g$b;->a:LXi/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)LQk/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LRk/g$b;->b:LRk/g;

    iget-object v1, p0, LRk/g$b;->a:LXi/c;

    invoke-static {v0, p1, v1}, LRk/g;->a(LRk/g;Lhi/b;LXi/c;)LRk/u;

    move-result-object v0

    new-instance v1, LRk/g$c;

    invoke-direct {v1, p1, v0}, LRk/g$c;-><init>(Lhi/b;LRk/u;)V

    return-object v1
.end method

.method public b()Lli/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
