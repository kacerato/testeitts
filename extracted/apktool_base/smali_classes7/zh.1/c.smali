.class public Lzh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3


# instance fields
.field public a:I

.field public b:Lzh/g;

.field public c:Lhi/w;

.field public d:Loh/s;

.field public e:Lzh/j;

.field public f:Lth/L;

.field public g:Lhi/W;

.field public h:Loh/G;

.field public i:Loh/E;

.field public j:Lhi/C;


# direct methods
.method public constructor <init>(Lzh/g;Lhi/w;Loh/s;Lzh/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lzh/c;->a:I

    iput-object p1, p0, Lzh/c;->b:Lzh/g;

    iput-object p2, p0, Lzh/c;->c:Lhi/w;

    iput-object p3, p0, Lzh/c;->d:Loh/s;

    iput-object p4, p0, Lzh/c;->e:Lzh/j;

    return-void
.end method


# virtual methods
.method public a()Lzh/b;
    .locals 5

    new-instance v0, Loh/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget v1, p0, Lzh/c;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Loh/s;

    iget v3, p0, Lzh/c;->a:I

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lzh/c;->b:Lzh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lzh/c;->c:Lhi/w;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lzh/c;->d:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lzh/c;->e:Lzh/j;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lzh/c;->f:Lth/L;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v4, Loh/K0;

    invoke-direct {v4, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lzh/c;->g:Lhi/W;

    if-eqz v1, :cond_2

    new-instance v4, Loh/K0;

    invoke-direct {v4, v3, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Lzh/c;->h:Loh/G;

    if-eqz v1, :cond_3

    new-instance v2, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_3
    iget-object v1, p0, Lzh/c;->i:Loh/E;

    if-eqz v1, :cond_4

    new-instance v2, Loh/K0;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_4
    iget-object v1, p0, Lzh/c;->j:Lhi/C;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_5
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v1}, Lzh/b;->z(Ljava/lang/Object;)Lzh/b;

    move-result-object v0

    return-object v0
.end method

.method public b([Lzh/n;)V
    .locals 1

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lzh/c;->i:Loh/E;

    return-void
.end method

.method public c(Lzh/g;)V
    .locals 0

    iput-object p1, p0, Lzh/c;->b:Lzh/g;

    return-void
.end method

.method public d(Lth/L;)V
    .locals 0

    iput-object p1, p0, Lzh/c;->f:Lth/L;

    return-void
.end method

.method public e(Lhi/C;)V
    .locals 0

    iput-object p1, p0, Lzh/c;->j:Lhi/C;

    return-void
.end method

.method public f(Lhi/w;)V
    .locals 0

    iput-object p1, p0, Lzh/c;->c:Lhi/w;

    return-void
.end method

.method public g(Lhi/W;)V
    .locals 0

    iput-object p1, p0, Lzh/c;->g:Lhi/W;

    return-void
.end method

.method public h(Loh/G;)V
    .locals 0

    iput-object p1, p0, Lzh/c;->h:Loh/G;

    return-void
.end method

.method public i(Lzh/j;)V
    .locals 0

    iput-object p1, p0, Lzh/c;->e:Lzh/j;

    return-void
.end method

.method public j(Loh/s;)V
    .locals 0

    iput-object p1, p0, Lzh/c;->d:Loh/s;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lzh/c;->a:I

    return-void
.end method
