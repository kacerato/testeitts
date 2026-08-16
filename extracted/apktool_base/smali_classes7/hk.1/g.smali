.class public Lhk/g;
.super Lhk/a;
.source "SourceFile"


# instance fields
.field public c:Ljk/i;


# direct methods
.method public constructor <init>(Ljk/i;Lhk/e;)V
    .locals 0

    invoke-direct {p0, p2}, Lhk/a;-><init>(Lhk/e;)V

    invoke-virtual {p1}, Ljk/i;->i()Ljk/e;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lhk/g;->c:Ljk/i;

    return-void
.end method


# virtual methods
.method public b()Ljk/i;
    .locals 1

    iget-object v0, p0, Lhk/g;->c:Ljk/i;

    return-object v0
.end method
