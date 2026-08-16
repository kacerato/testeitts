.class public Lde/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:D

.field public b:Lde/c$c;

.field public c:Lde/c$c;


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lde/c$c;->a:D

    return-void
.end method


# virtual methods
.method public a()Lde/c$c;
    .locals 1

    iget-object v0, p0, Lde/c$c;->c:Lde/c$c;

    return-object v0
.end method

.method public b()Lde/c$c;
    .locals 1

    iget-object v0, p0, Lde/c$c;->b:Lde/c$c;

    return-object v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lde/c$c;->a:D

    return-wide v0
.end method

.method public d(Lde/c$c;)V
    .locals 0

    iput-object p1, p0, Lde/c$c;->c:Lde/c$c;

    return-void
.end method

.method public e(Lde/c$c;)V
    .locals 0

    iput-object p1, p0, Lde/c$c;->b:Lde/c$c;

    return-void
.end method

.method public f(D)V
    .locals 0

    iput-wide p1, p0, Lde/c$c;->a:D

    return-void
.end method
