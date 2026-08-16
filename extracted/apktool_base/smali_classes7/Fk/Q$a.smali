.class public LFk/Q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/O;

.field public b:LFk/k0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/Q;
    .locals 3

    new-instance v0, LFk/Q;

    iget-object v1, p0, LFk/Q$a;->a:LFk/O;

    iget-object v2, p0, LFk/Q$a;->b:LFk/k0;

    invoke-direct {v0, v1, v2}, LFk/Q;-><init>(LFk/O;LFk/k0;)V

    return-object v0
.end method

.method public b(J)LFk/Q$a;
    .locals 1

    new-instance v0, LFk/O;

    invoke-direct {v0, p1, p2}, LFk/O;-><init>(J)V

    iput-object v0, p0, LFk/Q$a;->a:LFk/O;

    return-object p0
.end method

.method public c(LFk/O;)LFk/Q$a;
    .locals 0

    iput-object p1, p0, LFk/Q$a;->a:LFk/O;

    return-object p0
.end method

.method public d(LFk/k0;)LFk/Q$a;
    .locals 0

    iput-object p1, p0, LFk/Q$a;->b:LFk/k0;

    return-object p0
.end method
