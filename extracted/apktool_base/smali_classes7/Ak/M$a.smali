.class public LAk/M$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LCk/a;

.field public b:LCk/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/M;
    .locals 3

    new-instance v0, LAk/M;

    iget-object v1, p0, LAk/M$a;->a:LCk/a;

    iget-object v2, p0, LAk/M$a;->b:LCk/a;

    invoke-direct {v0, v1, v2}, LAk/M;-><init>(LCk/a;LCk/a;)V

    return-object v0
.end method

.method public b(LCk/a;)LAk/M$a;
    .locals 0

    iput-object p1, p0, LAk/M$a;->a:LCk/a;

    return-object p0
.end method

.method public c(LCk/a;)LAk/M$a;
    .locals 0

    iput-object p1, p0, LAk/M$a;->b:LCk/a;

    return-object p0
.end method
