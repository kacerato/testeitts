.class public LFk/V$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/w0;

.field public b:LFk/g0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/V;
    .locals 3

    new-instance v0, LFk/V;

    iget-object v1, p0, LFk/V$a;->a:LFk/w0;

    iget-object v2, p0, LFk/V$a;->b:LFk/g0;

    invoke-direct {v0, v1, v2}, LFk/V;-><init>(LFk/w0;LFk/g0;)V

    return-object v0
.end method

.method public b(LFk/w0;)LFk/V$a;
    .locals 0

    iput-object p1, p0, LFk/V$a;->a:LFk/w0;

    return-object p0
.end method

.method public c(LFk/g0;)LFk/V$a;
    .locals 0

    iput-object p1, p0, LFk/V$a;->b:LFk/g0;

    return-object p0
.end method
