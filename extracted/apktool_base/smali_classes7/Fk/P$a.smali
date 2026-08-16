.class public LFk/P$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/O;

.field public b:LFk/i0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/P;
    .locals 3

    new-instance v0, LFk/P;

    iget-object v1, p0, LFk/P$a;->a:LFk/O;

    iget-object v2, p0, LFk/P$a;->b:LFk/i0;

    invoke-direct {v0, v1, v2}, LFk/P;-><init>(LFk/O;LFk/i0;)V

    return-object v0
.end method

.method public b(LFk/O;)LFk/P$a;
    .locals 0

    iput-object p1, p0, LFk/P$a;->a:LFk/O;

    return-object p0
.end method

.method public c(LFk/i0;)LFk/P$a;
    .locals 0

    iput-object p1, p0, LFk/P$a;->b:LFk/i0;

    return-object p0
.end method
