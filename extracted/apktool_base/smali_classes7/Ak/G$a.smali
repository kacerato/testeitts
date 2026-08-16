.class public LAk/G$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Loh/y;

.field public b:LBk/a;

.field public c:LBk/d;

.field public d:LBk/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/G;
    .locals 5

    new-instance v0, LAk/G;

    iget-object v1, p0, LAk/G$a;->a:Loh/y;

    iget-object v2, p0, LAk/G$a;->b:LBk/a;

    iget-object v3, p0, LAk/G$a;->c:LBk/d;

    iget-object v4, p0, LAk/G$a;->d:LBk/b;

    invoke-direct {v0, v1, v2, v3, v4}, LAk/G;-><init>(Loh/y;LBk/a;LBk/d;LBk/b;)V

    return-object v0
.end method

.method public b(LBk/a;)LAk/G$a;
    .locals 0

    iput-object p1, p0, LAk/G$a;->b:LBk/a;

    return-object p0
.end method

.method public c(Loh/y;)LAk/G$a;
    .locals 0

    iput-object p1, p0, LAk/G$a;->a:Loh/y;

    return-object p0
.end method

.method public d([B)LAk/G$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LAk/G$a;->a:Loh/y;

    return-object p0
.end method

.method public e(LBk/d;)LAk/G$a;
    .locals 0

    iput-object p1, p0, LAk/G$a;->c:LBk/d;

    return-object p0
.end method

.method public f(LBk/b;)LAk/G$a;
    .locals 0

    iput-object p1, p0, LAk/G$a;->d:LBk/b;

    return-object p0
.end method
