.class public Lge/F$c$a;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/H;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/F$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:LWd/D;

.field public final synthetic f:Lge/F$c;


# direct methods
.method public constructor <init>(Lge/F$c;LWd/D;)V
    .locals 0

    iput-object p1, p0, Lge/F$c$a;->f:Lge/F$c;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    iput-object p2, p0, Lge/F$c$a;->e:LWd/D;

    return-void
.end method


# virtual methods
.method public next()F
    .locals 2

    invoke-virtual {p0}, LWd/J;->j()V

    iget-object v0, p0, Lge/F$c$a;->e:LWd/D;

    iget-object v0, v0, LWd/D;->q:[F

    iget v1, p0, LWd/J;->d:I

    aget v0, v0, v1

    return v0
.end method
