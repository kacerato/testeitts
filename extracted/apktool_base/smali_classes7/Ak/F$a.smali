.class public LAk/F$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Loh/y;

.field public b:LAk/d;

.field public c:LCk/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/F;
    .locals 4

    new-instance v0, LAk/F;

    iget-object v1, p0, LAk/F$a;->a:Loh/y;

    iget-object v2, p0, LAk/F$a;->b:LAk/d;

    iget-object v3, p0, LAk/F$a;->c:LCk/a;

    invoke-direct {v0, v1, v2, v3}, LAk/F;-><init>(Loh/y;LAk/d;LCk/a;)V

    return-object v0
.end method

.method public b(LCk/a;)LAk/F$a;
    .locals 0

    iput-object p1, p0, LAk/F$a;->c:LCk/a;

    return-object p0
.end method

.method public c(Loh/y;)LAk/F$a;
    .locals 0

    iput-object p1, p0, LAk/F$a;->a:Loh/y;

    return-object p0
.end method

.method public d([B)LAk/F$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LAk/F$a;->a:Loh/y;

    return-object p0
.end method

.method public e(LAk/d;)LAk/F$a;
    .locals 0

    iput-object p1, p0, LAk/F$a;->b:LAk/d;

    return-object p0
.end method
