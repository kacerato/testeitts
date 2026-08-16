.class public LAk/U$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LBk/e;

.field public b:LFk/p0;

.field public c:LFk/p0;

.field public d:LAk/N;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/U;
    .locals 5

    new-instance v0, LAk/U;

    iget-object v1, p0, LAk/U$a;->a:LBk/e;

    iget-object v2, p0, LAk/U$a;->b:LFk/p0;

    iget-object v3, p0, LAk/U$a;->c:LFk/p0;

    iget-object v4, p0, LAk/U$a;->d:LAk/N;

    invoke-direct {v0, v1, v2, v3, v4}, LAk/U;-><init>(LBk/e;LFk/p0;LFk/p0;LAk/N;)V

    return-object v0
.end method

.method public b(LAk/N;)LAk/U$a;
    .locals 0

    iput-object p1, p0, LAk/U$a;->d:LAk/N;

    return-object p0
.end method

.method public c(LFk/p0;)LAk/U$a;
    .locals 0

    iput-object p1, p0, LAk/U$a;->c:LFk/p0;

    return-object p0
.end method

.method public d(LFk/p0;)LAk/U$a;
    .locals 0

    iput-object p1, p0, LAk/U$a;->b:LFk/p0;

    return-object p0
.end method

.method public e(LBk/e;)LAk/U$a;
    .locals 0

    iput-object p1, p0, LAk/U$a;->a:LBk/e;

    return-object p0
.end method
