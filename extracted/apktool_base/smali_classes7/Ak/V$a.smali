.class public LAk/V$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/p0;

.field public b:LEk/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/V;
    .locals 3

    new-instance v0, LAk/V;

    iget-object v1, p0, LAk/V$a;->a:LFk/p0;

    iget-object v2, p0, LAk/V$a;->b:LEk/m;

    invoke-direct {v0, v1, v2}, LAk/V;-><init>(LFk/p0;LEk/m;)V

    return-object v0
.end method

.method public b()LAk/W;
    .locals 3

    new-instance v0, LAk/W;

    iget-object v1, p0, LAk/V$a;->a:LFk/p0;

    iget-object v2, p0, LAk/V$a;->b:LEk/m;

    invoke-direct {v0, v1, v2}, LAk/W;-><init>(LFk/p0;LEk/m;)V

    return-object v0
.end method

.method public c()LAk/X;
    .locals 3

    new-instance v0, LAk/X;

    iget-object v1, p0, LAk/V$a;->a:LFk/p0;

    iget-object v2, p0, LAk/V$a;->b:LEk/m;

    invoke-direct {v0, v1, v2}, LAk/X;-><init>(LFk/p0;LEk/m;)V

    return-object v0
.end method

.method public d(LEk/m;)LAk/V$a;
    .locals 0

    iput-object p1, p0, LAk/V$a;->b:LEk/m;

    return-object p0
.end method

.method public e(LFk/p0;)LAk/V$a;
    .locals 0

    iput-object p1, p0, LAk/V$a;->a:LFk/p0;

    return-object p0
.end method
