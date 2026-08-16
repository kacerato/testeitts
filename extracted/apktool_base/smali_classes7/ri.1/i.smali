.class public Lri/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lri/e;


# direct methods
.method public constructor <init>(Lri/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lri/i;->a:Lri/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lri/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/dane/DANEException;
        }
    .end annotation

    new-instance v0, Lri/h;

    iget-object v1, p0, Lri/i;->a:Lri/e;

    invoke-interface {v1, p1}, Lri/e;->a(Ljava/lang/String;)Lri/d;

    move-result-object p1

    invoke-interface {p1}, Lri/d;->getEntries()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lri/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method
