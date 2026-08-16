.class public Lwh/v;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final d:Loh/s;

.field public static final e:Loh/s;

.field public static final f:Loh/s;

.field public static final g:Loh/s;


# instance fields
.field public b:Loh/s;

.field public c:Lhi/E;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Lwh/v;->d:Loh/s;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Lwh/v;->e:Loh/s;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Lwh/v;->f:Loh/s;

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, Lwh/v;->g:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lwh/v;->b:Loh/s;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object p1

    iput-object p1, p0, Lwh/v;->c:Lhi/E;

    :cond_0
    return-void
.end method

.method public constructor <init>(Loh/s;Lhi/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/v;->b:Loh/s;

    iput-object p2, p0, Lwh/v;->c:Lhi/E;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lwh/v;
    .locals 1

    instance-of v0, p0, Lwh/v;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/v;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/v;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/v;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/v;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/v;->c:Lhi/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lhi/E;
    .locals 1

    iget-object v0, p0, Lwh/v;->c:Lhi/E;

    return-object v0
.end method

.method public x()Loh/s;
    .locals 1

    iget-object v0, p0, Lwh/v;->b:Loh/s;

    return-object v0
.end method
