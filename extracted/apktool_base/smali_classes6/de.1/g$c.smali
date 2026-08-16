.class public Lde/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:Lde/g$c;

.field public c:Lde/g$c;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lde/g$c;->a:J

    return-void
.end method


# virtual methods
.method public a()Lde/g$c;
    .locals 1

    iget-object v0, p0, Lde/g$c;->c:Lde/g$c;

    return-object v0
.end method

.method public b()Lde/g$c;
    .locals 1

    iget-object v0, p0, Lde/g$c;->b:Lde/g$c;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lde/g$c;->a:J

    return-wide v0
.end method

.method public d(Lde/g$c;)V
    .locals 0

    iput-object p1, p0, Lde/g$c;->c:Lde/g$c;

    return-void
.end method

.method public e(Lde/g$c;)V
    .locals 0

    iput-object p1, p0, Lde/g$c;->b:Lde/g$c;

    return-void
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Lde/g$c;->a:J

    return-void
.end method
