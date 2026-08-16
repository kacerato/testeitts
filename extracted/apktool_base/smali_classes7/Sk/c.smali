.class public LSk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhi/h0;

.field public b:Lhi/b;

.field public c:Lfi/d;


# direct methods
.method public constructor <init>(Lhi/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSk/c;->a:Lhi/h0;

    return-void
.end method


# virtual methods
.method public a()LSk/b;
    .locals 6

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, LSk/c;->c:Lfi/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LSk/c;->a:Lhi/h0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LSk/c;->b:Lhi/b;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, LSk/b;

    new-instance v2, LXh/a;

    new-instance v3, Loh/x;

    const-string v4, "2.16.840.1.114027.80.6.2"

    invoke-direct {v3, v4}, Loh/x;-><init>(Ljava/lang/String;)V

    new-instance v4, Loh/I0;

    new-instance v5, Loh/G0;

    invoke-direct {v5, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {v4, v5}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {v2, v3, v4}, LXh/a;-><init>(Loh/x;Loh/G;)V

    invoke-direct {v1, v2}, LSk/b;-><init>(LXh/a;)V

    return-object v1
.end method

.method public b(Lhi/b;)LSk/c;
    .locals 0

    iput-object p1, p0, LSk/c;->b:Lhi/b;

    return-object p0
.end method

.method public c(Lfi/d;)LSk/c;
    .locals 0

    iput-object p1, p0, LSk/c;->c:Lfi/d;

    return-object p0
.end method
