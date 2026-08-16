.class public Lde/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:S

.field public b:Lde/h$c;

.field public c:Lde/h$c;


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lde/h$c;->a:S

    return-void
.end method


# virtual methods
.method public a()Lde/h$c;
    .locals 1

    iget-object v0, p0, Lde/h$c;->c:Lde/h$c;

    return-object v0
.end method

.method public b()Lde/h$c;
    .locals 1

    iget-object v0, p0, Lde/h$c;->b:Lde/h$c;

    return-object v0
.end method

.method public c()S
    .locals 1

    iget-short v0, p0, Lde/h$c;->a:S

    return v0
.end method

.method public d(Lde/h$c;)V
    .locals 0

    iput-object p1, p0, Lde/h$c;->c:Lde/h$c;

    return-void
.end method

.method public e(Lde/h$c;)V
    .locals 0

    iput-object p1, p0, Lde/h$c;->b:Lde/h$c;

    return-void
.end method

.method public f(S)V
    .locals 0

    iput-short p1, p0, Lde/h$c;->a:S

    return-void
.end method
