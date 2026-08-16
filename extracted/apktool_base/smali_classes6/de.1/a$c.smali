.class public Lde/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:B

.field public b:Lde/a$c;

.field public c:Lde/a$c;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lde/a$c;->a:B

    return-void
.end method


# virtual methods
.method public a()Lde/a$c;
    .locals 1

    iget-object v0, p0, Lde/a$c;->c:Lde/a$c;

    return-object v0
.end method

.method public b()Lde/a$c;
    .locals 1

    iget-object v0, p0, Lde/a$c;->b:Lde/a$c;

    return-object v0
.end method

.method public c()B
    .locals 1

    iget-byte v0, p0, Lde/a$c;->a:B

    return v0
.end method

.method public d(Lde/a$c;)V
    .locals 0

    iput-object p1, p0, Lde/a$c;->c:Lde/a$c;

    return-void
.end method

.method public e(Lde/a$c;)V
    .locals 0

    iput-object p1, p0, Lde/a$c;->b:Lde/a$c;

    return-void
.end method

.method public f(B)V
    .locals 0

    iput-byte p1, p0, Lde/a$c;->a:B

    return-void
.end method
