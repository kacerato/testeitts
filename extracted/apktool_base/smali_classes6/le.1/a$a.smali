.class public Lle/a$a;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:LWd/e;

.field public final synthetic f:Lle/a;


# direct methods
.method public constructor <init>(Lle/a;LWd/e;)V
    .locals 0

    iput-object p1, p0, Lle/a$a;->f:Lle/a;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lle/a$a;->e:LWd/e;

    return-void
.end method


# virtual methods
.method public next()B
    .locals 2

    invoke-virtual {p0}, LWd/J;->j()V

    iget-object v0, p0, Lle/a$a;->e:LWd/e;

    iget-object v0, v0, LWd/e;->q:[B

    iget v1, p0, LWd/J;->d:I

    aget-byte v0, v0, v1

    return v0
.end method
