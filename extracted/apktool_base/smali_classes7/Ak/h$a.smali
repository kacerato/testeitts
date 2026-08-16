.class public LAk/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Loh/y;

.field public b:LAk/i;

.field public c:LBk/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/h;
    .locals 4

    new-instance v0, LAk/h;

    iget-object v1, p0, LAk/h$a;->a:Loh/y;

    iget-object v2, p0, LAk/h$a;->b:LAk/i;

    iget-object v3, p0, LAk/h$a;->c:LBk/b;

    invoke-direct {v0, v1, v2, v3}, LAk/h;-><init>(Loh/y;LAk/i;LBk/b;)V

    return-object v0
.end method

.method public b(LBk/b;)LAk/h$a;
    .locals 0

    iput-object p1, p0, LAk/h$a;->c:LBk/b;

    return-object p0
.end method

.method public c(Loh/y;)LAk/h$a;
    .locals 0

    iput-object p1, p0, LAk/h$a;->a:Loh/y;

    return-object p0
.end method

.method public d([B)LAk/h$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LAk/h$a;->a:Loh/y;

    return-object p0
.end method

.method public e(LAk/i;)LAk/h$a;
    .locals 0

    iput-object p1, p0, LAk/h$a;->b:LAk/i;

    return-object p0
.end method
