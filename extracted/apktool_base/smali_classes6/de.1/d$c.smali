.class public Lde/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:F

.field public b:Lde/d$c;

.field public c:Lde/d$c;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lde/d$c;->a:F

    return-void
.end method


# virtual methods
.method public a()Lde/d$c;
    .locals 1

    iget-object v0, p0, Lde/d$c;->c:Lde/d$c;

    return-object v0
.end method

.method public b()Lde/d$c;
    .locals 1

    iget-object v0, p0, Lde/d$c;->b:Lde/d$c;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lde/d$c;->a:F

    return v0
.end method

.method public d(Lde/d$c;)V
    .locals 0

    iput-object p1, p0, Lde/d$c;->c:Lde/d$c;

    return-void
.end method

.method public e(Lde/d$c;)V
    .locals 0

    iput-object p1, p0, Lde/d$c;->b:Lde/d$c;

    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lde/d$c;->a:F

    return-void
.end method
