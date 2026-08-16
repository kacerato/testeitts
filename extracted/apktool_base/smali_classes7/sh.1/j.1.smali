.class public Lsh/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsh/h;

.field public final b:Loh/E;

.field public c:Loh/Q;

.field public d:Lsh/i$a;


# direct methods
.method public constructor <init>(Lsh/h;Lsh/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsh/j;->a:Lsh/h;

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>(Loh/g;)V

    iput-object p1, p0, Lsh/j;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Lsh/h;[Lsh/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsh/j;->a:Lsh/h;

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lsh/j;->b:Loh/E;

    return-void
.end method


# virtual methods
.method public a()Lsh/i;
    .locals 5

    new-instance v0, Lsh/i;

    iget-object v1, p0, Lsh/j;->a:Lsh/h;

    iget-object v2, p0, Lsh/j;->b:Loh/E;

    iget-object v3, p0, Lsh/j;->c:Loh/Q;

    iget-object v4, p0, Lsh/j;->d:Lsh/i$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lsh/i;-><init>(Lsh/h;Loh/E;Loh/Q;Lsh/i$a;)V

    return-object v0
.end method

.method public b(Lsh/e;)Lsh/j;
    .locals 1

    new-instance v0, Lsh/i$a;

    invoke-direct {v0, p1}, Lsh/i$a;-><init>(Lsh/e;)V

    iput-object v0, p0, Lsh/j;->d:Lsh/i$a;

    return-object p0
.end method

.method public c(Lsh/C;)Lsh/j;
    .locals 1

    new-instance v0, Lsh/i$a;

    invoke-direct {v0, p1}, Lsh/i$a;-><init>(Lsh/C;)V

    iput-object v0, p0, Lsh/j;->d:Lsh/i$a;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lsh/j;
    .locals 1

    new-instance v0, Loh/M0;

    invoke-direct {v0, p1}, Loh/M0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsh/j;->c:Loh/Q;

    return-object p0
.end method
