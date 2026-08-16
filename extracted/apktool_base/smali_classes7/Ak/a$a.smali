.class public LAk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LCk/a;

.field public b:LAk/a0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/a;
    .locals 3

    new-instance v0, LAk/a;

    iget-object v1, p0, LAk/a$a;->a:LCk/a;

    iget-object v2, p0, LAk/a$a;->b:LAk/a0;

    invoke-direct {v0, v1, v2}, LAk/a;-><init>(LCk/a;LAk/a0;)V

    return-object v0
.end method

.method public b(LCk/a;)LAk/a$a;
    .locals 0

    iput-object p1, p0, LAk/a$a;->a:LCk/a;

    return-object p0
.end method

.method public c(LAk/a0;)LAk/a$a;
    .locals 0

    iput-object p1, p0, LAk/a$a;->b:LAk/a0;

    return-object p0
.end method
