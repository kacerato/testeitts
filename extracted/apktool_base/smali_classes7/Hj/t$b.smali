.class public LHj/t$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHj/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/security/cert/CertSelector;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CertSelector;

    iput-object p1, p0, LHj/t$b;->a:Ljava/security/cert/CertSelector;

    return-void
.end method


# virtual methods
.method public a()LHj/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHj/t<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    new-instance v0, LHj/t;

    iget-object v1, p0, LHj/t$b;->a:Ljava/security/cert/CertSelector;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LHj/t;-><init>(Ljava/security/cert/CertSelector;LHj/t$a;)V

    return-object v0
.end method
