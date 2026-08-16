.class public Ljl/m;
.super LXi/c;
.source "SourceFile"


# instance fields
.field public final c:Ljl/n;


# direct methods
.method public constructor <init>(ZLjl/n;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Ljl/m;->c:Ljl/n;

    return-void
.end method


# virtual methods
.method public d()Ljl/n;
    .locals 1

    iget-object v0, p0, Ljl/m;->c:Ljl/n;

    return-object v0
.end method
