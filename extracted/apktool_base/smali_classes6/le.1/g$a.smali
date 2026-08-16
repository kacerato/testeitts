.class public Lle/g$a;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:LWd/O;

.field public final synthetic f:Lle/g;


# direct methods
.method public constructor <init>(Lle/g;LWd/O;)V
    .locals 0

    iput-object p1, p0, Lle/g$a;->f:Lle/g;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lle/g$a;->e:LWd/O;

    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    invoke-virtual {p0}, LWd/J;->j()V

    iget-object v0, p0, Lle/g$a;->e:LWd/O;

    iget-object v0, v0, LWd/O;->q:[I

    iget v1, p0, LWd/J;->d:I

    aget v0, v0, v1

    return v0
.end method
