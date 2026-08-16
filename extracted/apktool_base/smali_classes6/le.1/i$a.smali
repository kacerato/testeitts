.class public Lle/i$a;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:LWd/X;

.field public final synthetic f:Lle/i;


# direct methods
.method public constructor <init>(Lle/i;LWd/X;)V
    .locals 0

    iput-object p1, p0, Lle/i$a;->f:Lle/i;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lle/i$a;->e:LWd/X;

    return-void
.end method


# virtual methods
.method public next()J
    .locals 3

    invoke-virtual {p0}, LWd/J;->j()V

    iget-object v0, p0, Lle/i$a;->e:LWd/X;

    iget-object v0, v0, LWd/X;->q:[J

    iget v1, p0, LWd/J;->d:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
