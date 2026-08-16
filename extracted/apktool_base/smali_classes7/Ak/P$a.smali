.class public LAk/P$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/x;

.field public b:Loh/y;

.field public c:LBk/a;

.field public d:LBk/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LAk/P;
    .locals 5

    new-instance v0, LAk/P;

    iget-object v1, p0, LAk/P$a;->a:LFk/x;

    iget-object v2, p0, LAk/P$a;->b:Loh/y;

    iget-object v3, p0, LAk/P$a;->c:LBk/a;

    iget-object v4, p0, LAk/P$a;->d:LBk/b;

    invoke-direct {v0, v1, v2, v3, v4}, LAk/P;-><init>(LFk/x;Loh/y;LBk/a;LBk/b;)V

    return-object v0
.end method

.method public b(LBk/a;)LAk/P$a;
    .locals 0

    iput-object p1, p0, LAk/P$a;->c:LBk/a;

    return-object p0
.end method

.method public c(LFk/x;)LAk/P$a;
    .locals 0

    iput-object p1, p0, LAk/P$a;->a:LFk/x;

    return-object p0
.end method

.method public d(Loh/y;)LAk/P$a;
    .locals 0

    iput-object p1, p0, LAk/P$a;->b:Loh/y;

    return-object p0
.end method

.method public e([B)LAk/P$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LAk/P$a;->b:Loh/y;

    return-object p0
.end method

.method public f(LBk/b;)LAk/P$a;
    .locals 0

    iput-object p1, p0, LAk/P$a;->d:LBk/b;

    return-object p0
.end method
