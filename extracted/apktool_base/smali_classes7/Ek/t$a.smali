.class public LEk/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/A;

.field public b:LFk/H;

.field public c:LFk/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/t;
    .locals 4

    new-instance v0, LEk/t;

    iget-object v1, p0, LEk/t$a;->a:LFk/A;

    iget-object v2, p0, LEk/t$a;->b:LFk/H;

    iget-object v3, p0, LEk/t$a;->c:LFk/s;

    invoke-direct {v0, v1, v2, v3}, LEk/t;-><init>(LFk/A;LFk/H;LFk/s;)V

    return-object v0
.end method

.method public b(LFk/s;)LEk/t$a;
    .locals 0

    iput-object p1, p0, LEk/t$a;->c:LFk/s;

    return-object p0
.end method

.method public c(LFk/A;)LEk/t$a;
    .locals 0

    iput-object p1, p0, LEk/t$a;->a:LFk/A;

    return-object p0
.end method

.method public d(LFk/H;)LEk/t$a;
    .locals 0

    iput-object p1, p0, LEk/t$a;->b:LFk/H;

    return-object p0
.end method
