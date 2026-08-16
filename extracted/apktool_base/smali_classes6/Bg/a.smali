.class public LBg/a;
.super LBg/q;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:LCg/b;

.field public d:Ljava/lang/String;

.field public e:LCg/a;

.field public f:LCg/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LBg/q;-><init>()V

    sget-object v0, Lyg/c;->AES_EXTRA_DATA_RECORD:Lyg/c;

    invoke-virtual {p0, v0}, LBg/q;->b(Lyg/c;)V

    const/4 v0, 0x7

    iput v0, p0, LBg/a;->b:I

    sget-object v0, LCg/b;->TWO:LCg/b;

    iput-object v0, p0, LBg/a;->c:LCg/b;

    const-string v0, "AE"

    iput-object v0, p0, LBg/a;->d:Ljava/lang/String;

    sget-object v0, LCg/a;->KEY_STRENGTH_256:LCg/a;

    iput-object v0, p0, LBg/a;->e:LCg/a;

    sget-object v0, LCg/d;->DEFLATE:LCg/d;

    iput-object v0, p0, LBg/a;->f:LCg/d;

    return-void
.end method


# virtual methods
.method public c()LCg/a;
    .locals 1

    iget-object v0, p0, LBg/a;->e:LCg/a;

    return-object v0
.end method

.method public d()LCg/b;
    .locals 1

    iget-object v0, p0, LBg/a;->c:LCg/b;

    return-object v0
.end method

.method public e()LCg/d;
    .locals 1

    iget-object v0, p0, LBg/a;->f:LCg/d;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LBg/a;->b:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LBg/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(LCg/a;)V
    .locals 0

    iput-object p1, p0, LBg/a;->e:LCg/a;

    return-void
.end method

.method public i(LCg/b;)V
    .locals 0

    iput-object p1, p0, LBg/a;->c:LCg/b;

    return-void
.end method

.method public j(LCg/d;)V
    .locals 0

    iput-object p1, p0, LBg/a;->f:LCg/d;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, LBg/a;->b:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LBg/a;->d:Ljava/lang/String;

    return-void
.end method
