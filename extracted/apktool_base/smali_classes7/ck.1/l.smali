.class public Lck/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final b:Loh/x;

.field public final c:Loh/x;

.field public final d:Loh/x;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lck/l;->d(Ljava/lang/String;)Loh/x;

    move-result-object v0

    invoke-static {p1}, Lck/l;->a(Ljava/lang/String;)Loh/x;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lck/l;-><init>(Loh/x;Loh/x;Loh/x;)V

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/x;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lck/l;-><init>(Loh/x;Loh/x;Loh/x;)V

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/x;Loh/x;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/l;->b:Loh/x;

    iput-object p2, p0, Lck/l;->c:Loh/x;

    iput-object p3, p0, Lck/l;->d:Loh/x;

    return-void
.end method

.method public static a(Ljava/lang/String;)Loh/x;
    .locals 1

    const-string v0, "12-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    sget-object p0, LCj/a;->d:Loh/x;

    return-object p0

    :cond_0
    const-string v0, "12-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    sget-object p0, LCj/a;->c:Loh/x;

    return-object p0

    :cond_1
    sget-object p0, Lyh/a;->p:Loh/x;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Loh/x;
    .locals 0

    invoke-static {p0}, Lyh/b;->n(Ljava/lang/String;)Loh/x;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Loh/x;
    .locals 1

    iget-object v0, p0, Lck/l;->c:Loh/x;

    return-object v0
.end method

.method public c()Loh/x;
    .locals 1

    iget-object v0, p0, Lck/l;->d:Loh/x;

    return-object v0
.end method

.method public e()Loh/x;
    .locals 1

    iget-object v0, p0, Lck/l;->b:Loh/x;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lck/l;->e()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
