.class public Lsh/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsh/h;

.field public final b:Loh/E;

.field public c:Loh/Q;

.field public d:Lsh/z;


# direct methods
.method public constructor <init>(Lsh/h;Lsh/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsh/l;->a:Lsh/h;

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>(Loh/g;)V

    iput-object p1, p0, Lsh/l;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Lsh/h;[Lsh/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsh/l;->a:Lsh/h;

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lsh/l;->b:Loh/E;

    return-void
.end method


# virtual methods
.method public a()Lsh/k;
    .locals 5

    new-instance v0, Lsh/k;

    iget-object v1, p0, Lsh/l;->a:Lsh/h;

    iget-object v2, p0, Lsh/l;->b:Loh/E;

    iget-object v3, p0, Lsh/l;->c:Loh/Q;

    iget-object v4, p0, Lsh/l;->d:Lsh/z;

    invoke-direct {v0, v1, v2, v3, v4}, Lsh/k;-><init>(Lsh/h;Loh/E;Loh/Q;Lsh/z;)V

    return-object v0
.end method

.method public b(Lsh/e;)Lsh/l;
    .locals 1

    new-instance v0, Lsh/z;

    invoke-direct {v0, p1}, Lsh/z;-><init>(Lsh/e;)V

    iput-object v0, p0, Lsh/l;->d:Lsh/z;

    return-object p0
.end method

.method public c(Lsh/r;)Lsh/l;
    .locals 1

    new-instance v0, Lsh/z;

    invoke-direct {v0, p1}, Lsh/z;-><init>(Lsh/r;)V

    iput-object v0, p0, Lsh/l;->d:Lsh/z;

    return-object p0
.end method

.method public d(Lsh/C;)Lsh/l;
    .locals 1

    new-instance v0, Lsh/z;

    invoke-direct {v0, p1}, Lsh/z;-><init>(Lsh/C;)V

    iput-object v0, p0, Lsh/l;->d:Lsh/z;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lsh/l;
    .locals 1

    new-instance v0, Loh/M0;

    invoke-direct {v0, p1}, Loh/M0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsh/l;->c:Loh/Q;

    return-object p0
.end method
