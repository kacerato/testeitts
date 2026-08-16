.class public LXh/x;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final e:Lhi/b;

.field public static final f:Lhi/b;

.field public static final g:Lhi/b;


# instance fields
.field public b:Lhi/b;

.field public c:Lhi/b;

.field public d:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lhi/b;

    sget-object v1, LBj/b;->i:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LXh/x;->e:Lhi/b;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->O0:Loh/x;

    invoke-direct {v1, v2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v1, LXh/x;->f:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->P0:Loh/x;

    new-instance v2, Loh/C0;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LXh/x;->g:Lhi/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, LXh/x;->e:Lhi/b;

    iput-object v0, p0, LXh/x;->b:Lhi/b;

    sget-object v0, LXh/x;->f:Lhi/b;

    iput-object v0, p0, LXh/x;->c:Lhi/b;

    sget-object v0, LXh/x;->g:Lhi/b;

    iput-object v0, p0, LXh/x;->d:Lhi/b;

    return-void
.end method

.method public constructor <init>(Lhi/b;Lhi/b;Lhi/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/x;->b:Lhi/b;

    iput-object p2, p0, LXh/x;->c:Lhi/b;

    iput-object p3, p0, LXh/x;->d:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, LXh/x;->e:Lhi/b;

    iput-object v0, p0, LXh/x;->b:Lhi/b;

    sget-object v0, LXh/x;->f:Lhi/b;

    iput-object v0, p0, LXh/x;->c:Lhi/b;

    sget-object v0, LXh/x;->g:Lhi/b;

    iput-object v0, p0, LXh/x;->d:Lhi/b;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    invoke-static {v1, v3}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v1

    iput-object v1, p0, LXh/x;->d:Lhi/b;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v1, v3}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v1

    iput-object v1, p0, LXh/x;->c:Lhi/b;

    goto :goto_1

    :cond_2
    invoke-static {v1, v3}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v1

    iput-object v1, p0, LXh/x;->b:Lhi/b;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static v(Ljava/lang/Object;)LXh/x;
    .locals 1

    instance-of v0, p0, LXh/x;

    if-eqz v0, :cond_0

    check-cast p0, LXh/x;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/x;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/x;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/x;->b:Lhi/b;

    sget-object v2, LXh/x;->e:Lhi/b;

    invoke-virtual {v1, v2}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Loh/K0;

    const/4 v3, 0x0

    iget-object v4, p0, LXh/x;->b:Lhi/b;

    invoke-direct {v1, v2, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LXh/x;->c:Lhi/b;

    sget-object v3, LXh/x;->f:Lhi/b;

    invoke-virtual {v1, v3}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Loh/K0;

    iget-object v3, p0, LXh/x;->c:Lhi/b;

    invoke-direct {v1, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, LXh/x;->d:Lhi/b;

    sget-object v3, LXh/x;->g:Lhi/b;

    invoke-virtual {v1, v3}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Loh/K0;

    const/4 v3, 0x2

    iget-object v4, p0, LXh/x;->d:Lhi/b;

    invoke-direct {v1, v2, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/x;->b:Lhi/b;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/x;->c:Lhi/b;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/x;->d:Lhi/b;

    return-object v0
.end method
