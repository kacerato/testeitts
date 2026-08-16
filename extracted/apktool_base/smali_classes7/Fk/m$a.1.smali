.class public LFk/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/k;

.field public b:Loh/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/m;
    .locals 3

    new-instance v0, LFk/m;

    iget-object v1, p0, LFk/m$a;->a:LFk/k;

    iget-object v2, p0, LFk/m$a;->b:Loh/y;

    invoke-direct {v0, v1, v2}, LFk/m;-><init>(LFk/k;Loh/y;)V

    return-object v0
.end method

.method public b(LFk/k;)LFk/m$a;
    .locals 0

    iput-object p1, p0, LFk/m$a;->a:LFk/k;

    return-object p0
.end method

.method public c(Loh/y;)LFk/m$a;
    .locals 0

    iput-object p1, p0, LFk/m$a;->b:Loh/y;

    return-object p0
.end method

.method public d([B)LFk/m$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/m$a;->b:Loh/y;

    return-object p0
.end method
