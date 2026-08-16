.class public LXi/M;
.super LXi/J;
.source "SourceFile"


# instance fields
.field public final d:Ljk/i;


# direct methods
.method public constructor <init>(Ljk/i;LXi/G;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, LXi/J;-><init>(ZLXi/G;)V

    invoke-virtual {p2, p1}, LXi/G;->i(Ljk/i;)Ljk/i;

    move-result-object p1

    iput-object p1, p0, LXi/M;->d:Ljk/i;

    return-void
.end method


# virtual methods
.method public e()Ljk/i;
    .locals 1

    iget-object v0, p0, LXi/M;->d:Ljk/i;

    return-object v0
.end method
