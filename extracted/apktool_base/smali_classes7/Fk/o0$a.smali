.class public LFk/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/F;

.field public b:LFk/I;

.field public c:LFk/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/o0;
    .locals 4

    new-instance v0, LFk/o0;

    iget-object v1, p0, LFk/o0$a;->a:LFk/F;

    iget-object v2, p0, LFk/o0$a;->b:LFk/I;

    iget-object v3, p0, LFk/o0$a;->c:LFk/p;

    invoke-direct {v0, v1, v2, v3}, LFk/o0;-><init>(LFk/F;LFk/I;LFk/p;)V

    return-object v0
.end method

.method public b(LFk/p;)LFk/o0$a;
    .locals 0

    iput-object p1, p0, LFk/o0$a;->c:LFk/p;

    return-object p0
.end method

.method public c(LFk/F;)LFk/o0$a;
    .locals 0

    iput-object p1, p0, LFk/o0$a;->a:LFk/F;

    return-object p0
.end method

.method public d(LFk/I;)LFk/o0$a;
    .locals 0

    iput-object p1, p0, LFk/o0$a;->b:LFk/I;

    return-object p0
.end method
