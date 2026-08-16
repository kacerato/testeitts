.class public LOi/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LBi/d;

.field public b:LBi/F;


# direct methods
.method public constructor <init>(LBi/d;LBi/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOi/u;->a:LBi/d;

    iput-object p2, p0, LOi/u;->b:LBi/F;

    return-void
.end method


# virtual methods
.method public a()LBi/C;
    .locals 3

    iget-object v0, p0, LOi/u;->a:LBi/d;

    invoke-interface {v0}, LBi/d;->a()LBi/c;

    move-result-object v0

    new-instance v1, LBi/C;

    iget-object v2, p0, LOi/u;->b:LBi/F;

    invoke-direct {v1, v0, v2}, LBi/C;-><init>(LBi/c;LBi/F;)V

    return-object v1
.end method
