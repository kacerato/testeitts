.class public LAk/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LAk/P;

.field public b:LBk/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/f;
    .locals 3

    new-instance v0, LAk/f;

    iget-object v1, p0, LAk/f$a;->a:LAk/P;

    iget-object v2, p0, LAk/f$a;->b:LBk/c;

    invoke-direct {v0, v1, v2}, LAk/f;-><init>(LAk/P;LBk/c;)V

    return-object v0
.end method

.method public b(LBk/c;)LAk/f$a;
    .locals 0

    iput-object p1, p0, LAk/f$a;->b:LBk/c;

    return-object p0
.end method

.method public c(LAk/P;)LAk/f$a;
    .locals 0

    iput-object p1, p0, LAk/f$a;->a:LAk/P;

    return-object p0
.end method
