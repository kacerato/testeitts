.class public LSm/a;
.super LSm/b;
.source "SourceFile"


# instance fields
.field public final e:C


# direct methods
.method public constructor <init>(LSm/b;LUm/d;)V
    .locals 0

    invoke-direct {p0, p1}, LSm/b;-><init>(LSm/b;)V

    invoke-virtual {p2}, LUm/d;->s()C

    move-result p1

    iput-char p1, p0, LSm/a;->e:C

    return-void
.end method


# virtual methods
.method public c()C
    .locals 1

    iget-char v0, p0, LSm/a;->e:C

    return v0
.end method
