.class public LAk/E$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LBk/d;

.field public b:Loh/y;

.field public c:LAk/P;

.field public d:LBk/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/E;
    .locals 5

    new-instance v0, LAk/E;

    iget-object v1, p0, LAk/E$a;->a:LBk/d;

    iget-object v2, p0, LAk/E$a;->b:Loh/y;

    iget-object v3, p0, LAk/E$a;->c:LAk/P;

    iget-object v4, p0, LAk/E$a;->d:LBk/c;

    invoke-direct {v0, v1, v2, v3, v4}, LAk/E;-><init>(LBk/d;Loh/y;LAk/P;LBk/c;)V

    return-object v0
.end method

.method public b(LBk/c;)LAk/E$a;
    .locals 0

    iput-object p1, p0, LAk/E$a;->d:LBk/c;

    return-object p0
.end method

.method public c(Loh/y;)LAk/E$a;
    .locals 0

    iput-object p1, p0, LAk/E$a;->b:Loh/y;

    return-object p0
.end method

.method public d([B)LAk/E$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LAk/E$a;->b:Loh/y;

    return-object p0
.end method

.method public e(LBk/d;)LAk/E$a;
    .locals 0

    iput-object p1, p0, LAk/E$a;->a:LBk/d;

    return-object p0
.end method

.method public f(LAk/P;)LAk/E$a;
    .locals 0

    iput-object p1, p0, LAk/E$a;->c:LAk/P;

    return-object p0
.end method
