.class public Lge/x$c$a;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/x$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:LWd/v;

.field public final synthetic f:Lge/x$c;


# direct methods
.method public constructor <init>(Lge/x$c;LWd/v;)V
    .locals 0

    iput-object p1, p0, Lge/x$c$a;->f:Lge/x$c;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lge/x$c$a;->e:LWd/v;

    return-void
.end method


# virtual methods
.method public next()D
    .locals 3

    invoke-virtual {p0}, LWd/J;->j()V

    iget-object v0, p0, Lge/x$c$a;->e:LWd/v;

    iget-object v0, v0, LWd/v;->q:[D

    iget v1, p0, LWd/J;->d:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
