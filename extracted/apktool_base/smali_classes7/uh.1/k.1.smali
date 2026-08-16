.class public Luh/k;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/b;

.field public final c:I

.field public final d:[B


# direct methods
.method public constructor <init>(Lhi/b;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Luh/k;-><init>(Lhi/b;I[B)V

    return-void
.end method

.method public constructor <init>(Lhi/b;I[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/k;->b:Lhi/b;

    iput p2, p0, Luh/k;->c:I

    iput-object p3, p0, Luh/k;->d:[B

    return-void
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, Luh/k;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    iget v2, p0, Luh/k;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/k;->d:[B

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    new-instance v2, Loh/C0;

    iget-object v3, p0, Luh/k;->d:[B

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method
