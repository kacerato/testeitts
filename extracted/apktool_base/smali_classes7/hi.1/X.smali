.class public Lhi/X;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(Lhi/p;Lhi/p;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/X;->b:Loh/E;

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p2}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/G0;

    new-instance p2, Loh/G0;

    invoke-direct {p2, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {p1, p2}, Loh/G0;-><init>(Loh/g;)V

    iput-object p1, p0, Lhi/X;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/X;->b:Loh/E;

    new-instance v0, Loh/h;

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Loh/h;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Loh/h;-><init>(I)V

    new-instance v5, Loh/x;

    invoke-direct {v5, v2}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/x;

    invoke-direct {v2, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/G0;

    invoke-direct {v2, v4}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lhi/X;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/X;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([Lhi/p;[Lhi/p;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/X;->b:Loh/E;

    new-instance v0, Loh/h;

    array-length v1, p1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    new-instance v2, Loh/h;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Loh/h;-><init>(I)V

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    new-instance v3, Loh/G0;

    invoke-direct {v3, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lhi/X;->b:Loh/E;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lhi/X;
    .locals 1

    instance-of v0, p0, Lhi/X;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/X;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/X;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/X;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/X;->b:Loh/E;

    return-object v0
.end method
