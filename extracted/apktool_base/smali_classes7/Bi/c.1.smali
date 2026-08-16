.class public LBi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LXi/c;

.field public b:LXi/c;


# direct methods
.method public constructor <init>(LBi/k;LBi/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, LXi/c;

    iput-object p1, p0, LBi/c;->a:LXi/c;

    check-cast p2, LXi/c;

    iput-object p2, p0, LBi/c;->b:LXi/c;

    return-void
.end method

.method public constructor <init>(LXi/c;LXi/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBi/c;->a:LXi/c;

    iput-object p2, p0, LBi/c;->b:LXi/c;

    return-void
.end method


# virtual methods
.method public a()LXi/c;
    .locals 1

    iget-object v0, p0, LBi/c;->b:LXi/c;

    return-object v0
.end method

.method public b()LXi/c;
    .locals 1

    iget-object v0, p0, LBi/c;->a:LXi/c;

    return-object v0
.end method
