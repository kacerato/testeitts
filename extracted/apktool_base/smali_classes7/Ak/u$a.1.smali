.class public LAk/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LAk/a0;

.field public b:LFk/Y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/u;
    .locals 3

    new-instance v0, LAk/u;

    iget-object v1, p0, LAk/u$a;->a:LAk/a0;

    iget-object v2, p0, LAk/u$a;->b:LFk/Y;

    invoke-direct {v0, v1, v2}, LAk/u;-><init>(LAk/a0;LFk/Y;)V

    return-object v0
.end method

.method public b(LFk/Y;)LAk/u$a;
    .locals 0

    iput-object p1, p0, LAk/u$a;->b:LFk/Y;

    return-object p0
.end method

.method public c(LAk/a0;)LAk/u$a;
    .locals 0

    iput-object p1, p0, LAk/u$a;->a:LAk/a0;

    return-object p0
.end method
