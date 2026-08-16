.class public Lle/j$a;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:LWd/h0;

.field public final synthetic f:Lle/j;


# direct methods
.method public constructor <init>(Lle/j;LWd/h0;)V
    .locals 0

    iput-object p1, p0, Lle/j$a;->f:Lle/j;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lle/j$a;->e:LWd/h0;

    return-void
.end method


# virtual methods
.method public next()S
    .locals 2

    invoke-virtual {p0}, LWd/J;->j()V

    iget-object v0, p0, Lle/j$a;->e:LWd/h0;

    iget-object v0, v0, LWd/h0;->q:[S

    iget v1, p0, LWd/J;->d:I

    aget-short v0, v0, v1

    return v0
.end method
