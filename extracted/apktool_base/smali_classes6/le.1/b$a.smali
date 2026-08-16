.class public Lle/b$a;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:LWd/m;

.field public final synthetic f:Lle/b;


# direct methods
.method public constructor <init>(Lle/b;LWd/m;)V
    .locals 0

    iput-object p1, p0, Lle/b$a;->f:Lle/b;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lle/b$a;->e:LWd/m;

    return-void
.end method


# virtual methods
.method public next()C
    .locals 2

    invoke-virtual {p0}, LWd/J;->j()V

    iget-object v0, p0, Lle/b$a;->e:LWd/m;

    iget-object v0, v0, LWd/m;->q:[C

    iget v1, p0, LWd/J;->d:I

    aget-char v0, v0, v1

    return v0
.end method
