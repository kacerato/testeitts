.class public LHj/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LHj/u$b;
    }
.end annotation


# instance fields
.field public final b:LHj/v;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(LHj/u$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LHj/u$b;->a(LHj/u$b;)LHj/v;

    move-result-object v0

    iput-object v0, p0, LHj/u;->b:LHj/v;

    invoke-static {p1}, LHj/u$b;->b(LHj/u$b;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LHj/u;->c:Ljava/util/Set;

    invoke-static {p1}, LHj/u$b;->c(LHj/u$b;)I

    move-result p1

    iput p1, p0, LHj/u;->d:I

    return-void
.end method

.method public synthetic constructor <init>(LHj/u$b;LHj/u$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LHj/u;-><init>(LHj/u$b;)V

    return-void
.end method


# virtual methods
.method public a()LHj/v;
    .locals 1

    iget-object v0, p0, LHj/u;->b:LHj/v;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, LHj/u;->c:Ljava/util/Set;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LHj/u;->d:I

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
