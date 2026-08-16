.class public Ljj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lij/h;


# instance fields
.field public final a:Ljj/i;

.field public final b:Ljj/k;

.field public final c:I

.field public final d:Ljj/a;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Long;

.field public final g:Z


# direct methods
.method public constructor <init>(Ljj/i;Ljj/k;ILjj/a;Ljava/util/Set;Ljava/lang/Long;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj/i;",
            "Ljj/k;",
            "I",
            "Ljj/a;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj/d;->a:Ljj/i;

    iput-object p2, p0, Ljj/d;->b:Ljj/k;

    iput p3, p0, Ljj/d;->c:I

    iput-object p4, p0, Ljj/d;->d:Ljj/a;

    iput-object p5, p0, Ljj/d;->e:Ljava/util/Set;

    iput-object p6, p0, Ljj/d;->f:Ljava/lang/Long;

    iput-boolean p7, p0, Ljj/d;->g:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Ljj/d;->b:Ljj/k;

    invoke-interface {v0}, Ljj/k;->a()Z

    move-result v0

    return v0
.end method

.method public b()Lij/g;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljj/d;->b:Ljj/k;

    invoke-interface {v0}, Ljj/k;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    new-instance v0, Ljj/b;

    new-instance v9, Ljj/c;

    iget-object v3, p0, Ljj/d;->a:Ljj/i;

    iget v4, p0, Ljj/d;->c:I

    iget-object v5, p0, Ljj/d;->d:Ljj/a;

    iget-object v6, p0, Ljj/d;->e:Ljava/util/Set;

    iget-object v7, p0, Ljj/d;->f:Ljava/lang/Long;

    iget-boolean v8, p0, Ljj/d;->g:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljj/c;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljj/i;ILjj/a;Ljava/util/Set;Ljava/lang/Long;Z)V

    invoke-direct {v0, v9}, Ljj/b;-><init>(Lij/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
