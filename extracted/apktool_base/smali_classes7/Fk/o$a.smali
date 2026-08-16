.class public LFk/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/k;

.field public b:Loh/y;

.field public c:Loh/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/o;
    .locals 4

    new-instance v0, LFk/o;

    iget-object v1, p0, LFk/o$a;->a:LFk/k;

    iget-object v2, p0, LFk/o$a;->b:Loh/y;

    iget-object v3, p0, LFk/o$a;->c:Loh/y;

    invoke-direct {v0, v1, v2, v3}, LFk/o;-><init>(LFk/k;Loh/y;Loh/y;)V

    return-object v0
.end method

.method public b(Loh/y;)LFk/o$a;
    .locals 0

    iput-object p1, p0, LFk/o$a;->b:Loh/y;

    return-object p0
.end method

.method public c([B)LFk/o$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/o$a;->b:Loh/y;

    return-object p0
.end method

.method public d(Loh/y;)LFk/o$a;
    .locals 0

    iput-object p1, p0, LFk/o$a;->c:Loh/y;

    return-object p0
.end method

.method public e([B)LFk/o$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/o$a;->c:Loh/y;

    return-object p0
.end method

.method public f(LFk/k;)LFk/o$a;
    .locals 0

    iput-object p1, p0, LFk/o$a;->a:LFk/k;

    return-object p0
.end method
