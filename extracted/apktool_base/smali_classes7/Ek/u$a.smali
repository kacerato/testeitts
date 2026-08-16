.class public LEk/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/w;

.field public b:LFk/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/u;
    .locals 3

    new-instance v0, LEk/u;

    iget-object v1, p0, LEk/u$a;->a:LFk/w;

    iget-object v2, p0, LEk/u$a;->b:LFk/h;

    invoke-direct {v0, v1, v2}, LEk/u;-><init>(LFk/w;LFk/h;)V

    return-object v0
.end method

.method public b(LFk/w;)LEk/u$a;
    .locals 0

    iput-object p1, p0, LEk/u$a;->a:LFk/w;

    return-object p0
.end method

.method public c(LFk/h;)LEk/u$a;
    .locals 0

    iput-object p1, p0, LEk/u$a;->b:LFk/h;

    return-object p0
.end method
